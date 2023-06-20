import 'package:flutter/material.dart';
import 'package:mid_term_ui_design/style/color.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text('Wishlist'),
        backgroundColor: c1,
      ),
      body: const Center(
        child: Text('WishlistScreen'),
      ),
    );
  }
}
