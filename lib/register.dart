import 'package:flutter/material.dart';
import 'dart:math';

enum Gender { MALE, FEMALE, OTHERS }

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  double sliderValue = 10;
  bool CheckBoxState = false;
  static List<String> faculty = ["BCA", "BSC.CSIT", "BIT"];
  String selectedFaculty = faculty.first;
  Gender selectedGender = Gender.MALE;
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Card(
        color: Color.fromARGB(255, 205, 255, 247),
        margin: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Registration From",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      width: deviceWidth * 0.4,
                      child: TextFormField(
                          decoration: InputDecoration(
                        hintText: "Enter First Name",
                        label: Text("FirstName"),
                        labelStyle: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      width: deviceWidth * 0.4,
                      child: TextFormField(
                          decoration: InputDecoration(
                        hintText: "Enter Last Name",
                        label: Text("LastName"),
                        labelStyle: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        width: deviceWidth * 0.4,
                        child: TextFormField(
                            decoration: InputDecoration(
                          hintText: "Enter  Email",
                          label: Text("Email"),
                          labelStyle: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: deviceWidth * 0.4,
                        child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Enter Password",
                              label: Text("Password"),
                              labelStyle: TextStyle(
                                  color: Colors.red,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      width: deviceWidth * 0.4,
                      child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Confirm password",
                            label: Text("Confirm Password"),
                            labelStyle: TextStyle(
                                color: Colors.red,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      width: deviceWidth * 0.4,
                      child: DropdownButton(
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                          // menuMaxHeight: 300,
                          value: selectedFaculty,
                          items: faculty
                              .map((e) => DropdownMenuItem(
                                    child: Text(e),
                                    value: e,
                                  ))
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedFaculty = value ?? "";
                            });
                          }),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: Gender.MALE,
                        groupValue: selectedGender,
                        onChanged: (value) {
                          setState(() {
                            selectedGender = value!;
                          });
                        }),
                    Text("Male"),
                    Radio(
                        value: Gender.FEMALE,
                        groupValue: selectedGender,
                        onChanged: (value) {
                          setState(() {
                            selectedGender = value!;
                          });
                        }),
                    Text("Female"),
                    Radio(
                        value: Gender.OTHERS,
                        groupValue: selectedGender,
                        onChanged: (value) {
                          setState(() {
                            selectedGender = value!;
                          });
                        }),
                    Text("Others"),
                  ],
                ),
                Slider(
                    min: 0,
                    max: 100,
                    // divisions: 10,
                    label: "Programming Knowledge",
                    value: sliderValue,
                    onChanged: (value) {
                      setState(() {
                        sliderValue = value;
                      });
                    }),
                // Text(sliderValue.toStringAsFixed(2)),
                Row(
                  children: [
                    Checkbox(
                        value: CheckBoxState,
                        onChanged: (value) {
                          setState(() {
                            CheckBoxState = !CheckBoxState;
                          });
                        }),
                    Text(
                      "I agree to The terms and Conditions",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                ElevatedButton(onPressed: () {}, child: Text("Submit form"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
