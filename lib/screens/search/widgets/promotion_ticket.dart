import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../base/media.dart';
import '../../../base/res/styles/app_style.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          width: size.width*.42,
          height: 435,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 2
                )
              ]
          ),
          child: Column(
            children: [
              Container(
                height: 190,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            AppMedia.hotelroom
                        )
                    )
                ),
              ),
              const SizedBox(height: 12,),
              Text("25% discout on the early booking of the flight",
                style: AppStyles.headLineStyle2,
              ),
            ],
          ),
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                    width: size.width*.44,
                    height: 210,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: AppStyles.greenColor,
                    ),
                    child: //crossaxis alignment is for horizonatl and mainaxis is for vertical
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Discount\nfor survey",
                            style: AppStyles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )
                        ),
                        const SizedBox(height: 10,),
                        Text("Take the survey about our services to get discount",
                            style: AppStyles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 18,
                            )
                        ),
                      ],
                    )
                ),
                Positioned(
                  right: -35,
                  top: -30,
                  child: Container(
                    padding:const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 20,
                          color: const Color(0xFF189999),
                        )
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 15,),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                width: size.width*0.44,
                height: 210,
                decoration: BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  children: [
                    Text(
                      "take love\nspread love",
                      style : AppStyles.headLineStyle2.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Container(
                      height: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  AppMedia.logo,
                              )
                          )
                      ),
                    ),
                  ],
                )
            )
          ],
        )
      ],
    );
  }
}
