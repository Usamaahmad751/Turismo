
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tourismo_fyp/Recommendation/recomendation_model.dart';
import 'package:tourismo_fyp/events/EvenstList.dart';
import 'package:tourismo_fyp/events/eventDetail.dart';
import 'package:tourismo_fyp/tourism-main-page.dart';

import 'Recommendation/list.dart';
import 'Weather/utils/converters.dart';
import 'club/club_country_data.dart';
import 'club/club_country_model.dart';
import 'club/club_country_name.dart';
import 'club/club_detail.dart';
import 'club/club_home_page.dart';
import 'club/club_model.dart';
import 'events/Event_country_name.dart';
import 'events/event_country_Data.dart';
import 'events/event_country_model.dart';
import 'events/home.dart';

void main(){
  BlocSupervisor().delegate = SimpleBlocDelegate();
  runApp(AppStateContainer(child: MainPage()));
}

class MainPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}
class SimpleBlocDelegate extends BlocDelegate {
  @override
  onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
  }
}

class MainPageState extends State<MainPage>{
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value:EventCountryData()),
        ChangeNotifierProvider.value(value:ClubCountryData()),
        ChangeNotifierProvider.value(value: Clubs()),
        ChangeNotifierProvider.value(value: Recomends()),
        ChangeNotifierProvider.value(value:EventsLists()),

    ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
          title: 'events',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Tourismo(),
          routes: {
            EventHomePage.routeName:(context)=>EventHomePage(),
            EventCountryName.routeName:(context)=>EventCountryName(),
            CountryEventsName.routeName:(context)=>CountryEventsName(),
            ClubHomePage.routeName:(context)=>ClubHomePage(),
            ClubCountryName.routeName:(context)=>ClubCountryName(),
            CountryClubName.routeName:(context)=>CountryClubName(),
            ClubDetail.routeName:(context)=>ClubDetail(),
            EventDetail.routeName:(context)=>EventDetail(),
            RecomDetail.routeName:(context)=>RecomDetail(),
          }
      ),
    );
  }
}

class AppStateContainer extends StatefulWidget {
  final Widget child;

  AppStateContainer({@required this.child});

  @override
  _AppStateContainerState createState() => _AppStateContainerState();

  static _AppStateContainerState of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(_InheritedStateContainer)
    as _InheritedStateContainer)
        .data;
  }
}
class _AppStateContainerState extends State<AppStateContainer> {

  TemperatureUnit temperatureUnit = TemperatureUnit.celsius;


  @override
  initState() {
    super.initState();
    SharedPreferences.getInstance().then((sharedPref) {
      setState(() {

        temperatureUnit = TemperatureUnit.values[TemperatureUnit.celsius.index];
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    return _InheritedStateContainer(
      data: this,
      child: widget.child,
    );
  }



  updateTemperatureUnit(TemperatureUnit unit) {
    setState(() {
      this.temperatureUnit = unit;
    });
    SharedPreferences.getInstance().then((sharedPref) {
      sharedPref.setInt(CONSTANTS.SHARED_PREF_KEY_TEMPERATURE_UNIT, unit.index);
    });
  }
}

class _InheritedStateContainer extends InheritedWidget {
  final _AppStateContainerState data;

  const _InheritedStateContainer({
    Key key,
    @required this.data,
    @required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_InheritedStateContainer oldWidget) => true;
}
class CONSTANTS{
  static const SHARED_PREF_KEY_TEMPERATURE_UNIT = "temp_unit";
}
