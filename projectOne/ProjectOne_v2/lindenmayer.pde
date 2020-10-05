class lindenmayer {
  String code = "";

  lindenmayer(String _s) {
    addComplexity(_s, 1);
     for(int i = 0;i<3;i++) {
        println("lopp number: ", i);
       addComplexity(code, i);
    }
  }
  
  void addComplexity(String _s, int a) {
    println("calculating...", a);
    for (int i = 0; i < _s.length(); i++) {
      //boolean match = false;
      println("calculating...", i);
      for (int j = 0; j < ruleMatcher.length; j++) {
        if (_s.charAt(i) == char(ruleMatcher[j])) {
          println("matched",  _s.charAt(i), char(ruleMatcher[j]) );
          code += ruleEncoder[j];
          //match = true;
          println("to be placed: ", ruleEncoder[j], " and: ", code);
          break;
        }
        if(j == ruleMatcher.length - 1 && _s.charAt(i) != char(ruleMatcher[j])) {
          //println("no match for: ", _s.charAt(i));
          code += _s.charAt(i);
        }
      }
      //if(match == false) println("false"); code += _s.charAt(i);
      if(i == _s.length() - 1) println("completed code: ", code);
    }
  }
}
