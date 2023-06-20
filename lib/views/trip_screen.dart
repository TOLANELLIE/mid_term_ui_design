import 'package:flutter/material.dart';
import 'package:mid_term_ui_design/style/color.dart';

class TripsScreen extends StatelessWidget {
  const TripsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text('Trips'),
        backgroundColor: c1,
      ),
      body: const Center(
        child: Text('TripsScreen'),
      ),
    );
  }
}
