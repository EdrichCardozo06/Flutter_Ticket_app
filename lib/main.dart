import 'package:flutter/material.dart';
import 'package:ticketapp/base/bottom_nav_bar.dart';
import 'package:ticketapp/screens/home/widgets/all_hotels.dart';
import 'package:ticketapp/screens/home/widgets/all_tickets.dart';
import 'package:ticketapp/screens/home/widgets/home_screen.dart';
import 'package:ticketapp/screens/hotel_detail.dart';
import 'package:ticketapp/screens/ticket/ticket_view.dart';

import 'base/utilis/app_json.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
             AppRoutes.homePage:(context)=>const BottomNavBar(),
             AppRoutes.allTickets:(context)=> const AllTickets(),
             AppRoutes.ticketScreen:(context)=> const TicketScreen(),
             AppRoutes.allHotels:(context)=> const AllHotels(),
             AppRoutes.hotelDetail:(context)=> const HotelDetail(),
      },
    );
  }
}
