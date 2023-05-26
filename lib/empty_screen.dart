import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class EmptyScreen extends StatefulWidget {

  final String page;
  const EmptyScreen({super.key, required this.page});

  @override
  State<EmptyScreen> createState() => _EmptyScreenState();
}


class _EmptyScreenState extends State<EmptyScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.page, style: GoogleFonts.poppins(),),
      ),
    );
  }
}