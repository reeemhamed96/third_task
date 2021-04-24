import 'package:flutter/material.dart';
import 'package:third_task/question_screen.dart';
class Home extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,


      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Welcome To Disney Quiz',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Image(
                image: AssetImage('images/cheshire-cat1.png'),
              ),
              Padding(
                padding: const EdgeInsets.only( bottom: 10),
                child: Text('"We are all mad here"',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal[100],
                ),
                ),
              ),
              MaterialButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder:(context)=>QuestionScreen(0),
                        )
                    );
                  },
                child:Container(
                  child: Center(
                    child: Text('Start',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,


                      ),


                    ),
                  ),
                  width: 270,
                  height: 100,
                  decoration: BoxDecoration(

                    boxShadow: [BoxShadow(
                        color: Colors.teal[300],blurRadius: 50,spreadRadius: 10),


                    ],
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.white,
                  ),

                ) ,


                  ),
            ],
          ),
        ),

      ),
    );
  }
}
