import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
   ButtonWidget({super.key});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
int counter = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment:  MainAxisAlignment.center,
    
        children: [
          Text("counter: $counter"),
        ElevatedButton(onPressed: () {
          setState(() {
            
        counter++;
          });
        print(counter);
        }, child: Text("click me")),

        TextButton(onPressed: (){

          setState(() {
            counter--;
          });
        }, child: Text("This is buttonm")),
        Icon(Icons.accessibility_new,
        size: 60,
        color: Colors.blue,
        
        ),
        IconButton(onPressed: (){}, icon: Icon(Icons.access_alarm,size: 60,color: Colors.red,)),
        TextButton.icon(onPressed:(){} , icon: Icon(Icons.logout), label: Text("LogOut")),
        FloatingActionButton(onPressed: (){},
        child: Icon(Icons.facebook),
        
        ),
        InkWell(
          onTap: (){
            print("This is container");
          },
          child: Container(
          height: 20,
          width: 30,
         child: Text("Container Image inside tche imaghe portion ",style: TextStyle(
          color: Colors.black,
          fontFamily: "RubikBubbles",
          fontWeight: FontWeight.w900,
          fontSize: 30
         ),),
         decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/3844788/pexels-photo-3844788.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),fit: BoxFit.cover),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 7,
              offset: Offset(2,5),
            ),
            BoxShadow(
              color: Colors.yellow,

              blurRadius: 7,
              offset: Offset(-2,-5)
            ),
          ],
         color: Colors.red,
         
         gradient:LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
          ,colors: [Colors.red,Colors.green,Colors.yellow]),
  border: Border.all(
  color: Colors.white,
  width: 3

),
borderRadius: BorderRadius.circular(5)
     ),
          ),
        ),
        Card(
          
          color: Colors.grey,
          elevation: 18.0,
          child: Container(
                child: Text("Container Image inside tche imaghe portion ",style: TextStyle(
          color: Colors.black,
          fontFamily: "RubikBubbles",
          fontWeight: FontWeight.w900,
          fontSize: 30
         ),),
            height: 50, 
          ),
        ),
      Row(
        children: [
          Card(
            elevation: 10.0,
            child: Container(
              height: 100,
              width: 170, 
  decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/sj.jpg"),
                fit: BoxFit.cover)
              ), 
            ),
          ),
          Card(
            elevation: 10.0,
            child: Container(
                height: 100,
              width: 170,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/sm.jpg"),
                fit: BoxFit.cover)
              ), 
            ),
          )
        ],
      )
        ],
      ),
    );
  }
}