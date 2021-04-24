import 'package:flutter/material.dart';
import 'package:third_task/quiz model/quiz.dart';
import 'package:third_task/result_screen.dart';

class QuestionScreen extends StatefulWidget {
  final int index;



  QuestionScreen(this.index);

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  Quiz myQuiz=Quiz();
  bool isCorrect=false;
  bool isWrong=false;
  bool isHappy=false;
  bool isSad=false;
  int counter=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(myQuiz.quiz[widget.index].question,
                textAlign:TextAlign.center,
                style: TextStyle(
                  color: Colors.white,

                  fontSize: 30,
                ),

              ),
              Visibility(
                child:Image(
                  image: AssetImage('images/joy.jpg'),
                ),
                visible: isCorrect,
                replacement: Visibility(
                  child:Image(
                    image: AssetImage('images/sad.jpg'),
                  ),
                  visible:isWrong ,

                ),

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: MaterialButton(
                      onPressed:(){
                        if(myQuiz.quiz[widget.index].answer==true){
                         setState(() {
                           counter++;
                           print(counter);
                           isCorrect=true;
                           isWrong=false;
                         });

                        }

                        else
                          setState(() {
                            isCorrect=false;
                            isWrong=true;
                          });

                      },
                      child: Container(
                        width: 120,
                        height: 80,
                        child: Center(child: Text('True',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        ),),
                        decoration: BoxDecoration(
                            color: Colors.green[200],
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            boxShadow: [BoxShadow(color: Colors.green[300],blurRadius: 30)]


                        ),
                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20),
                    child: MaterialButton(
                      onPressed:(){
                        if(myQuiz.quiz[widget.index].answer==false)
                         setState(() {
                           counter++;

                           isCorrect = true;
                           isWrong = false;
                         });

                        else
                           setState(() {
                             isWrong=true;
                             isCorrect=false;
                           });


                      },

                      child: Container(
                        width: 120,
                        height: 80,
                        child: Center(child: Text('False',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),

                        )),
                        decoration: BoxDecoration(
                            color: Colors.indigoAccent,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            boxShadow: [BoxShadow(color: Colors.indigoAccent[100],blurRadius: 30)]


                        ),
                      ),

                    ),
                  )

                ],
              ),
              MaterialButton(
                onPressed: (){

                  if((widget.index)+1 < myQuiz.quiz.length  )

                    {  Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>QuestionScreen(widget.index+1)));



                        }

                  else
                    { if(counter>=3)
                      setState(() {
                        isHappy=true;
                        isSad=false;
                      });
                    else
                      setState(() {
                        isHappy=false;
                        isSad=true;
                      });







                      Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>ResultScreen(isSad,isHappy)
                        ),
                      );



                    }


                },
                child: Container(
                  height: 70,
                  width: 220,
                  child: Center(
                    child: Text('Next',
                    style: TextStyle(
                      fontSize: 30,

                    )

                      ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [BoxShadow(color: Colors.white,blurRadius: 30)]

                  ),
                ),


              ),





            ],



          ),
        ),
      ),
    );

  }
}





