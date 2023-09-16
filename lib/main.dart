import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/seat_provider.dart';
import 'views/ticket_screen.dart';

void main() {
  runApp(
      MultiProvider(
          providers:[
            ChangeNotifierProvider(
              create: (_) => TicketProvider(),
            )
          ],
        child: MovieApp(),
      )
  );
}
class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TicketScreen(),
    );
  }
}
