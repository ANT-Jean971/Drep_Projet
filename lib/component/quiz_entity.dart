class QuizEntity {
  int responseCode;
  List<QuizResult> results;

  QuizEntity({this.responseCode, this.results});

  QuizEntity.fromJson(Map<String, dynamic> json) {
    responseCode = json['response_code'];
    if (json['results'] != null) {
      results = new List<QuizResult>();
      (json['results'] as List).forEach((v) {
        results.add(new QuizResult.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['response_code'] = this.responseCode;
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class QuizResult {
	String category;
	String type;
  String difficulty;
  String question;
  String correctAnswer;
  List<String> allAnswers;


  QuizResult(

      {this.category,
				this.type,
				this.difficulty,
      this.question,
      this.correctAnswer,
      this.allAnswers,
      });

  QuizResult.fromJson(Map<String, dynamic> json) {
		category = json['category'];
		type = json['type'];
  	difficulty = json['difficulty'];
    question = json['question'];
    correctAnswer = json['correct_answer'];
    allAnswers = json['incorrect_answers']?.cast<String>();
    allAnswers.add("correctAnswer");
    allAnswers.shuffle();

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['difficulty'] = this.difficulty;
    data['question'] = this.question;
    data['correct_answer'] = this.correctAnswer;
    data['incorrect_answers'] = this.allAnswers;
    data['category'] = this.category;
    data['type'] = this.type;
    return data;
  }
}
