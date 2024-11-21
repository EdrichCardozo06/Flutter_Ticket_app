import 'package:flutter/material.dart';
import 'package:ticketapp/base/widgets/app_double_text.dart';
import 'package:ticketapp/screens/search/widgets/app_text_icon.dart';
import 'package:ticketapp/screens/search/widgets/app_tickets_tabs.dart';
import 'package:ticketapp/screens/search/widgets/find_tickets.dart';
import 'package:ticketapp/screens/search/widgets/promotion_ticket.dart';

import '../../base/res/styles/app_style.dart';
import '../../base/utilis/app_json.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        children: [
          const SizedBox(height: 40,),
          Text("what are \nyou looking for ?", style: AppStyles.headLineStyle1.copyWith(fontSize: 35),),
          const SizedBox(height: 20,),
          const AppTicketTabs(
            firstTab: "All Tickets",
            secondTab: "Hotels",
          ),
          const SizedBox(height: 25,),
          const AppTextIcon(icon: Icons.flight_takeoff_rounded,text: "Departure"),
          const SizedBox(height: 20,),
          const AppTextIcon(icon: Icons.flight_land_rounded,text: "Arrival"),
          const SizedBox(height: 25,),
          const FindTickets(),
          const SizedBox(height: 40,),
          AppDoubleText(
            bigText: 'Upcoming Flights',
            smallText: 'View All',
            func: () =>
                Navigator.pushNamed(context, AppRoutes.allTickets),
          ),
          const SizedBox(height: 15,),
          const TicketPromotion(),
        ],
      ),
    );
  }
}
