import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class LoginPage2 extends StatefulWidget{
  const LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {

  bool _isPasswordVisible = false;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(

        leading: Lottie.network(
          'https://lottie.host/b1f6b957-d846-4aa0-a65f-725bbf4c27b4/RXcO6cSvLW.json',
          width: 50,
          height: 50,
          fit: BoxFit.contain,
          repeat: true,
        ),
        title: Text(
          'Login Pages - 2',
          style: GoogleFonts.bungee(
            textStyle: const TextStyle(color: Colors.black, fontSize: 17),
          ),
        ),
        actions: [
          Lottie.network(
            'https://lottie.host/51dc3708-2605-49c9-aba9-654966dc9601/BwknOFqpl9.json',
            width: 50,
            height: 75,
            fit: BoxFit.contain,
            repeat: true,
            delegates: LottieDelegates(
              values: [
                ValueDelegate.color(
                  const ['**'], // Target all layers
                  value: Colors.red, // Change to your desired color
                ),
              ],
            ),
          ),
          Lottie.network(
            'https://lottie.host/4d3eb36f-bf91-4c62-815e-7d7c24f131cf/blfrUrTyiN.json',
            width: 50,
            height: 75,
            fit: BoxFit.contain,
            repeat: true,
            delegates: LottieDelegates(
              values: [
                ValueDelegate.color(
                  const ['**'], // Target all layers
                  value: Colors.red, // Change to your desired color
                ),
              ],
            ),
          ),
          Lottie.network(
            'https://lottie.host/bde4092d-30cd-41ce-b44a-859320779b49/KKtKySvORN.json',
            width: 50,
            height: 75,
            fit: BoxFit.contain,
            repeat: true,
            delegates: LottieDelegates(
              values: [
                ValueDelegate.color(
                  const ['**'], // Target all layers
                  value: Colors.red, // Change to your desired color
                ),
              ],
            ),
          ),
        ],

      ),
      body: Container(
        width: MediaQuery.of(context).size.width, 
        height: MediaQuery.of(context).size.height, 
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 145, 172, 235),  // Blue gradient start
              Color.fromARGB(255, 68, 122, 231),  // Blue gradient middle
              Color(0xFF1CB5E0),  // Cyan gradient end
            ],
          ),
          
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Logo
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'lib/assets/Images/logoipsum.png',  // Add your logo image
                          height: 40,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Logoipsum',
                          style: GoogleFonts.inter(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    
                    // Login Text
                    Text(
                      'Login',
                      style: GoogleFonts.inter(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    
                    // Don't have an account text
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: GoogleFonts.inter(color: Colors.grey[600]),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Sign Up',
                            style: GoogleFonts.inter(
                              color: Colors.blue[700],
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),

                    // Email Field
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Loisbecket@gmail.com',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        contentPadding: const EdgeInsets.all(16),
                        suffixIcon: Icon(
                          Icons.email,
                          color: Colors.grey,
                        ),
                        ),
                      ),
                    
                    const SizedBox(height: 16),

                    // Password Field
                    TextField(
                      obscureText: !_isPasswordVisible,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        contentPadding: const EdgeInsets.all(16),
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

                    // Remember me and Forgot Password
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
                            ),
                            Text(
                              'Remember me',
                              style: GoogleFonts.inter(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: GoogleFonts.inter(
                              color: Colors.blue[700],
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),

                    // Login Button
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[700],
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
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
                    const SizedBox(height: 24),

                    // Or divider
                    Row(
                      children: [
                        Expanded(child: Divider(color: Colors.grey[300])),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'Or',
                            style: GoogleFonts.inter(color: Colors.grey[600]),
                          ),
                        ),
                        Expanded(child: Divider(color: Colors.grey[300])),
                      ],
                    ),
                    const SizedBox(height: 24),

                    // Social Login Buttons
                    OutlinedButton.icon(
                      onPressed: () {},
                      icon: Image.asset(
                        'lib/assets/Images/Google_logo.png',
                        height: 24,
                      ),
                      label: Text(
                        'Continue with Google',
                        style: GoogleFonts.inter(),
                      ),
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    OutlinedButton.icon(
                      onPressed: () {},
                      icon: Image.asset(
                        'lib/assets/Images/Facebook_logo.png',
                        height: 24,
                      ),
                      label: Text(
                        'Continue with Facebook',
                        style: GoogleFonts.inter(),
                      ),
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),

      
    );
  }
}