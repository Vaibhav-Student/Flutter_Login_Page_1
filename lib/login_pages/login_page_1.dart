import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class LoginPage1 extends StatelessWidget {
  const LoginPage1({super.key});

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
          'Login Pages - 1',
          style: GoogleFonts.bungee(
            textStyle: const TextStyle(color: Colors.red, fontSize: 17),
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

      body: Row(
        children: [
          Image.asset(
            'lib/assets/Images/logoipsum.png',
            width: 100,
            height: 50,
            fit : BoxFit.contain,
          ),
          Text(
           'Logoipsum',
           style: GoogleFonts.inter(
            textStyle: const TextStyle(
              fontSize: 25,
              color: Colors.black,
              //fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            ),
           ),
          ),
        ],
      )
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:lottie/lottie.dart' show Lottie, LottieDelegates, ValueDelegate;

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   bool _isPasswordVisible = false;
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Lottie.network(
//           'https://lottie.host/b1f6b957-d846-4aa0-a65f-725bbf4c27b4/RXcO6cSvLW.json', // 🔁 Your local file
//           width: 50, // Adjust as needed
//           height: 50,
//           fit: BoxFit.contain,
//           repeat: true, 
//         ),
//         title: Text(
//           'Login Pages',
//           style: GoogleFonts.bungee(
//             textStyle: TextStyle(color: Colors.red,fontSize: 18),
//             ),
//         ),    
//         actions: [
//           Lottie.network(
//             'https://lottie.host/51dc3708-2605-49c9-aba9-654966dc9601/BwknOFqpl9.json',
//             width: 50,
//             height: 75,
//             fit: BoxFit.contain,
//             repeat: true,
//             delegates: LottieDelegates(
//             values: [
//                 ValueDelegate.color(
//                   const ['**'], // Target all layers
//                   value: Colors.red, // Change to your desired color
//                 ),
//               ],
//             ),
//           ),
//           Lottie.network(
//             'https://lottie.host/4d3eb36f-bf91-4c62-815e-7d7c24f131cf/blfrUrTyiN.json',
//             width: 50,
//             height: 75,
//             fit: BoxFit.contain,
//             repeat: true,
//             delegates: LottieDelegates(
//             values: [
//                 ValueDelegate.color(
//                   const ['**'], // Target all layers
//                   value: Colors.red, // Change to your desired color
//                 ),
//               ],
//             ),
//           ),
//           Lottie.network(
//             'https://lottie.host/bde4092d-30cd-41ce-b44a-859320779b49/KKtKySvORN.json',
//             width: 50,
//             height: 75,
//             fit: BoxFit.contain,
//             repeat: true,
//             delegates: LottieDelegates(
//             values: [
//                 ValueDelegate.color(
//                   const ['**'], // Target all layers
//                   value: Colors.red, // Change to your desired color
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Logo and Company Name
//               Row(
//                 children: [
//                   Image.asset(
//                     'lib/assets/Images/logoipsum.png', // Add your logo image
//                     width: 65,
//                     height: 50,
//                     fit : BoxFit.contain,
//                   ),
//                   const SizedBox(width: 8),
//                   Text(
//                     'Logoipsum',
//                     style: GoogleFonts.inter(
//                       fontSize: 20,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ],
//               ),
              
//               const SizedBox(height: 30),
              
//               // Main Heading
//               Text(
//                 'Sign in to your\nAccount',
//                 style: GoogleFonts.inter(
//                   fontSize: 32,
//                   fontWeight: FontWeight.bold,
//                   height: 1.2,
//                 ),
//               ),
              
//               const SizedBox(height: 12),
              
//               Text(
//                 'Enter your email and password to log in',
//                 style: GoogleFonts.inter(
//                   fontSize: 16,
//                   color: Colors.grey[600],
//                 ),
//               ),
              
//               const SizedBox(height: 32),
              
//               // Email Field
//               Text(
//                 'Email',
//                 style: GoogleFonts.inter(
//                   fontSize: 14,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               const SizedBox(height: 8),
//               TextFormField(
//                 decoration: InputDecoration(
//                   hintText: 'Loisbecket@gmail.com',
//                   hintStyle: GoogleFonts.inter(color: Colors.grey),
//                   filled: true,
//                   fillColor: Colors.grey[100],
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                     borderSide: BorderSide.none,
//                   ),
//                   contentPadding: const EdgeInsets.all(16),
//                 ),
//               ),
              
//               const SizedBox(height: 20),
              
//               // Password Field
//               Text(
//                 'Password',
//                 style: GoogleFonts.inter(
//                   fontSize: 14,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               const SizedBox(height: 8),
//               TextFormField(
//                 obscureText: !_isPasswordVisible,
//                 decoration: InputDecoration(
//                   hintText: '********',
//                   hintStyle: GoogleFonts.inter(color: Colors.grey),
//                   filled: true,
//                   fillColor: Colors.grey[100],
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                     borderSide: BorderSide.none,
//                   ),
//                   contentPadding: const EdgeInsets.all(16),
//                   suffixIcon: IconButton(
//                     icon: Icon(
//                       _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
//                       color: Colors.grey,
//                     ),
//                     onPressed: () {
//                       setState(() {
//                         _isPasswordVisible = !_isPasswordVisible;
//                       });
//                     },
//                   ),
//                 ),
//               ),
              
//               Align(
//                 alignment: Alignment.centerRight,
//                 child: TextButton(
//                   onPressed: () {},
//                   child: Text(
//                     'Forgot Password?',
//                     style: GoogleFonts.inter(
//                       color: Colors.blue[700],
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//               ),
              
//               const SizedBox(height: 18),
              
//               // Login Button
//               ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.blue[700],
//                   minimumSize: const Size(double.infinity, 56),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                 ),
//                 child: Text(
//                   'Log In',
//                   style: GoogleFonts.inter(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
              
//               const SizedBox(height: 24),
              
//               // Or Divider
//               Row(
//                 children: [
//                   Expanded(child: Divider(color: Colors.grey[300])),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 16),
//                     child: Text(
//                       'Or',
//                       style: GoogleFonts.inter(color: Colors.grey[600]),
//                     ),
//                   ),
//                   Expanded(child: Divider(color: Colors.grey[300])),
//                 ],
//               ),
              
//               const SizedBox(height: 24),
              
//               // Social Login Buttons
//               OutlinedButton.icon(
//                 onPressed: () {},
//                 icon: Image.asset(
//                   'lib/assets/Images/Google_logo.png', // Add Google logo
//                   height: 24,
//                 ),
//                 label: Text(
//                   'Continue with Google',
//                   style: GoogleFonts.inter(
//                     color: Colors.black87,
//                     fontSize: 16,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 style: OutlinedButton.styleFrom(
//                   minimumSize: const Size(double.infinity, 56),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   side: BorderSide(color: Colors.grey[300]!),
//                 ),
//               ),
              
//               const SizedBox(height: 16),
              
//               OutlinedButton.icon(
//                 onPressed: () {},
//                 icon: Image.asset(
//                   'lib/assets/Images/Facebook_logo.png', // Add Facebook logo
//                   height: 24,
//                 ),
//                 label: Text(
//                   'Continue with Facebook',
//                   style: GoogleFonts.inter(
//                     color: Colors.black87,
//                     fontSize: 16,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 style: OutlinedButton.styleFrom(
//                   minimumSize: const Size(double.infinity, 56),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   side: BorderSide(color: Colors.grey[300]!),
//                 ),
//               ),
              
//               const SizedBox(height: 24),
              
//               // Sign Up Link
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Don't have an account? ",
//                     style: GoogleFonts.inter(color: Colors.grey[600]),
//                   ),
//                   TextButton(
//                     onPressed: () {},
//                     child: Text(
//                       'Sign Up',
//                       style: GoogleFonts.inter(
//                         color: Colors.blue[700],
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }