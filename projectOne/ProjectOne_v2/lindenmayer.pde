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

  void grow(char _s) {
    if (_s == 'F') {
      float x1 = x[x.length - 1] + step*cos(radians(currentAngle[currentAngle.length - 1]));
      float y1 = y[y.length - 1] + step*sin(radians(currentAngle[currentAngle.length - 1]));
      line(x[x.length - 1], y[y.length - 1], x1, y1);
      x[x.length - 1] = x1;
      y[y.length - 1] = y1;
    } else if (_s == '+') {
      currentAngle[currentAngle.length - 1] -= angle;
    } else if (_s == '-') {
      currentAngle[currentAngle.length - 1] += angle;
    } else if (_s == '[') {
      float x1 = x[x.length -1];
      float y1 = y[y.length - 1];
      float c = currentAngle[currentAngle.length - 1];
      x = append(x, x1);
      y = append(y, y1);
      currentAngle = append(currentAngle, int(c));
    } else if (_s == ']') {
      x = shorten(x);
      y = shorten(y);
    }
  }
}
