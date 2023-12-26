import 'dart:math';

import 'package:flutter/material.dart';

enum Gender { MALE, FEMALE, OTHER }

class InputWidget extends StatefulWidget {
  const InputWidget({super.key});

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  TextEditingController userNameController = TextEditingController();
  bool CheckBoxState = false;
  double sliderValue = 10;
  Gender selectedGender = Gender.FEMALE;
  static List<String> fruits = ["apple", "orange", "banana"];
  String selectedFruits = fruits.first;
  @override
  Widget build(BuildContext context) {
    // userNameController.addListener()
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 300,
              child: TextFormField(
                // obscureText: true,
                // obscuringCharacter: "•",
                controller: userNameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Username",
                    labelStyle: TextStyle(color: Colors.red),
                    hintText: "This is hint",
                    helperText: "helper text",
                    suffixIcon: IconButton(
                      icon: Icon(Icons.lock),
                      onPressed: () {},
                    ),
                    prefixIcon: Icon(Icons.verified_user_rounded)),
              ),
            ),
            Checkbox(
                activeColor: Colors.green,
                checkColor: Colors.red,
                value: CheckBoxState,
                onChanged: (value) {
                  setState(() {
                    CheckBoxState = !CheckBoxState;
                  });
                }),
            Slider(
                min: 0,
                max: 100,
                // divisions: 10,
                label: "slider",
                value: sliderValue,
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                  });
                }),
            Text(sliderValue.toStringAsFixed(2)),
            Row(
              children: [
                Radio(
                  value: Gender.MALE,
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value!;
                    });
                  },
                ),
                Text("Male"),
                Radio(
                  value: Gender.FEMALE,
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value!;
                    });
                  },
                ),
                Text("Female"),
                Radio(
                  value: Gender.OTHER,
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value!;
                    });
                  },
                ),
                Text("Others"),
              ],
            ),
            DropdownButton(
                menuMaxHeight: 300,
                value: selectedFruits,
                items: fruits
                    .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedFruits = value ?? "";
                  });
                }),
            ElevatedButton(
                onPressed: () {
                  print(userNameController.value);
                  print(CheckBoxState);
                  print(sliderValue);
                  print(selectedGender.name);
                  print(selectedFruits);
                },
                child: Text("submit form")),
          ],
        ),
      ),
    );
  }
}
