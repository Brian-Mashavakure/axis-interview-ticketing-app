import 'package:flutter/material.dart';


class Barcodes extends StatefulWidget{
  const Barcodes({super.key});

  @override
  State<Barcodes> createState() => _BarcodesState();
}


class _BarcodesState extends State<Barcodes>{
  Widget  build(BuildContext context){
    return Scaffold(
      body:  Center(
        child: Container(
          child: Text('Bar Codes'),
        ),
      ),
    );
  }
}