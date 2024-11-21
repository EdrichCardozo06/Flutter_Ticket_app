import 'package:flutter/material.dart';
import 'package:ticketapp/base/widgets/app_coloum_text_layout.dart';
import 'package:ticketapp/base/widgets/big_dot.dart';
import 'package:ticketapp/base/widgets/text_style_fourth.dart';
import 'package:ticketapp/base/widgets/text_style_third.dart';

import '../res/styles/app_style.dart';
import 'package:ticketapp/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticketapp/base/widgets/big_circle.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;
  const TicketView(
      {super.key,
      required this.ticket,
      this.wholeScreen = false,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 180,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //blue section
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: isColor == null
                      ? AppStyles.ticketBlue
                      : AppStyles.ticketWhite,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                children: [
                  //show dept and destination icons
                  Row(
                    children: [
                      TextStyleThird(
                        text: ticket["from"]["code"],
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      BigDot(
                        isColor: isColor,
                      ),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayout(
                              randomDivider: 6,
                            ),
                          ),
                          Center(
                              child: Transform.rotate(
                                  angle: 1.57,
                                  child: Icon(
                                    Icons.local_airport_rounded,
                                    color: isColor == null
                                        ? Colors.white
                                        : const Color(0xFFBACCF7),
                                  ))),
                        ],
                      )), //to add space between both text...
                      BigDot(
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      TextStyleThird(
                        text: ticket["to"]["code"],
                        isColor: isColor,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  //show dest and dept with time
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket["from"]["name"],
                          isColor: isColor,
                        ),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(text: ticket["flying_time"],isColor: isColor,),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                            text: ticket["to"]["name"], align: TextAlign.end,isColor: isColor,),
                      )
                    ],
                  )
                ],
              ),
            ),
            //middle section
            Container(
              color: isColor==null? AppStyles.ticketOrange:AppStyles.ticketWhite,
              child: Row(
                children: [
                  BigCircle(isRight: false,isColor: isColor,),
                  Expanded(
                      child: AppLayout(
                    randomDivider: 16,
                    width: 6,
                        isColor: isColor,
                  )),
                   BigCircle(isRight: true,isColor: isColor,),
                ],
              ),
            ),
            //orqnge section
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: isColor==null? AppStyles.ticketOrange:AppStyles.ticketWhite,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(isColor==null?21:0),
                      bottomRight: Radius.circular(isColor==null?21:0))),
              child: Column(
                children: [
                  //show dept and destination icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        topText: ticket["date"],
                        bottomText: "Date",
                        alignment: CrossAxisAlignment.start,
                          isColor : isColor,
                      ),
                      AppColumnTextLayout(
                        topText: ticket["departure_time"],
                        bottomText: "Departure Time",
                        alignment: CrossAxisAlignment.center,
                          isColor : isColor,
                      ),
                      AppColumnTextLayout(
                        topText: ticket["number"].toString(),
                        bottomText: "SNumber",
                        alignment: CrossAxisAlignment.end,
                          isColor : isColor,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
