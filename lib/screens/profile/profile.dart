import 'package:flutter/material.dart';
import '../components/navbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../settings/settings.dart';
import '../dashboard/dashboard.dart';


class ProfileScreen extends StatefulWidget{
  const ProfileScreen({super.key});


  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}


class _ProfileScreenState extends State<ProfileScreen>{

  //firebase user instance
  final _user = FirebaseAuth.instance.currentUser!;
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //top part
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipOval(
                    child: Image.asset('icons/profile.png', height: 100, width: 100, fit: BoxFit.cover,),
                  ),

                  SizedBox(height: 10,),

                  Text(
                    _user.email!,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),

            //personal information section
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Personal Information",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),

                SizedBox(height: 10,),

                Container(
                  height: 80,
                  padding: EdgeInsets.all(0.0),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.07),
                    borderRadius: BorderRadius.circular(13),

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Email:", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),

                              SizedBox(width: 3,),



                              Text(
                                _user.email!,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              )


                            ],
                          ),
                        ],
                      ),




                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.pen),
                        onPressed: (){},
                        iconSize: 20,
                        color: Colors.white,
                      )

                    ],
                  ),
                ),

                SizedBox(height: 17,),

                Container(
                  height: 67,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.07),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text("Settings", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),



                      IconButton(
                        icon: Icon(Icons.settings_rounded,),
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen())),
                        iconSize: 20,
                        color: Colors.white,
                      )

                    ],
                  ),
                ),

              ],
            ),


            //match statistics part
            Container(
              height: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Match Statistics',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),

                  SizedBox(height: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "View match statistics",
                        style: TextStyle(
                            fontSize: 15
                        ),
                      ),


                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.arrowRight),
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard())),
                        iconSize: 20,
                        color: Colors.white,
                      )
                    ],
                  ),
                ],
              ),
            )

          ],
        ),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}