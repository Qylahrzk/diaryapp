import 'package:flutter/material.dart';
import 'signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6DACE), // warm taupe
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 80),
          // Chiqi mascot
          const Image(
            image: AssetImage('assets/images/chiqi_icon.png'),
            height: 80,
          ),

          // Social buttons
          Column(
            children: [
              _buildSocialButton("Sign in with Apple", Icons.apple),
              const SizedBox(height: 12),
              _buildSocialButton("Sign in with Google", Icons.g_mobiledata),
              const SizedBox(height: 12),
              _buildSocialButton("Continue with Email", Icons.email),
            ],
          ),

          // Bottom register prompt
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Column(
              children: [
                const Text("Don't have an account yet?"),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const SignupPage()),
                    );
                  },
                  child: const Text("Register one here"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSocialButton(String text, IconData icon) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 32),
      width: double.infinity,
      height: 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
        border: Border.all(color: Color(0xFF7B5842)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Color(0xFF7B5842)),
          const SizedBox(width: 8),
          Text(
            text,
            style: const TextStyle(
              color: Color(0xFF7B5842),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
