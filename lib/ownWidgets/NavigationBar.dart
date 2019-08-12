import 'package:flutter/material.dart';


class NavigationBar extends StatelessWidget {
  const NavigationBar({
    
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black54,
      //Color.fromRGBO(255, 122, 80, 1),
      
      
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
          
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.add_box),
          title: Text('Hinzufügen'),
          
          
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.location_on),
          title: Text('Location'),
          
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          title: Text('Profil'),
          
        )
      ],
    );
  }
}