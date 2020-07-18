import 'package:flutter/material.dart';
import 'package:tourismo_fyp/Weather/model/weather.dart';
import 'package:tourismo_fyp/Weather/widgets/value_tile.dart';
import 'package:tourismo_fyp/main.dart';


class CurrentConditions extends StatelessWidget {
  final Weather weather;
  const CurrentConditions({Key key, this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          weather.getIconData(),
          color: Colors.black,
          size: 70,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          '${this.weather.temperature.as(AppStateContainer.of(context).temperatureUnit).round()}°',
          style: TextStyle(
              fontSize: 100,
              fontWeight: FontWeight.w100,
              color: Colors.black),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          ValueTile("max",
              '${this.weather.maxTemperature.as(AppStateContainer.of(context).temperatureUnit).round()}°'),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Center(
                child: Container(
              width: 1,
              height: 30,
              color:Colors.black.withAlpha(50),
            )),
          ),
          ValueTile("min",
              '${this.weather.minTemperature.as(AppStateContainer.of(context).temperatureUnit).round()}°'),
        ]),
      ],
    );
  }
}
