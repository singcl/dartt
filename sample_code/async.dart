import 'dart:async';
import 'dart:io';

const oneSecond = Duration(seconds: 1);

Future<void> printWithDelay(String message) async {
  await Future.delayed(oneSecond);
  print(message);
}

// The method above is equivalent to:
Future<void> printWithDelay2(String message) {
  return Future.delayed(oneSecond).then((_) {
    print(message);
  });
}

Future<void> createDescriptions(Iterable<String> objects) async {
  for (var object in objects) {
    try {
      var file = File('$object.txt');
      if (await file.exists()) {
        var modified = await file.lastModified();
        print('File for $object already exists. It was modified on $modified.');
        continue;
      }
      await file.create();
      await file.writeAsString('Start describing $object in this file.');
    } on IOException catch (e) {
      print('Cannot create description for $object: $e');
    }
  }
}

// You can also use async*, which gives you a nice, readable way to build streams.
Stream<String> report(Iterable<String> objects) async* {
  for (var object in objects) {
    await Future.delayed(oneSecond);
    yield 'files by $object';
  }
}

void main() {
  createDescriptions(['./xxxx']);
}
