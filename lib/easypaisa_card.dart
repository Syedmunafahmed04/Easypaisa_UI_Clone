import 'package:easypaisa_clone/fontstyles/drawer_header.dart';
import 'package:flutter/material.dart';

class easypaisa_card extends StatefulWidget {
  final String card_name;
  final String card_details;
  final Color color;
  final Color border_color;
  final String card_type_image;

  easypaisa_card(
      {super.key,
      required this.card_name,
      required this.card_details,
      required this.color,
      required this.border_color,
      required this.card_type_image});

  @override
  State<easypaisa_card> createState() => _easypaisa_cardState();
}

class _easypaisa_cardState extends State<easypaisa_card> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 170,
      width: 170,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(children: [
              Text(
                widget.card_name,
                textAlign: TextAlign.left,
                style: card_name_style,
              ),
              Spacer(),
              Image.asset(
                widget.card_type_image,
                height: 25,
                width: 25,
              )
            ]),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              widget.card_details,
              style: card_details_style,
            ),
          ),
          Container(
            height: 28,
            width: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: widget.border_color, width: 2)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Manage Card',
                  style: TextStyle(color: Colors.white, fontSize: 11),
                ),
                Icon(
                  Icons.arrow_right,
                  color: Colors.white,
                  size: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
