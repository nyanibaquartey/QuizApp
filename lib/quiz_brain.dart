import 'questions.dart';

//class to hold a list of questions
class QuizBrain {
  int _questionNumber = 0;

  List<Questions> _questionBank = [
    Questions("You can lead a cow downstairs but not upstairs", false),
    Questions("Approximately one quarter of human bones are in the feet", true),
    Questions("A slug's blood is green", true),
    Questions("The capital city of Ghana is Cape Coast", false),
    Questions(
        'No piece of square dry paper can be folded in half more than 7 times',
        false),
    Questions(
        'The loudest sound produced by an animal is 188 decibels. That animal is the African Elephant',
        false),
    Questions(
        'The total surface area of two human lungs is approximately 70 square meters.',
        true),
    Questions('It is illegal to pee in the Ocean in Portugal', true),
    Questions('Some cats are actually allergic to humans', true),
    Questions("Google was originally called 'Backrub'", true)
  ];

  //method to get next question
  void nextQuestion() {
    //check current question against length of the question bank
    // to prevent the app from crashing when it reaches the end of the question bank list
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  //method/function to return question text
  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  //method/function to return answer to current question
  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
