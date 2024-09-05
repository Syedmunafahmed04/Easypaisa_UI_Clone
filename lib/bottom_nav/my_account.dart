import 'package:easypaisa_clone/fontstyles/drawer_header.dart';
import 'package:flutter/material.dart';

class my_account_nav extends StatefulWidget {
  const my_account_nav({super.key});

  @override
  State<my_account_nav> createState() => _my_account_navState();
}

class _my_account_navState extends State<my_account_nav> {
  List<Icon> profile_icons = [
    Icon(
      Icons.person_search_outlined,
      color: Colors.green,
    ),
    Icon(
      Icons.password_rounded,
      color: Colors.green,
    ),
    Icon(
      Icons.wallet,
      color: Colors.green,
    ),
    Icon(
      Icons.add_card_rounded,
      color: Colors.green,
    ),
    Icon(
      Icons.badge_rounded,
      color: Colors.green,
    ),
    Icon(
      Icons.person_add_alt_1,
      color: Colors.green,
    ),
    Icon(
      Icons.qr_code,
      color: Colors.green,
    ),
  ];

  List<Widget> profile_icons_title = [
    Text('Account Information', style: account_level_heading),
    Text('Change Account easypaisa Account PIN', style: account_level_heading),
    Text('Link Telenor Microfinanace Bank', style: account_level_heading),
    Text('Link Debit Card', style: account_level_heading),
    Text('Get Your Tax Certificate', style: account_level_heading),
    Text('Open NewGen Account', style: account_level_heading),
    Text('Become An easypaisa Merchant', style: account_level_heading),
  ];

  bool switch_value = false;
  bool switch_value_2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height / 13.5,
            left: 10,
            right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Text(
                'Account Settings',
                style: home_drawer_header,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Account Info, Settings & More',
                    style: home_drawer_sub_header,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'ACCOUNT',
                style: my_account,
              ),
            ),
            Expanded(
              flex: 3,
              child: NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (overscroll) {
                  overscroll.disallowIndicator();
                  return true;
                },
                child: ListView.builder(
                    itemExtent: 54,
                    itemCount: profile_icons.length,
                    itemBuilder: ((context, index) {
                      return ListTile(
                        leading: profile_icons[index],
                        title: profile_icons_title[index],
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                          size: 18,
                        ),
                      );
                    })),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Text(
                'GENERAL',
                style: my_account,
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  left: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.notifications_none_outlined,
                          color: Colors.green,
                        ),
                        Spacer(),
                        Text(
                          'Notifications                     ',
                          style: account_level_heading,
                        ),
                        Spacer(
                          flex: 4,
                        ),
                        Switch(
                            activeColor: Colors.green,
                            value: switch_value,
                            onChanged: (curr_value) {
                              setState(() {
                                switch_value = curr_value;
                              });
                            }),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.fingerprint_outlined,
                          color: Colors.green,
                        ),
                        Spacer(),
                        Text(
                          'Finger Print/ Face Login',
                          style: account_level_heading,
                        ),
                        Spacer(
                          flex: 4,
                        ),
                        Switch(
                            activeColor: Colors.green,
                            value: switch_value_2,
                            onChanged: (curr_value_2) {
                              setState(() {
                                switch_value_2 = curr_value_2;
                              });
                            }),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
