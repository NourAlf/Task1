double calculateAverage(List<int> grades) {
  int sum = 0;
  for (int grade in grades) {
    sum += grade;
  }
  return sum / grades.length;
}

void main() {
  List<int> grades = [85, 92, 78, 90, 67, 100, 88];
  bool invalidGradeFound = false;

  for (int grade in grades) {
    if (grade < 0 || grade > 100) {
      invalidGradeFound = true;
      break;
    }
  }

  if (invalidGradeFound) {
    print("There are some invalid grades.");
  } else {
    print("All grades are valid.");

    double average = calculateAverage(grades);

    if (average >= 90) {
      print("Excellent! the average grade is $average.");
    } else if (average >= 80) {
      print("Great job! the average grade is $average.");
    } else if (average >= 70) {
      print("Good work! the average grade is $average.");
    } else if (average >= 60) {
      print("You passed. the average grade is $average.");
    } else {
      print("You failed. the average grade is $average.");
    }
  }

  print(" The grades received: $grades");
}
