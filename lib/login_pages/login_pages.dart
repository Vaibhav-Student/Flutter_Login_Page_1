import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page_1/Widgets/container_button.dart';
import 'package:login_page_1/login_pages/login_page_1.dart';
import 'package:login_page_1/login_pages/login_page_2.dart';
import 'package:login_page_1/login_pages/login_page_3.dart';
import 'package:lottie/lottie.dart';

class LoginPages extends StatelessWidget{
  const LoginPages({super.key});

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
          'Login Pages',
          style: GoogleFonts.bungee(
            textStyle: TextStyle(color: Colors.red,fontSize: 18),
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              SizedBox(height: 10),
                
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => const LoginPage1()
                      )
                    );
                  },
                  child: ContainerButtons(
                    buttonText: 'Login Pages - 1',
                  ),
                ),

                SizedBox(height: 15),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => const LoginPage2()
                      )
                    );
                  },
                  child: ContainerButtons(
                    buttonText: 'Login Pages - 2',
                  ),
                ),

                SizedBox(height: 15),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => const LoginPage3()
                      )
                    );
                  },
                  child: ContainerButtons(
                    buttonText: 'Login Pages - 3',
                  ),
                ),

                SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}