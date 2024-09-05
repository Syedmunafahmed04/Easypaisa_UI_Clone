import 'package:easypaisa_clone/fontstyles/drawer_header.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<Icon> profile_icons = [
    Icon(
      Icons.person_2,
      color: Colors.green,
    ),
    Icon(
      Icons.settings,
      color: Colors.green,
    ),
    Icon(
      Icons.history_edu,
      color: Colors.green,
    ),
    Icon(
      Icons.person_add_alt_1,
      color: Colors.green,
    ),
    Icon(
      Icons.wallet,
      color: Colors.green,
    ),
    Icon(
      Icons.check_circle,
      color: Colors.green,
    ),
    Icon(
      Icons.star_outline_outlined,
      color: Colors.green,
    ),
    Icon(
      Icons.qr_code,
      color: Colors.green,
    ),
    Icon(
      Icons.attach_file,
      color: Colors.green,
    ),
  ];

  List<Widget> profile_icons_title = [
    RichText(
        text: TextSpan(
            text: 'Account Level',
            style: account_level_heading,
            children: [
          TextSpan(text: '  Level 1', style: account_level),
        ])),
    Text(
      'Account Settings',
      style: account_level_heading,
    ),
    Text('Transaction History', style: account_level_heading),
    Text('Open NewGen Account', style: account_level_heading),
    Text('My Wallet', style: account_level_heading),
    Text('My Approvals', style: account_level_heading),
    Text('My Favourites', style: account_level_heading),
    Text('Become An easypaisa Merchant', style: account_level_heading),
    Text('Subscribed Services', style: account_level_heading),
  ];

  List<Widget> help_icons = [
    Icon(
      Icons.headset_mic_sharp,
      color: Colors.green,
    ),
    Icon(
      Icons.details,
      color: Colors.green,
    ),
    Icon(
      Icons.help,
      color: Colors.green,
    ),
    Icon(
      Icons.logout,
      color: Colors.red,
    ),
  ];

  List<Widget> help_text = [
    Text(
      'Customer Support',
      style: account_level_heading,
    ),
    Text(
      'Fee Details',
      style: account_level_heading,
    ),
    Text(
      'Help & FAQs',
      style: account_level_heading,
    ),
    Text(
      'Sign Out',
      style: account_level_heading,
    ),
  ];

  List<Widget> help_trailing_icons = [
    Icon(
      Icons.arrow_forward_ios,
      color: Colors.grey,
      size: 18,
    ),
    Icon(
      Icons.arrow_forward_ios,
      color: Colors.grey,
      size: 18,
    ),
    Icon(
      Icons.arrow_forward_ios,
      color: Colors.grey,
      size: 18,
    ),
    Icon(
      Icons.arrow_forward_ios,
      color: Colors.transparent,
      size: 18,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowIndicator();
          return true;
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 10,
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'My Account',
                  style: home_drawer_header,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Profile, Settings & More',
                      style: home_drawer_sub_header,
                    ),
                    Text(
                      'Version V.2.9.64',
                      style: home_drawer_version,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                AspectRatio(
                  aspectRatio: 2.5,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.white,
                                  child: Text(
                                    'FD',
                                    style: avatar,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  'Flutter Dev04',
                                  style: profile_name,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: IconButton(
                                    onPressed: () {
                                      print("Edited");
                                    },
                                    icon: Icon(
                                      Icons.edit,
                                      size: 20,
                                      color: Colors.white,
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 96,
                          top: 90,
                          child: Text(
                            '03001234567',
                            style: phone_number,
                          ),
                        ),
                        Positioned(
                          bottom: 50,
                          left: 95,
                          child: InkWell(
                              onTap: () {
                                print('Email Registered');
                              },
                              child: Text(
                                'Register Email',
                                style: register_email,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                AspectRatio(
                  aspectRatio: 0.73,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemExtent: 50,
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    'HELP',
                    style: my_account,
                  ),
                ),
                AspectRatio(
                  aspectRatio: 1.6,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: help_icons.length,
                      itemExtent: 50,
                      itemBuilder: (context, index) {
                        return ListTile(
                            leading: help_icons[index],
                            title: help_text[index],
                            trailing: help_trailing_icons[index]);
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
