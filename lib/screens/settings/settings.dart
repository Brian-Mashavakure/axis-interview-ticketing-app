import 'package:flutter/material.dart';
import '../components/navbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../auth/login.dart';


class SettingsScreen extends StatefulWidget{
  const SettingsScreen({super.key});


  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}


class _SettingsScreenState extends State<SettingsScreen>{
  //AUTH INSTANCE
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text("Settings"),
        elevation: 1,
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            //PREFERENCES SECTION
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Preferences",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),

                SizedBox(height: 10,),

                GestureDetector(
                  onDoubleTapCancel: (){

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Language", style: TextStyle(fontSize: 14,),),


                      Text("English", style: TextStyle(fontSize: 14, ),),
                    ],
                  ),
                ),

                SizedBox(height: 10,),

                GestureDetector(
                  onDoubleTapCancel: (){

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Units of measure", style: TextStyle(fontSize: 14,),),


                      Text("SI", style: TextStyle(fontSize: 14, ),),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 5,),

            //NOTIFICATIONS SECTION
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Notifications",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),

                SizedBox(height: 10,),

                Container(
                  height: 50,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.07),
                    borderRadius: BorderRadius.circular(13),

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Event Reminders", style: TextStyle(fontSize: 14,),),


                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.arrowRight),
                        onPressed: (){},
                        iconSize: 18,
                        color: Colors.white,
                      )

                    ],
                  ),
                ),

                SizedBox(height: 8,),

                Container(
                  height: 50,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.07),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("New features and updates", style: TextStyle(fontSize: 14,),),

                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.arrowRight),
                        onPressed: (){},
                        iconSize: 18,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ],
            ),


            //MANAGE ACCOUNT SECTION
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Account",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),

                SizedBox(height: 10,),

                Container(
                  height: 50,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.07),
                    borderRadius: BorderRadius.circular(13),

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Manage Account", style: TextStyle(fontSize: 14,),),


                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.arrowRight),
                        onPressed: (){},
                        iconSize: 18,
                        color: Colors.white,
                      )

                    ],
                  ),
                ),

                SizedBox(height: 8,),

                Container(
                  height: 50,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.07),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Contact us", style: TextStyle(fontSize: 14,),),

                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.arrowRight),
                        onPressed: (){},
                        iconSize: 18,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),

                SizedBox(height: 8,),

                Container(
                  height: 50,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.07),
                    borderRadius: BorderRadius.circular(13),

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Privacy policy", style: TextStyle(fontSize: 14,),),


                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.arrowRight),
                        onPressed: (){},
                        iconSize: 18,
                        color: Colors.white,
                      )

                    ],
                  ),
                ),

                SizedBox(height: 8,),

                Container(
                  height: 50,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.07),
                    borderRadius: BorderRadius.circular(13),

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Terms of use", style: TextStyle(fontSize: 14,),),


                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.arrowRight),
                        onPressed: (){},
                        iconSize: 18,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),

              ],
            ),


            SizedBox(height: 20,),


            //LOGOUT BUTTON
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent.withOpacity(0.1),
                  elevation: 0,
                  minimumSize: Size(350, 43),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: (){
                  auth.signOut().whenComplete(() => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen())));
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text("Log out"),
                ),
              ),
            ),


          ],
        ),
      ),
      bottomNavigationBar: Navbar(),
    );
  }

}