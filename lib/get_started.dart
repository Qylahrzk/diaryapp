import 'package:flutter/material.dart';
import 'login.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F3EB), // Cream beige
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Top Chipmunk Icon
          const Padding(
            padding: EdgeInsets.only(top: 80),
            child: Image(
              image: AssetImage('assets/images/chiqi_icon.png'), // small version of Chiqi
              height: 60,
            ),
          ),

          // Center Text + Button
          Column(
            children: [
              const Text(
                "Your Emotional & Task Diary",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF7B5842), // Cocoa Brown
                ),
              ),
              const SizedBox(height: 30),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE36A2E), // Fox orange
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const LoginPage()),
                  );
                },
                child: const Text("Get Started",
                    style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ],
          ),

          // Big Chiqi mascot at bottom
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              'assets/images/chiqi_bottom.png', // full-size mascot illustration
              fit: BoxFit.contain,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
