import 'package:flutter/material.dart';


class Events extends StatefulWidget{
  const Events({super.key});

  @override
  State<Events> createState() => _EventsState();
}


class _EventsState extends State<Events>{
  Widget  build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Container(
          child: Text('Events'),
        ),
      ),
    );
  }
}