import 'package:dart_application_1/data/models/learner/learner_model.dart';

class Group {
  Group({
    required this.courseType,
    required this.groupName,
  });

  final Course courseType;
  final String groupName;
  final int studentCount = 0;
  static final List<Learner> learners = [
    Learner(name: "Avazbek", score: 90, age: 18),
    Learner(name: "Asadbek", score: 85, age: 18),
    Learner(name: "Ibrohim", score: 76, age: 18),
    Learner(name: "Ilhom", score: 99, age: 18),
    Learner(name: "Maftuna", score: 98, age: 18),
    Learner(name: "Muzaffar", score: 65, age: 18),
    Learner(name: "Hasan", score: 82, age: 18),
  ];

  bool addLearner(Learner learner) {
    learners.add(learner);
    return true;
  }

  removeStudent(Learner learner) {
    bool isFound = false;
    for (var i in learners) {
      if (i.name == learner.name) {
        learners.remove(i);
        isFound = true;
        return true;
      }
    }
    if (isFound == false) {
      return false;
    }
  }

  List<Learner> getCleverLearners() {
    List<Learner> cleverLearners = [];
    bool isFound = false;
    for (var i in learners) {
      if (i.score > 76) {
        isFound = true;
        cleverLearners.add(i);
      }
    }
    if (isFound == false) {
      return [];
    } else {
      return cleverLearners;
    }
  }

  List<Learner> getFreeCourseLearners() {
    List<Learner> cleverLearners = [];
    bool isFound = false;
    for (var i in learners) {
      if (i.score > 97) {
        isFound = true;
        cleverLearners.add(i);
      }
    }
    if (isFound == false) {
      return [];
    } else {
      return cleverLearners;
    }
  }

  Learner getTheBestLearner() {
    List<int> studentsScore = [];
    Learner? bestStudent;
    int beststudent = 0;
    for (var i in learners) {
      studentsScore.add(i.score);
    }
    studentsScore.sort();
    beststudent = studentsScore.last;
    for (var i in learners) {
      if (i.score == beststudent) {
        bestStudent = i;
      }
    }
    return bestStudent!;
  }
}
