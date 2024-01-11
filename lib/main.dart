import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moovbe_app/view/seat_arrange/seat_arange_two.dart';
import 'view/core/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'moovbe',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: appBackground),
          backgroundColor: appBlack,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: GoogleFonts.poppins(
            color: appBackground,
            fontSize: 20,
          ),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
        // primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SeatArangeTwo(),
    );
  }
}
