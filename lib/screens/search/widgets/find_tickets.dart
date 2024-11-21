import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticketapp/base/res/styles/app_style.dart';

class FindTickets extends StatelessWidget {
  const FindTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppStyles.blueColor,
      ),
      padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 18),
      child: Center(
        child: Text("find tickets",
            style: AppStyles.textStyle.copyWith(color: Colors.white)),
      ),
    );
  }
}
