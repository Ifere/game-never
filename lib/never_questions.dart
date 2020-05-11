
class Question{
  String _question;
  Question(String que) {
    _question = que;
  }

}


class Feeder{

  String getQuestion(int cur) {
    if (cur == null) {
      cur = 0;
      return Q[0]._question;
    }
    else {
      return Q[cur]._question;
    }
  }
  int length()  {
    return Q.length;
  }

  List<Question> Q = [
    Question('Cheated in a relationship'),
    Question('Been black out drunk'),
    Question('Sent nudes'),
    Question('Gave head'),
    Question('One night stand'),
    Question('Dined and dashed'),
    Question('Pregnancy scare'),
    Question('Delibrately broke up a relationship'),
    Question('Messed with someone younger'),
    Question('Sent nudes to the wrong person'),
    Question('Kissed the same sex'),
    Question('Wanted my friend\'s boyfriend or girlfriend'),
    Question('Been a side piece'),
    Question('Done anal'),
    Question('Gotten a hickey'),
    Question('Had a sex dream about a friend'),
    Question('Sex in a car'),
    Question('Swallowed'),
    Question('Had a threesome'),
    Question('Been cheated on'),
    Question('Kissed a close friend'),
    Question('Smoked weed'),
    Question('Sucked someone\'s toes)'),
    Question('Boner in an uncomfortable situation'),
    Question('Tapped out during sex'),
    Question('Hooked up at a family event'),
    Question('Caught in the act'),
    Question('Been chocked during sex'),
    Question('Thumb in the mouth'),
    Question('Thumb in the ass'),
    Question('Snuck someone in the house'),
    Question('Flashed someone'),
    Question('FaceTime while on the toilet'),
    Question('Given a lap dance'),
    Question('Gotten a lap dance'),
    Question('Went swimming naked'),
    Question('Had sex in a pool'),
    Question('Fucked on the first night'),
    Question('Fallen in love at first sight'),
    Question('Said \'I love you\' first '),
    Question('Fallen asleep during sex'),
    Question('Faked an orgasm'),
    Question('Gone commando'),
    Question('Been to a strip club'),
    Question('Had an STD scare'),
    Question('Lied about your body count'),
    Question('Had to do the walk of shame'),
    Question('Fooled around with a co-worker'),
    Question('Period sex'),
    Question('Had an STD'),
    Question('Been high at a family function'),
    Question('Been drunk at a family function'),
    Question('Given someone a fake number'),
    Question('Gotten a fake number'),
    Question('Done 69'),
    Question('Said \'I love you\' just for sex'),
  ];
}