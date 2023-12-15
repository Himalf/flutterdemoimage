import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
       mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 180,
                width: 100,
                color: Color.fromARGB(179, 166, 68, 68),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              )
            ],
          ),
          Column(
             mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 200,
                // color: Colors.red,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  border: Border.all(
                    color: Colors.black,
                    width: 3.0,

                  )
                ),
              ),
              Container(
                height: 100,
                width: 200,
             
                 decoration: BoxDecoration(
                    color: Color.fromARGB(255, 57, 9, 120),
                  border: Border.all(
                    color: Colors.black,
                    width: 3.0,

                  )
                ),
              ),
              Container(
                height: 100,
                width: 200,
                color: Colors.cyan,
                 
              ),
              Container(
                height: 180,
                width: 200,
                color: Colors.black,
              ),
            ],
          )
        ],
      ),
    );
  }
}
