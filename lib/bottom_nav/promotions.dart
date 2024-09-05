import 'package:easypaisa_clone/fontstyles/drawer_header.dart';
import 'package:flutter/material.dart';

class promotions extends StatefulWidget {
  const promotions({super.key});

  @override
  State<promotions> createState() => _promotionsState();
}

class _promotionsState extends State<promotions> {
  List<String> promotion_header = [
    'Kal ka backup banao easy!',
    'har invite par milay rewards',
    'fuel up & get rewarded',
    'ghar ka khaana at your doorstep!',
  ];

  List<String> promotion_subheader = [
    '''get your best EFU life
protection plan
with easypaisa!''',
    '''easypaisa pe invite karne par
milay aapko aur aapke friends and damily ko rewards!''',
    '''spend Rs. 10,000 & above at Total PARCO
& get a chance to win 100% cashback!''',
    '''order from foodpanda Homechef & enjoy
Rs. 150 cashback''',
  ];

  List<String> promotion_title = [
    'Kal ka backup easy!',
    'Invite friends',
    'fuel up & win',
    'Ghar ka khaana at your doorstep',
  ];

  List<String> promotion_subtitle = [
    'With EFU life plans',
    'Har invite pe milay rewards',
    'get 100% cashback!',
    'Rs. 150 cashback!',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Promotions',
          style: page_appbar_text,
        ),
        centerTitle: true,
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowIndicator();
          return true;
        },
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: promotion_header.length,
              itemExtent: 300,
              itemBuilder: ((context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width / 1,
                  height: MediaQuery.of(context).size.height / 2.7,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 10, left: 10, top: 15),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 4,
                          width: MediaQuery.of(context).size.width / 1,
                          decoration: BoxDecoration(color: Colors.green),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                promotion_header[index],
                                style: promotions_widget_header,
                              ),
                              Text(
                                promotion_subheader[index],
                                textAlign: TextAlign.center,
                                style: promotions_widget_subheader,
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 10,
                          left: 10,
                        ),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 11,
                          width: MediaQuery.of(context).size.width / 1,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.grey.shade400, width: 1)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      promotion_title[index],
                                      style: promotions_widget_title,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      promotion_subtitle[index],
                                      style: home_text_buttons,
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            switch (index) {
                                              case 0:
                                                print('1');
                                                break;
                                              case 1:
                                                print('2');
                                                break;
                                              case 2:
                                                print('3');
                                                break;
                                              case 3:
                                                print('4');
                                                break;
                                            }
                                          });
                                        },
                                        child: Text(
                                          'Read More',
                                          style: promotions_widget_read_more,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              })),
        ),
      ),
    );
  }
}
