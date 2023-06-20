import 'package:flutter/material.dart';
import 'package:mid_term_ui_design/style/color.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text('Booking'),
        backgroundColor: c1,
      ),
      body: const Center(
        child: Text('BookingScreen'),
      ),
    );
  }
}
