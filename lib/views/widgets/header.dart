// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Avengers: Endgame",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 7),
          Text(
            "Action, Sci-fi 2019",
            style: TextStyle(
              color: Colors.white.withOpacity(0.4),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(
                    CupertinoIcons.location,
                    color: Color(0xff963FCD),
                    size: 18,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Cosmoplex Multiplex: Rajkot",
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Row(
                children: [
                  Icon(
                    CupertinoIcons.clock,
                    color: Color(0xff963FCD),
                    size: 18,
                  ),
                  SizedBox(width: 4),
                  Text(
                    "3 hour 8 minutes",
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
