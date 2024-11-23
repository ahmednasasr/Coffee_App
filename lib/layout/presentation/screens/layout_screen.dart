import 'package:coffeeshopapp/layout/presentation/manger/layout_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LayoutScreen extends StatefulWidget {
  static const routename = "layout";
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<LayoutProvider>(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.outbond_rounded), label: "Orders"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active), label: "Notifications"),
        ],
        currentIndex: provider.selectedIndex,
        onTap: (value) {
          setState(() {
             provider.selectedIndex=value;
          });
        },

        selectedItemColor: Color(0xffC67C4E),
        unselectedItemColor: Colors.black,
        backgroundColor: Color(0xffC67C4E),
      ),
      body: provider.screens[provider.selectedIndex],
    );
  }
}
