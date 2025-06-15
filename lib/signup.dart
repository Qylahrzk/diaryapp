import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F3EB), // Cream beige
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/images/chiqi_icon.png'),
                height: 80,
              ),
              const SizedBox(height: 24),
              const Text(
                "Create Your Account",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF7B5842), // Cocoa Brown
                ),
              ),
              const SizedBox(height: 32),

              // Name
              _buildTextField(label: "Full Name", icon: Icons.person),

              // Email
              const SizedBox(height: 16),
              _buildTextField(label: "Email Address", icon: Icons.email),

              // Password
              const SizedBox(height: 16),
              _buildTextField(label: "Password", icon: Icons.lock, obscure: true),

              const SizedBox(height: 32),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE36A2E), // Fox Orange
                  padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  // Handle signup
                },
                child: const Text("Sign Up",
                    style: TextStyle(color: Colors.white, fontSize: 16)),
              ),

              const SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Back to login
                },
                child: const Text("Already have an account? Log in",
                    style: TextStyle(color: Color(0xFF7B5842))),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required IconData icon,
    bool obscure = false,
  }) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Color(0xFF7B5842)),
        labelText: label,
        labelStyle: const TextStyle(color: Color(0xFF7B5842)),
        filled: true,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFE36A2E), width: 1.5),
          borderRadius: BorderRadius.circular(30),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFF7B5842), width: 1),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
