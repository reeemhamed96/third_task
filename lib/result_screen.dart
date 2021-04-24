import 'package:flutter/material.dart';
import 'package:third_task/question_screen.dart';




class ResultScreen extends StatefulWidget {

  final bool isHappy,isSad;
  ResultScreen(this.isSad,this.isHappy);

  @override

  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Result',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,

                ),

              ),



              Visibility(child: Image(
                image: NetworkImage('https://assets.dragoart.com/images/7718_500/l-o_5e4c8ceb9111c9.27998486_32743_3_2.jpg'),

              ),
              visible:widget.isHappy,
                replacement: Visibility(
                  child: Image(
                    image: NetworkImage('https://i.pinimg.com/originals/46/b1/c8/46b1c8c9b04d589d505b65569b1ecdfd.jpg'),


                  ),
                  visible:widget.isSad,
                ),
              ),
              Text('Your Result is ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.white
                ),


              )

            ],
          ),
        ),


      ),

    );
  }
}


