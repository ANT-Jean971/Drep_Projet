import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:quizdemo/component/quiz_entity.dart';

class Questions extends StatefulWidget {
  static const String id = 'quiz_screen';
  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  QuizEntity quiz;
  List<QuizResult> results;
  Future<void> fechQuestions() async {
    var res =
        await http.get("https://opentdb.com/api.php?amount=5&category=30");
    var decRes = jsonDecode(res.body);
    print(decRes);
    quiz = QuizEntity.fromJson(decRes);
    results = quiz.results;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red),
        backgroundColor: Colors.white,
        title: Text(
          ' Quiz Drep\'Agir',
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontFamily: "Pacifico",
          ),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: fechQuestions(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Text("Press button to start");
            case ConnectionState.active:
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.done:
              if (snapshot.hasError) return Container();
              return questionList();
          }
          return null;
        },
      ),
    );
  }
  ListView questionList(){
    return ListView.builder(itemCount: results.length,
    itemBuilder: (context, index) => Card(
      color: Colors.white,
      elevation: 0.0,
      child: ExpansionTile(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              results[index].question,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold
              ),
            ),
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FilterChip(
                    backgroundColor: Colors.grey[100],
                    label: Text(results[index].category),
                    onSelected: (b){},
                  ),
                  SizedBox(width: 10,),
                  FilterChip(
                    backgroundColor: Colors.grey[100],
                    label: Text(results[index].difficulty),
                    onSelected: (b){},
                  ),
                ],
              ),
            )
          ],
        ),
        leading: CircleAvatar(
          backgroundColor: Colors.grey[100],
          child : Text(results[index].type.startsWith("m")?"M" : "B"),
        ),
        children: results[index].allAnswers.map((m){
          return AnswerWidget(results,index,m);
        }
      ).toList(),
    ),
      
    ),
    );
    
  }
}
class AnswerWidget extends StatefulWidget {

  final List<QuizResult> results;
  final int index;
  final String m;
  AnswerWidget(this.results,this.index,this.m);
  @override
  _AnswerWidgetState createState() => _AnswerWidgetState();
}

class _AnswerWidgetState extends State<AnswerWidget> {
  Color c = Colors.black;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        setState(() {
          if(widget.m == widget.results[widget.index].correctAnswer){
            c = Colors.green ;
          }else
            c= Colors.red;
        });
      },
      title: Text(widget.m,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,


      ),),

    );
  }
}
