import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/navbar.dart';
import '../../services/http/statistics.dart';
import '../../models/statistics/statisticsmodel.dart';
import 'components/barcodes.dart';
import 'components/events.dart';
import 'components/ticketsales.dart';



class Dashboard extends StatefulWidget{
  const Dashboard({super.key});


  State<Dashboard> createState() => _DashboardState();
}


class _DashboardState extends State<Dashboard>{

  StatisticsModel? stats;
  bool statsLoaded = false;
  //get statistics
  getStatistics() async{
    stats = await StatisticsService().getStatistics();
    if(stats != null){
      setState(() {
        statsLoaded = true;
      });
    }

  }

  @override
  void initState(){
    super.initState();
    getStatistics();
  }
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Dashboard'),
      ),
      body:

      // statsLoaded?
      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       //top part with statistics
      //       Column(
      //         children: [
      //           Center(
      //             child: Text(
      //               'View Your Statistics',
      //               style: TextStyle(
      //                   fontSize: 18,
      //                   fontWeight: FontWeight.bold
      //               ),
      //             ),
      //           ),
      //
      //           SizedBox(height: 20,),
      //
      //           //products
      //           Container(
      //             height: 20,
      //             decoration: BoxDecoration(
      //                 color: Colors.blueGrey.withOpacity(0.07),
      //                 borderRadius: BorderRadius.circular(15)
      //             ),
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Text(' Products:'),
      //
      //
      //                 Text(stats!.productCount.toString())
      //               ],
      //             ),
      //           ),
      //
      //           //brands
      //           Container(
      //             height: 20,
      //             decoration: BoxDecoration(
      //                 color: Colors.blueGrey.withOpacity(0.07),
      //                 borderRadius: BorderRadius.circular(15)
      //             ),
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Text(' Brands:'),
      //
      //
      //                 Text(stats!.brandCount.toString())
      //               ],
      //             ),
      //           ),
      //
      //           //users
      //           Container(
      //             height: 20,
      //             decoration: BoxDecoration(
      //                 color: Colors.blueGrey.withOpacity(0.07),
      //                 borderRadius: BorderRadius.circular(15)
      //             ),
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Text(' Users:'),
      //
      //
      //                 Text(stats!.userCount.toString())
      //               ],
      //             ),
      //           ),
      //
      //
      //           //roles
      //           Container(
      //             height: 20,
      //             decoration: BoxDecoration(
      //                 color: Colors.blueGrey.withOpacity(0.07),
      //                 borderRadius: BorderRadius.circular(15)
      //             ),
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Text(' Roles:'),
      //
      //
      //                 Text(stats!.roleCount.toString())
      //               ],
      //             ),
      //           ),
      //         ],
      //       ),
      //
      //
      //       //bottom part with options
      //       ListView(
      //         scrollDirection: Axis.horizontal,
      //         physics: BouncingScrollPhysics(),
      //         padding: EdgeInsets.all(10.0),
      //         children: [
      //           GestureDetector(
      //             onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => TicketSales())),
      //             child: Container(
      //               height: 50,
      //               decoration: BoxDecoration(
      //                   color: Colors.blueGrey,
      //                   borderRadius: BorderRadius.circular(15)
      //               ),
      //               child: Text('Ticket Sales'),
      //             ),
      //           ),
      //
      //           GestureDetector(
      //             onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Events())),
      //             child: Container(
      //               height: 50,
      //               decoration: BoxDecoration(
      //                   color: Colors.blueGrey,
      //                   borderRadius: BorderRadius.circular(15)
      //               ),
      //               child: Text('Events'),
      //             ),
      //
      //           ),
      //
      //           GestureDetector(
      //             onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Barcodes())),
      //             child: Container(
      //               height: 50,
      //               decoration: BoxDecoration(
      //                   color: Colors.blueGrey,
      //                   borderRadius: BorderRadius.circular(15)
      //               ),
      //               child: Text('Request Barcode'),
      //             ),
      //           ),
      //         ],
      //       ),
      //
      //
      //     ],
      //   ),
      // ):
      //     Center(
      //       child: CircularProgressIndicator(),
      //     ),



      FutureBuilder(
        future: StatisticsService().getStatistics(),
        builder: (BuildContext context, AsyncSnapshot snapshot){
          if(snapshot.hasData){
            StatisticsModel stats = snapshot.data;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //top part with statistics
                  Column(
                    children: [
                      Center(
                        child: Text(
                          'View Your Statistics',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),

                      SizedBox(height: 20,),

                      //products
                      Container(
                        height: 50,
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.withOpacity(0.07),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(' Products:'),


                            Text(stats.productCount.toString())
                          ],
                        ),
                      ),

                      SizedBox( height: 20,),

                      //brands
                      Container(
                        height: 50,
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.withOpacity(0.07),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(' Brands:'),


                            Text(stats.brandCount.toString())
                          ],
                        ),
                      ),

                      SizedBox( height: 20,),

                      //users
                      Container(
                        height: 50,
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.withOpacity(0.07),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(' Users:'),


                            Text(stats.userCount.toString())
                          ],
                        ),
                      ),

                      SizedBox( height: 20,),


                      //roles
                      Container(
                        height: 50,
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.withOpacity(0.07),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(' Roles:'),


                            Text(stats.roleCount.toString())
                          ],
                        ),
                      ),
                    ],
                  ),


                  SizedBox(height: 50,),


                  //bottom part with options
                  SizedBox(
                    height: 80,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.all(10.0),
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => TicketSales())),
                          child: Container(
                            height: 50,
                            width: 130,
                            padding: EdgeInsets.all(14),
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Center(child: Text('Ticket Sales')),
                          ),
                        ),

                        SizedBox(width: 20,),

                        GestureDetector(
                          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Events())),
                          child: Container(
                            height: 50,
                            width: 130,
                            padding: EdgeInsets.all(14),
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Center(child: Text('Events')),
                          ),

                        ),

                        SizedBox(width: 20,),

                        GestureDetector(
                          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Barcodes())),
                          child: Container(
                            height: 50,
                            width: 150,
                            padding: EdgeInsets.all(14),
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Center(child: Text('Request Barcode')),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 20,),

                ],
              ),
            );

          }else if(snapshot.hasError){
            return Icon(Icons.error_outline);
          }else{
            return Center(child: CircularProgressIndicator(),);
          }
        },

      ),
      bottomNavigationBar: Navbar(),
    );
  }
}