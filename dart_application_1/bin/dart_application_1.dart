import 'package:dart_application_1/data/models/group/group_model.dart';
import 'package:dart_application_1/data/models/learner/learner_model.dart';

void main() {
  Group group = Group(courseType: Course.FLUTTER, groupName: "Flutter");
  print(
      "Student qoshildi => ${group.addLearner(Learner(name: "Shukurullo", score: 75, age: 20))}");
  print("\n76 dan yuqori toplaganlar");
  for (var i in group.getCleverLearners()) {
    print(i.name);
  }

  print("\n97 dan yuqori toplaganlar");
  for (var i in group.getFreeCourseLearners()) {
    print(i.name);
  }
  print(
      "/nStudent o'chirildi => ${group.removeStudent(Learner(name: "Ilhom", score: 99, age: 18))}/n");

  print("\nEng yuqori ball toplaganlar");
  print(
      "Ismi ${group.getTheBestLearner().name}, Age : ${group.getTheBestLearner().age}, Score : ${group.getTheBestLearner().score}\n\n");
}
