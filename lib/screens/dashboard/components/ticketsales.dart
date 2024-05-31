import 'package:flutter/material.dart';


class TicketSales extends StatefulWidget{
  const TicketSales({super.key});

  @override
  State<TicketSales> createState() => _TicketSalesState();
}


class _TicketSalesState extends State<TicketSales>{
  Widget  build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Container(
          child: Text('Ticket Sales'),
        ),
      ),
    );
  }
}