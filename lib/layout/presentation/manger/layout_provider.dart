import 'package:coffeeshopapp/layout/presentation/screens/fav_screen.dart';
import 'package:coffeeshopapp/layout/presentation/screens/home_screen.dart';
import 'package:coffeeshopapp/layout/presentation/screens/notifications_screen.dart';
import 'package:coffeeshopapp/layout/presentation/screens/orders_screen.dart';
import 'package:flutter/material.dart';

class LayoutProvider extends ChangeNotifier{
  List<Widget> screens=[
    HomeScreen(),
    FavScreen(),
    OrdersScreen(),
    NotificationsScreen()
  ];
  int selectedIndex=0;
}