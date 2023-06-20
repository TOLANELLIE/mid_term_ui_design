import 'package:flutter/material.dart';
import 'package:mid_term_ui_design/style/color.dart';
import 'package:mid_term_ui_design/views/booking_screen.dart';
import 'package:mid_term_ui_design/views/home_screen.dart';
import 'package:mid_term_ui_design/views/profile_screen.dart';
import 'package:mid_term_ui_design/views/trip_screen.dart';
import 'package:mid_term_ui_design/views/wishlist_screen.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ButtomNavigation extends StatefulWidget {
  const ButtomNavigation({super.key});

  static const routename = 'botton_navigation';

  @override
  State<ButtomNavigation> createState() => _ButtomNavigationState();
}

class _ButtomNavigationState extends State<ButtomNavigation> {
  int selectedIndex = 0;

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: const [
          HomeScreen(),
          WishlistScreen(),
          TripsScreen(),
          BookingScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: c1,
        unselectedItemColor: Colors.grey.shade500,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Explore',
            icon: Icon(PhosphorIcons.fill.house),
          ),
          BottomNavigationBarItem(
            label: 'Wishlist',
            icon: Icon(PhosphorIcons.fill.heartHalf),
          ),
          BottomNavigationBarItem(
            label: 'Trips',
            icon: Icon(PhosphorIcons.fill.paperPlaneTilt),
          ),
          BottomNavigationBarItem(
            label: 'Booking',
            icon: Icon(PhosphorIcons.fill.ticket),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(PhosphorIcons.fill.user),
          ),
        ],
      ),
    );
  }
}
