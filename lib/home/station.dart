import 'package:flutter/material.dart';

class Station extends StatefulWidget {
  const Station({Key? key}) : super(key: key);

  @override
  State<Station> createState() => _StationState();
}

class _StationState extends State<Station> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Station"),
      ),
    );
  }
}
