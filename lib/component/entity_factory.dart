import 'package:quizdemo/component/quiz_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "QuizEntity") {
      return QuizEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}