import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/theme/color.dart';
import 'package:store/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: HomeBody(),
      backgroundColor: kPrimaryColor,
    );
  }

  AppBar HomeAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      foregroundColor: Colors.white,
      elevation: 0,
      title: Text(
        "مرحبا بكم في متجرنا",
        style: GoogleFonts.getFont('Almarai'),
      ),
      centerTitle: false,
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
    );
  }
}
