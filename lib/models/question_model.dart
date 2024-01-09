class QuestionModel {
  const QuestionModel(this.questions,this.answers);

  final String questions;
  final List<String> answers;

  List<String> getShuffledList(){
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}