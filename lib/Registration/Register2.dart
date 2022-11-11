import 'Register3.dart';
import "package:flutter/material.dart";

class Register2 extends StatefulWidget {
  const Register2({Key? key}) : super(key: key);

  @override
  State<Register2> createState() => _Register2State();
}

class _Register2State extends State<Register2> {
  final _value = "-1";
  final TextEditingController _dob = TextEditingController();
  final TextEditingController _weight = TextEditingController();
  final TextEditingController _height= TextEditingController();

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: deviceHeight*0.93,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  const SizedBox(height: 10,),
                  const Image(image: AssetImage("assets/images/Register2_image1.png"),),
                  const SizedBox(height: 10,),
                  const Text("Let’s complete your profile", style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                  const SizedBox(height: 5,),
                  const Text("It will help us to know more about you!", style:
                    TextStyle(color: Color.fromRGBO(123,111,114,1)),),
                  const SizedBox(height: 20,),
                  DropdownButtonFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white70),
                              borderRadius: BorderRadius.circular(20.0)
                          )
                      ),
                      value: _value,
                      items: const [
                        DropdownMenuItem(value: "-1",child: Text("Choose Gender",style:
                        TextStyle(color: Color.fromRGBO(123,111,114,1)),),),
                        DropdownMenuItem(value: "M",child: Text("Male",style:
                        TextStyle(color: Color.fromRGBO(123,111,114,1)),),),
                        DropdownMenuItem(value: "F",child: Text("Female",style:
                        TextStyle(color: Color.fromRGBO(123,111,114,1)),),)
                      ],
                      onChanged: (value) {}),
                  const SizedBox(height: 10,),
                  TextField(
                      controller: _dob,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.calendar_month_outlined),
                          filled: true,
                          hintText: "Date of Birth: DD-MM-YYYY",
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
                  const SizedBox(height: 10,),
                  TextField(
                      controller: _weight,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.monitor_weight_outlined),
                          filled: true,
                          hintText: "Your Weight (in KG)",
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
                  const SizedBox(height: 10,),
                  TextField(
                      controller: _height,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.height),
                          filled: true,
                          hintText: "Your Height (in CM)",
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
                  const SizedBox(height: 15,),
                  ElevatedButton(
                      onPressed: () {
                        var dob = _dob.text;
                        var weight = _weight.text;
                        var height = _height.text;

                        print("Gender: $_value");
                        print("Date of Birth: $dob");
                        print("Weight: $weight");
                        print("Height: $height");

                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Register3()));
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
                      child: const Text("Next ")
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String selectgender = "";
final genderSelector = TextEditingController();
List<String> gender = ["Male", "Female"];

