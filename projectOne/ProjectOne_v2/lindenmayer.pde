class lindenmayer {
  String outputString = "";

  lindenmayer(String _s) {
    for (int i = 0; i < _s.length(); i++) {
      boolean match = false;

      if (match == true) {
        outputString += _s.charAt(i);
      } else {
        for (int j = 0; j < ruleMatcher.length; j++) {
          if (_s.charAt(i) == char(ruleMatcher[j])) {
            outputString += ruleEncoder[j];
            match = !match;
            break;
          }
        }
      }
    }
  }

  void draw() {
  }
}
