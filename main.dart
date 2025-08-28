import 'dart:io';

void main() {
  print("Enter your name: ");
  String? name = stdin.readLineSync();
  print("Enter your Score on Assignment: ");
  int? assnum = stdin.readByteSync();
  print("Enter your Score on Midterm: ");
  int? midnum = stdin.readByteSync();
  print("Enter your Score on Final Exam: ");
  int? Finalnum = stdin.readByteSync();

  const double PassG = 60.0;
  const double MaxScore = 100.0;
  const double assignmentWeight = 0.2;
  const double midtermWeight = 0.3;
  const double finaExamWeight = 0.5;

  double AveAss = assnum / assignmentWeight;
  double AveMid = midnum / midtermWeight;
  double Avefinal = Finalnum / finaExamWeight;
  double FinalAve = (AveAss + AveMid + Avefinal)/3;

  print("Name:$name, Assignment:${AveAss}, Midterm:$AveMid, Final Exam:$Avefinal");

  if (assnum >= MaxScore) {
    print(" The maximum possible score for an assignment is:$MaxScore");
  } else {
    print("Final Average Grade:$FinalAve");
  }

  if(FinalAve <= PassG){
    print("Failed");
  } else{
    print("Passed");
  }
  
}