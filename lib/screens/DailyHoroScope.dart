import 'package:flutter/material.dart';
import '../templates/AppBarTemplate.dart';
import '../templates/DrawerTemplate.dart';

class DailyHoroScope extends StatefulWidget {
  @override
  _DailyHoroScopeState createState() => _DailyHoroScopeState();
}

class _DailyHoroScopeState extends State<DailyHoroScope> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerTemplate(),
      appBar: AppBarTemplate("Daily Horoscope"),
      body: DailyHoroScopePage(),
    );
  }
}

class DailyHoroScopePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Image.asset("assets/images/daily.jpg"),
            SizedBox(height: 20.0),
            Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla v",style: TextStyle(fontSize: 16.0)),
            SizedBox(height: 10.0),
            Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla v",style: TextStyle(fontSize: 16.0)),
          ],
        ),
      ),     
    );
  }
}