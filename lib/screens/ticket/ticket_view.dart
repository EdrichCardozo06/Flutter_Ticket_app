import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticketapp/base/res/styles/app_style.dart';
import 'package:ticketapp/base/utilis/app_json.dart';
import 'package:ticketapp/base/widgets/app_coloum_text_layout.dart';
import 'package:ticketapp/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticketapp/base/widgets/ticket_view.dart';
import 'package:ticketapp/screens/search/widgets/app_tickets_tabs.dart';

import '../../base/media.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  late int ticketIndex=0;
  @override
  void didChangeDependencies() {
    if(ModalRoute.of(context)!.settings.arguments!=null){
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    ticketIndex = args['index'];}
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.bgColor,
        appBar: AppBar(title: const Text("Tickets"),backgroundColor: AppStyles.bgColor,),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          children: [
            // const SizedBox(
            //   height: 30,
            // ),
            // Text(
            //   "Tickets",
            //   style: AppStyles.headLineStyle1,
            // ),
            // const SizedBox(
            //   height: 20,
            // ),
            const AppTicketTabs(
              firstTab: "Upcoming",
              secondTab: "Previous",
            ),
            const SizedBox(
              height: 20,
            ),
            //black and white ticket
            Container(
                padding: const EdgeInsets.only(left: 16),
                child: TicketView(
                  ticket: ticketList[ticketIndex],
                  isColor: true,
                )),
            const SizedBox(
              height: 1,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              color: AppStyles.ticketWhite,
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        topText: "Flutter DB",
                        bottomText: "Passanger",
                        alignment: CrossAxisAlignment.start,
                        isColor: true,
                      ),
                      AppColumnTextLayout(
                        topText: "5221 122345",
                        bottomText: "Passport",
                        alignment: CrossAxisAlignment.end,
                        isColor: true,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const AppLayout(
                    randomDivider: 15,
                    width: 5,
                    isColor: false,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        topText: "1234 56543",
                        bottomText: "Number of E-Ticket",
                        alignment: CrossAxisAlignment.start,
                        isColor: true,
                      ),
                      AppColumnTextLayout(
                        topText: "122345",
                        bottomText: "Booking Code",
                        alignment: CrossAxisAlignment.end,
                        isColor: true,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const AppLayout(
                    randomDivider: 15,
                    width: 5,
                    isColor: false,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                AppMedia.visaCard,
                                scale: 30,
                              ),
                              Text(
                                "*** 8723",
                                style: AppStyles.headLineStyle3,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Payment Method",
                            style: AppStyles.headLineStyle4,
                          )
                        ],
                      ),
                      const AppColumnTextLayout(
                        topText: "Rs 2345",
                        bottomText: "Price",
                        alignment: CrossAxisAlignment.end,
                        isColor: true,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            //bottom ticket det section
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  color: AppStyles.ticketWhite,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21),
                  )),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: BarcodeWidget(
                      height: 70,
                      data: 'https://www.dbestech.com',
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: AppStyles.textColor,
                      width: double.infinity,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //colorful ticket
            Container(
                padding: const EdgeInsets.only(left: 16),
                child: TicketView(
                  ticket: ticketList[ticketIndex],
                )),
          ],
        ));
  }
}
