// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:movie_screen/colors.dart';
import 'package:movie_screen/providers/seat_provider.dart';
import 'package:provider/provider.dart';
import 'package:movie_screen/models/seat_view.dart';

class BottomActions extends StatelessWidget {
  const BottomActions({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = context.read<TicketProvider>();
    return Row(
      children: [
        CircleAvatar(
          foregroundColor: Colors.white,
          radius: 28,
          backgroundColor: Color(0xff513B6F),
          child: Icon(
            CupertinoIcons.arrow_left,
            size: 20,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              List<Seat> selectedSeats = provider.getSelectedSeats;
              String selectedDate = DateFormat.yMMMMd('en_US').format(provider.getSelectedDate);

              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: AppColors.seatColor,
                    title: Text('Selected Details'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('📆📆Selected Date📆📆:\n $selectedDate'),
                        SizedBox(height: 10),
                        Text('Selected Seats👇👇:'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: selectedSeats.map((element) {
                            return Text('  Seat number ${element.number}');
                          }).toList(),
                        ),
                      ],
                    ),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Close'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Container(
              height: 59,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                gradient: LinearGradient(colors: [
                  AppColors.primaryColor,
                  AppColors.secondaryColor,
                ]),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.cart,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    "Go to checkout",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
