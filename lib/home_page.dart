import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Lottie.network(
          'https://lottie.host/b1f6b957-d846-4aa0-a65f-725bbf4c27b4/RXcO6cSvLW.json', // 🔁 Your local file
          width: 50, // Adjust as needed
          height: 50,
          fit: BoxFit.contain,
          repeat: true, 
        ),
        title: Text(
          'Home Page',
          style: GoogleFonts.bungee(
            textStyle: TextStyle(color: Colors.red),
            ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Shopping Cart',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.menu_book),
            tooltip: 'Menu Book',
            onPressed: () {},
          ),
        ],
      ),

      body: Center(
        child: Lottie.network(
          'https://lottie.host/b1f6b957-d846-4aa0-a65f-725bbf4c27b4/RXcO6cSvLW.json', // 🔁 Your local file
          width: 50, // Adjust as needed
          height: 50,
          fit: BoxFit.contain,
          repeat: true, 
        ),
      ),

    );
  }
}
