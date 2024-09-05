import 'package:easypaisa_clone/drawer.dart';
import 'package:easypaisa_clone/tap_to_see.dart';
import 'package:easypaisa_clone/easypaisa_card.dart';
import 'package:easypaisa_clone/fontstyles/drawer_header.dart';
import 'package:easypaisa_clone/more_options.dart';
import 'package:easypaisa_clone/three_boxes_at_home.dart';
import 'package:flutter/material.dart';

class home_nav extends StatefulWidget {
  const home_nav({super.key});

  @override
  State<home_nav> createState() => _home_navState();
}

class _home_navState extends State<home_nav> {
  var amount = '1,400.00';
  var user_name = 'Syed Munaf Ahmed';
  List<Icon> more_with_easypaisa = [
    Icon(Icons.install_mobile, color: Colors.green),
    Icon(Icons.money_outlined, color: Colors.green),
    Icon(Icons.energy_savings_leaf_outlined, color: Colors.green),
    Icon(Icons.group_add_sharp, color: Colors.green),
    Icon(Icons.nature_rounded, color: Colors.green),
    Icon(Icons.phone_iphone_rounded, color: Colors.green),
    Icon(Icons.breakfast_dining_rounded, color: Colors.green),
    Icon(Icons.payments_outlined, color: Colors.green),
    Icon(Icons.health_and_safety_outlined, color: Colors.green),
    Icon(Icons.card_travel_rounded, color: Colors.green),
    Icon(Icons.looks_one, color: Colors.green),
    Icon(Icons.menu, color: Colors.green),
    Icon(Icons.castle_outlined, color: Colors.green),
    Icon(Icons.percent, color: Colors.green),
    Icon(Icons.app_shortcut_rounded, color: Colors.green),
    Icon(Icons.school, color: Colors.green),
    Icon(Icons.assignment_rounded, color: Colors.green),
    Icon(Icons.book_online_outlined, color: Colors.green),
    Icon(Icons.window_outlined, color: Colors.green),
    Icon(Icons.speed_outlined, color: Colors.green),
    Icon(Icons.card_giftcard_outlined, color: Colors.green),
  ];

  List<Widget> more_with_easypaisa_text = [
    Text(
      'EasyLoad',
      textAlign: TextAlign.center,
      style: top_box_text,
    ),
    Text(
      'Easycash Loan',
      textAlign: TextAlign.center,
      style: top_box_text,
    ),
    Text(
      'Savings Pocket',
      textAlign: TextAlign.center,
      style: top_box_text,
    ),
    Text(
      'Invite & Earn',
      textAlign: TextAlign.center,
      style: top_box_text,
    ),
    Text(
      'International Remittance',
      textAlign: TextAlign.center,
      style: top_box_text,
    ),
    Text(
      'Mini App',
      textAlign: TextAlign.center,
      style: top_box_text,
    ),
    Text(
      'Savings',
      textAlign: TextAlign.center,
      style: top_box_text,
    ),
    Text(
      'Buy Now Pay Later',
      textAlign: TextAlign.center,
      style: top_box_text,
    ),
    Text(
      'Insurance',
      textAlign: TextAlign.center,
      style: top_box_text,
    ),
    Text(
      'Donations',
      textAlign: TextAlign.center,
      style: top_box_text,
    ),
    Text(
      'Rs, 1 Game',
      textAlign: TextAlign.center,
      style: top_box_text,
    ),
    Text(
      'See All',
      textAlign: TextAlign.center,
      style: top_box_text,
    ),
    Text(
      'Raast Payment',
      textAlign: TextAlign.center,
      style: top_box_text,
    ),
    Text(
      'Discounts',
      textAlign: TextAlign.center,
      style: top_box_text,
    ),
    Text(
      'Topups',
      textAlign: TextAlign.center,
      style: top_box_text,
    ),
    Text(
      'Education',
      textAlign: TextAlign.center,
      style: top_box_text,
    ),
    Text(
      'NADRA Fee',
      textAlign: TextAlign.center,
      style: top_box_text,
    ),
    Text(
      'Online Payment',
      textAlign: TextAlign.center,
      style: top_box_text,
    ),
    Text(
      'Enter and Win',
      textAlign: TextAlign.center,
      style: top_box_text,
    ),
    Text(
      'Credit Score',
      textAlign: TextAlign.center,
      style: top_box_text,
    ),
    Text(
      'Tohfa',
      textAlign: TextAlign.center,
      style: top_box_text,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          backgroundColor: Colors.green.shade600,
          title: Text(
            'easypaisa',
          ),
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return home();
                })));
              });
            },
            child: Icon(Icons.menu),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search_sharp)),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_none,
                )),
          ],
        ),
        body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overscroll) {
            overscroll.disallowIndicator();
            return true;
          },
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AspectRatio(
                  aspectRatio: 2.5,
                  child: Stack(
                    children: [
                      Container(
                        color: Colors.green,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: MediaQuery.of(context).size.height / 6.5,
                          width: MediaQuery.of(context).size.width / 1.1,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'easypaisa',
                                      style: home_easypaisa_heading,
                                    ),
                                    Spacer(flex: 1),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.stars,
                                          size: 20,
                                          color: Colors.yellow.shade800,
                                        )),
                                    Text(
                                      'My Rewards',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(
                                flex: 1,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: 20, left: 20, bottom: 2),
                                    child: Text(
                                      'Available Balance',
                                      style: home_drawer_sub_header,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Rs. ${amount}',
                                      style: home_amount,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        print('Hide Pass');
                                      },
                                      child: Icon(
                                        Icons.remove_red_eye_outlined,
                                        color: Colors.black,
                                        size: 20,
                                      ),
                                    ),
                                    Spacer(),
                                    InkWell(
                                        onTap: () {},
                                        child: Text(
                                          'Upgrade Account',
                                          style: home_text_buttons,
                                        )),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                        onTap: () {},
                                        child: Text(
                                          'Add Cash',
                                          style: home_text_buttons,
                                        )),
                                  ],
                                ),
                              ),
                              Spacer(
                                flex: 3,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => print('Money Sent'),
                        child: top_home_container(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.money,
                              color: Colors.green,
                              size: 25,
                            ),
                            Text(
                              'Send Money',
                              style: top_box_text,
                            ),
                          ],
                        )),
                      ),
                      GestureDetector(
                        onTap: () => print('Bill Payed'),
                        child: top_home_container(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.payment,
                              color: Colors.green,
                              size: 25,
                            ),
                            Text(
                              'Bill Payment',
                              style: top_box_text,
                            ),
                          ],
                        )),
                      ),
                      GestureDetector(
                        onTap: () => print('Mobile Package Loaded'),
                        child: top_home_container(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.card_giftcard_rounded,
                              color: Colors.green,
                              size: 25,
                            ),
                            Text(
                              'Mobile Packages',
                              style: top_box_text,
                            ),
                          ],
                        )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        'More with easypaisa',
                        style: account_level_heading,
                      )
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: GridView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: more_with_easypaisa.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 5, crossAxisCount: 3),
                        itemBuilder: (context, index) {
                          return more_options(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              more_with_easypaisa[index],
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                child: more_with_easypaisa_text[index],
                              )
                            ],
                          ));
                        }),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 20, bottom: 10, right: 20, left: 20),
                  child: Row(
                    children: [
                      Text(
                        'Get your easypaisa Debit Card',
                        style: account_level_heading,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 1,
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      easypaisa_card(
                          card_name: 'Online Card',
                          card_type_image: 'assets/images/online payment.png',
                          card_details: 'Only for Online Payments in Pakistan',
                          color: Color.fromARGB(255, 6, 106, 86),
                          border_color: Colors.green),
                      easypaisa_card(
                          card_name: 'Plastic Card',
                          card_type_image: 'assets/images/chip.png',
                          card_details: 'Use at any ATM or Shop in Pakistan',
                          color: Colors.grey.shade900,
                          border_color: Colors.green),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        'Discover MiniApps on easypaisa',
                        style: account_level_heading,
                      ),
                    ],
                  ),
                ),

                //MINIAPPS WITH THE HELP OF PACKAGE
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        "Tap to see what's new?",
                        style: account_level_heading,
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemExtent: 150,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        switch (index) {
                          case 0:
                            {
                              return tap_to_see(onPressed: () {
                                setState(() {
                                  print('Index 1');
                                });
                              });
                            }
                          case 1:
                            {
                              return tap_to_see(onPressed: () {
                                setState(() {
                                  print('Index 2');
                                });
                              });
                            }

                          case 2:
                            {
                              return tap_to_see(onPressed: () {
                                setState(() {
                                  print('Index 3');
                                });
                              });
                            }
                          case 3:
                            {
                              return tap_to_see(onPressed: () {
                                setState(() {
                                  print('Index 4');
                                });
                              });
                            }
                          case 4:
                            {
                              return tap_to_see(onPressed: () {
                                setState(() {
                                  print('Index 5');
                                });
                              });
                            }
                        }
                        return null;
                      }),
                ),

                //PENDING...
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 15),
                  child: Row(
                    children: [
                      Text(
                        "Schedule Your Transactions",
                        style: account_level_heading,
                      ),
                    ],
                  ),
                ),

                Container(
                    height: MediaQuery.of(context).size.height / 8,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 10, right: 5, top: 10),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    color: Colors.green,
                                    size: 35,
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 5, right: 5, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Set Payments in Advance',
                                    style: schedule_transactions,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 5),
                                    child: Text(
                                      "Now Setup Mobile Packages and Easyload in advance.",
                                      style: schedule_transactions_sub,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 100, top: 10),
                          child: InkWell(
                            onTap: () => print('Schedule Payments'),
                            child: Container(
                              height: 30,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border:
                                      Border.all(color: Colors.grey, width: 2)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Schedule Payments',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 11),
                                  ),
                                  Icon(
                                    Icons.arrow_right,
                                    color: Colors.green,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: MediaQuery.of(context).size.height / 7,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 5),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.support_agent_outlined,
                                    color: Colors.green,
                                    size: 35,
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 5, right: 5, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Help & Customer Support',
                                    style: schedule_transactions,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Register a complaint or get quick help on queries",
                                      style: schedule_transactions_sub,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 2),
                                    child: Text(
                                      "related to easypaisa",
                                      style: schedule_transactions_sub,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 140, top: 15),
                          child: InkWell(
                            onTap: () => print('Schedule Payments'),
                            child: Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border:
                                      Border.all(color: Colors.grey, width: 2)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Get Help',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 11),
                                  ),
                                  Icon(
                                    Icons.arrow_right,
                                    color: Colors.green,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),

                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
