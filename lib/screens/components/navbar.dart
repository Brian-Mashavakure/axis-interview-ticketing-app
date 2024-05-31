import 'package:flutter/material.dart';

import '../dashboard/dashboard.dart';
import '../profile/profile.dart';
import '../settings/settings.dart';


class Navbar extends StatefulWidget{
  const Navbar({super.key});


  @override
  State<Navbar> createState() => _NavbarState();
}


class _NavbarState extends State<Navbar>{
  int selectedIndex = 0;

  Widget build(BuildContext context){
    return BottomNavigationBar(
      selectedItemColor: Colors.grey,
      unselectedItemColor: Colors.grey,


      currentIndex: selectedIndex,
      elevation: 1,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(selectedIndex == 0  ? Icons.dashboard_rounded : Icons.dashboard, ), label: 'Dashboard'),
        BottomNavigationBarItem(icon: Icon(selectedIndex == 1  ? Icons.settings_rounded : Icons.settings_outlined, ), label: 'Chat'),
        BottomNavigationBarItem(icon: Icon(selectedIndex == 2  ? Icons.person_rounded : Icons.person, ), label: 'Profile'),
      ],
      onTap: (int index) async{
        setState(() {
          selectedIndex = index;
        });

        switch(index){
          case 0:
            Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()),);
            break;
          case 1:
            Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen()),);
            break;
          case 2:
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()),);
            break;

        }

      },
    );
  }
}