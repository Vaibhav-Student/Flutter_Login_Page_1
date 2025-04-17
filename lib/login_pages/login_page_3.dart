import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page_1/Widgets/bc_gride.dart';

class LoginPage3 extends StatefulWidget {
  const LoginPage3({super.key});

  @override
  State<LoginPage3> createState() => _LoginPage3State();
}

class _LoginPage3State extends State<LoginPage3> {
  bool _isPasswordVisible = false;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Bottom white background
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.5, // 50% of screen height
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                ),
              ),
            ),
          ),

          // Grid Background with blue color
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.5, // 60% of screen height
            decoration: const BoxDecoration(
              color: Color(0xFF4169E1), // Royal Blue color
            ),
            child: CustomPaint(
              painter: GridBackgroundPainter(),
            ),
          ),
          
          // Main Content
          Container(
            width: double.infinity,
            height: double.infinity,
            child: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    
                    // Logo
                    Image.asset(
                      'lib/assets/Images/logoipsum.png',
                      height: 60,
                      color: Colors.white,
                    ),
                    
                    const SizedBox(height: 25),
                    
                    // Title
                    Text(
                      'Sign in to your\nAccount',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    
                    const SizedBox(height: 12),
                    
                    // Subtitle
                    Text(
                      'Enter your email and password to log in',
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                    
                    const SizedBox(height: 30),
                    
                    
                    // Card containing the rest of the content
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          children: [
                            // Google Sign In Button
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'lib/assets/Images/Google_logo.png',
                                    height: 24,
                                  ),
                                  const SizedBox(width: 12),
                                  Text(
                                    'Continue with Google',
                                    style: GoogleFonts.inter(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                            const SizedBox(height: 20),

                            Text(
                              'Or login with',
                              style: GoogleFonts.inter(
                                color: Colors.grey[600],
                              ),
                            ),
                            const SizedBox(height: 20),

                            // Email TextField
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[100],
                                hintText: 'Loisbecket@gmail.com',
                                hintStyle: GoogleFonts.inter(color: Colors.grey),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: BorderSide.none,
                                ),
                                contentPadding: const EdgeInsets.all(20),
                              ),
                            ),

                            const SizedBox(height: 16),

                            // Password TextField
                            TextField(
                              obscureText: !_isPasswordVisible,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[100],
                                hintText: '********',
                                hintStyle: GoogleFonts.inter(color: Colors.grey),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: BorderSide.none,
                                ),
                                contentPadding: const EdgeInsets.all(20),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _isPasswordVisible = !_isPasswordVisible;
                                    });
                                  },
                                ),
                              ),
                            ),

                            const SizedBox(height: 16),

                            // Remember Me and Forgot Password
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      value: _rememberMe,
                                      onChanged: (value) {
                                      setState(() {
                                        _rememberMe = value ?? false;
                                      });
                                      },
                                      shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(3),
                                      ),
                                      fillColor: WidgetStateProperty.all(const Color.fromARGB(255, 95, 167, 255)), // Royal Blue color
                                    ),
                                    Text(
                                      'Remember me',
                                      style: GoogleFonts.inter(
                                        color: Colors.black87,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Forgot Password?',
                                    style: GoogleFonts.inter(
                                      color: const Color(0xFF4169E1),
                                      fontSize: 12
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 18),

                            // Login Button
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 84, 155, 255),
                                minimumSize: const Size(double.infinity, 56),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              child: Text(
                                'Log In',
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                    
                            // Sign Up Link
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Don't have an account? ",
                                  style: GoogleFonts.inter(color: const Color.fromARGB(255, 172, 172, 172)),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Sign Up',
                                    style: GoogleFonts.inter(
                                      color: const Color.fromARGB(255, 11, 125, 255),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}