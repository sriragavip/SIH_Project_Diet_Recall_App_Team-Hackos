import 'package:diet_recall_app/Onboarding/Onboarding_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(146,163,253,1),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                height: deviceHeight*0.93,
                width: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(height: 280,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Fitness",style: TextStyle(
                          fontFamily: "Mulish-SemiBold",
                          fontSize: 60,
                          fontWeight: FontWeight.w600,
                        ),
                        ),
                        Text("X",style: TextStyle(
                          fontFamily: "Mulish-SemiBold",
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        ),
                      ],
                    ),
                    const Text("Everyone Can Train",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                      fontFamily: "Mulish-Light",
                      color: Color.fromRGBO(123,111,114,1),
                    ),
                    ),
                    const SizedBox(height: 280,),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const OnboardingScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(20.0),
                          fixedSize: const Size(360,70),
                          textStyle: const TextStyle(
                            color: Color.fromRGBO(146,163,253,1),
                            fontSize: 25,
                            fontFamily: "Mulish-SemiBold",
                            fontWeight: FontWeight.bold,
                          ),

                          shadowColor: Colors.black87,
                          backgroundColor: Colors.white,
                          shape: const StadiumBorder(),
                        ),
                        child: const Text("Get Started",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Mulish-SemiBold",
                          color: Color.fromRGBO(146,163,253,1),
                        ),
                        )
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
