import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moovbe_app/presentation/pages/home_screen/home_screen.dart';
import 'package:moovbe_app/presentation/pages/seat_layout/three_seater_layout.dart';
import 'package:provider/provider.dart';
import 'data/core/token_storage.dart';
import 'presentation/core/colors.dart';
import 'presentation/pages/start_screen/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String? token = GetLocalStorage.getUserIdAndToken('token');
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
        home: token == null ? GetStartScreen() : HomeScreen());
  }
}
