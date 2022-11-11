import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:diet_recall_app/Registration/Register2.dart';

class Register1 extends StatefulWidget {
  const Register1({Key? key}) : super(key: key);

  @override
  State<Register1> createState() => _SignUpState();
}

class _SignUpState extends State<Register1> {
  var defaultText = const TextStyle(color: Colors.black);
  var linkText = const TextStyle(color: Color.fromRGBO(197,139,242, 1));
  bool isHidden = true;
  bool? isAccepted = false;
  final TextEditingController _fname = TextEditingController();
  final TextEditingController _lname = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Container(
            height: deviceHeight*0.63,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text("Hey there,",
                style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.normal, fontFamily: "Mulish-SemiBold",
                  ),
                ),
                const Text("Create an Account",
                  style: TextStyle(
                    fontSize: 25, fontWeight: FontWeight.bold, fontFamily: "Mulish-SemiBold",
                  ),
                ),
                const SizedBox(height: 40,),
                Column(
                  children: [
                    TextField(
                      controller: _fname,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        filled: true,
                        hintText: "First Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(
                            color: Colors.blue
                          )
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white70),
                          borderRadius: BorderRadius.circular(20.0)
                        )
                      )
                    ),
                    const SizedBox(height: 15),
                    TextField(
                        controller: _lname,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          filled: true,
                          hintText: "Last Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: const BorderSide(
                                  color: Colors.blue
                              )
                          ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white70),
                                borderRadius: BorderRadius.circular(20.0)
                            )
                        )
                    ),
                    const SizedBox(height: 15),
                    TextField(
                        controller: _email,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_outlined),
                          filled: true,
                          hintText: "Email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: const BorderSide(
                                  color: Colors.blue
                              )
                          ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white70),
                                borderRadius: BorderRadius.circular(20.0)
                            )
                        )
                    ),
                    SizedBox(height: 15),
                    TextField(
                        obscureText: isHidden,
                        controller: _password,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: GestureDetector(onTap: () {
                            setState(() {
                              isHidden = !isHidden;
                            });
                          },
                          child: Icon(isHidden ? Icons.visibility : Icons.visibility_off),
                          ),
                          filled: true,
                          hintText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: const BorderSide(
                                  color: Colors.blue
                              )
                          ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white70),
                                borderRadius: BorderRadius.circular(20.0)
                            )
                        )
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          Checkbox(
                              value: isAccepted,
                              activeColor: Colors.blue,
                              onChanged: (newvalue) {
                                setState(() {
                                  isAccepted = newvalue;
                                });
                              }
                          ),
                          Container(
                            child: Row(
                              children: const [
                                Text("By continuing you accept our Privacy Policy \nand Term of Use",
                                style: TextStyle(
                                  fontFamily: "Mulish-SemiBold",
                                ),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                        // RichText(text: const TextSpan(
                        //   text: "By continuing you accept our Privacy Policy and Term of Use",
                        //   style: TextStyle(
                        //     color: Colors.grey,
                        //     fontSize: 5,
                        //   )
                        // )),
                      ],
                    )
                ],
              ),
            ),
          Container(
            height: deviceHeight*0.29,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      var fname = _fname.text;
                      var lname = _lname.text;
                      var email = _email.text;
                      var password = _password.text;

                      print("First Name: $fname");
                      print("Last Name: $lname");
                      print("Email: $email");
                      print("Password: $password");
                      print("Terms & Conditions accepted: $isAccepted");

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Register2()));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(20.0),
                      fixedSize: Size(360,70),
                      textStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      shadowColor: Colors.black87,
                      backgroundColor: const Color.fromRGBO(146,163,253,1),
                      shape: const StadiumBorder(),
                    ),
                    child: const Text("Register",
                    style: TextStyle(
                      fontFamily: "Mulish-SemiBold",
                      fontWeight: FontWeight.bold,
                    ),)
                ),
                const SizedBox(height: 15,),
                const Text("OR",style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16
                ),),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(width: 103,),
                    ElevatedButton(
                        child: const Image(image: AssetImage("assets/images/Register1_image2.png"),),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(17.0),
                          fixedSize: Size(30,60),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Color.fromRGBO(221, 221, 221, 1))
                          ),
                          textStyle: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),

                          backgroundColor: Colors.white,
                        ), onPressed: () {  },
                    ),
                    SizedBox(width: 30,),
                    ElevatedButton(
                      child: const Image(image: AssetImage("assets/images/Register1_image1.png"),),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(17.0),
                        fixedSize: Size(30,60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Color.fromRGBO(221, 221, 221, 1))
                        ),
                        textStyle: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),

                        backgroundColor: Colors.white,
                      ), onPressed: () {  },
                    ),
                    ],
                  ),
                SizedBox(height: 15,),
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Already have an account? ",
                          style: defaultText,
                        ),
                        TextSpan(
                          style: linkText,
                          text: "Login",
                          recognizer: TapGestureRecognizer()..onTap = () async {},
                        )
                      ]
                    ),
                  ),
                )
                ],
              ),
            ),
          ],
        )
      )
    );
  }


}

