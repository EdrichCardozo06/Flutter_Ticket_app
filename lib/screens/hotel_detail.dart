import 'package:flutter/material.dart';
import 'package:ticketapp/base/res/styles/app_style.dart';
import 'package:ticketapp/base/utilis/app_json.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  late int index = 0;
  @override
  void didChangeDependencies() {
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    index = args["index"];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            floating: false,
            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppStyles.primaryColor,
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
                //title: Text(hotelList[index]["place"]),
                background: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        "assets/images/${hotelList[index]["image"]}",
                        fit: BoxFit.cover,
                      )),
                    Positioned(
                      bottom: 20,
                      right: 20,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                          color: Colors.black.withOpacity(0.5),
                          child: Text(
                              hotelList[index]["place"],
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    blurRadius: 10.0,
                                    color: AppStyles.primaryColor,
                                    offset: Offset(2.0, 2.0)
                                  )
                                ]
                              ),
                          )),
                    )
                  ],
                )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                  "In the heart of bustling cities, where towering skyscrapers pierce the sky and the hum of traffic drowns out the whispers of nature, an unlikely hero thrives: the urban bee. These resilient insects, often overlooked in the urban landscape, play a vital role in our ecosystem, pollinating plants and contributing to the delicate balance of nature."),
            ),
            const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "More Images",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Container(
              height: 200.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(16),
                      child:
                          Image.network("https://via.placeholder.com/200x200"),
                    );
                  }),
            )
          ]))
        ],
      ),
    );
  }
}
