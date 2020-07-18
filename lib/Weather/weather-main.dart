import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:tourismo_fyp/Weather/repository/weather_repository.dart';

import 'api/api_keys.dart';
import 'api/weather_api_client.dart';
import 'bloc/weather_bloc.dart';
import 'bloc/weather_event.dart';
import 'bloc/weather_state.dart';
import 'widgets/weather_widget.dart';


class Weather extends StatefulWidget {
  final WeatherRepository weatherRepository = WeatherRepository(
      weatherApiClient: WeatherApiClient(
          httpClient: http.Client(), apiKey: ApiKey.OPEN_WEATHER_MAP));
  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather>
    with TickerProviderStateMixin {
  WeatherBloc _weatherBloc;
  String _cityName = 'Islamabad';
  AnimationController _fadeController;
  Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _weatherBloc = WeatherBloc(weatherRepository: widget.weatherRepository);
    _fetchWeatherWithLocation().catchError((error) {
      _fetchWeatherWithCity();
    });
    _fadeController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    _fadeAnimation =
        CurvedAnimation(parent: _fadeController, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          elevation: 0,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                DateFormat('EEEE, d MMMM yyyy').format(DateTime.now()),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14),
              )
            ],
          ),
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 10),
              child: IconButton(
                icon: Icon(Icons.my_location,size: 40,color: Colors.white,),
                onPressed: _showCityChangeDialog,
              ),
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: Material(
          child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                  color: Colors.white),
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 15.0,),
                  FadeTransition(
                    opacity: _fadeAnimation,
                    child: BlocBuilder(
                        bloc: _weatherBloc,
                        // ignore: missing_return
                        builder: (_, WeatherState weatherState) {
                          if (weatherState is WeatherLoaded) {
                            this._cityName = weatherState.weather.cityName;
                            _fadeController.reset();
                            _fadeController.forward();
                            return WeatherWidget(
                              weather: weatherState.weather,
                            );
                          } else if (weatherState is WeatherError ||
                              weatherState is WeatherEmpty) {
                            String errorText =
                                'There was an error fetching weather data';
                            if (weatherState is WeatherError) {
                              if (weatherState.errorCode == 404) {
                                errorText =
                                'We have trouble fetching weather for $_cityName';
                              }
                            }
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.error_outline,
                                  color: Colors.redAccent,
                                  size: 24,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  errorText,
                                  style: TextStyle(
                                      color: Colors.red),
                                ),
                                FlatButton(
                                  child: Text(
                                    "Try Again",
                                    style: TextStyle(
                                        color: Colors.red),
                                  ),
                                  onPressed: _fetchWeatherWithCity,
                                )
                              ],
                            );
                          } else if (weatherState is WeatherLoading) {
                            return Center(
                              child: CircularProgressIndicator(
                                backgroundColor:Colors.red,
                              ),
                            );
                          }
                        }),
                  ),
                ],
              )
          ),
        ));
  }

  void _showCityChangeDialog() {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            title: Text('Change city', style: TextStyle(color: Colors.black)),
            actions: <Widget>[
              FlatButton(
                child: Text(
                  'ok',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                onPressed: () {
                  _fetchWeatherWithCity();
                  Navigator.of(context).pop();
                },
              ),
            ],
            content: TextField(
              autofocus: true,
              onChanged: (text) {
                _cityName = text;
              },
              decoration: InputDecoration(
                  hintText: 'Name of your city',
                  hintStyle: TextStyle(color: Colors.black),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      _fetchWeatherWithLocation().catchError((error) {
                        _fetchWeatherWithCity();
                      });
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.my_location,
                      color: Colors.black,
                      size: 16,
                    ),
                  )),
              style: TextStyle(color: Colors.black),
              cursorColor: Colors.black,
            ),
          );
        });
  }


  _fetchWeatherWithCity() {
    _weatherBloc.dispatch(FetchWeather(cityName: _cityName));
  }

  _fetchWeatherWithLocation() async {
    var permissionHandler = PermissionHandler();
    var permissionResult = await permissionHandler
        .requestPermissions([PermissionGroup.locationWhenInUse]);

    switch (permissionResult[PermissionGroup.locationWhenInUse]) {
      case PermissionStatus.denied:
      case PermissionStatus.unknown:
        print('location permission denied');
        _showLocationDeniedDialog(permissionHandler);
        throw Error();
    }

    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    _weatherBloc.dispatch(FetchWeather(
        longitude: position.longitude, latitude: position.latitude));
  }

  void _showLocationDeniedDialog(PermissionHandler permissionHandler) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            title: Text('Location is disabled :(',
                style: TextStyle(color: Colors.black)),
            actions: <Widget>[
              FlatButton(
                child: Text(
                  'Enable!',
                  style: TextStyle(color: Colors.green, fontSize: 16),
                ),
                onPressed: () {
                  permissionHandler.openAppSettings();
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}
