main() {
  int year = 300;
  if (year >= 200) {
    print('21st century');
  } else if (year >= 1901) {
    print('20th century');
  }
  var flybyObjects = ['bejing', 'shanghai', 'tianjing'];

  for (var object in flybyObjects) {
    print(object);
  }

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  while (year < 2106) {
    year += 1;
  }
}
