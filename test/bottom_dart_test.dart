import 'package:bottom/bottom.dart';
import 'package:test/test.dart';

Map<String, String> pairs = {
  'Test': '💖✨✨✨,,,,👉👈💖💖,👉👈💖💖✨🥺👉👈💖💖✨🥺,👉👈',
  'Hello World':
      '💖✨✨,,👉👈💖💖,👉👈💖💖🥺,,,👉👈💖💖🥺,,,👉👈💖💖✨,👉👈✨✨✨,,👉👈💖✨✨✨🥺,,👉👈💖💖✨,👉👈💖💖✨,,,,👉👈💖💖🥺,,,👉👈💖💖👉👈',
  'がんばれ':
      '🫂✨✨🥺,,👉👈💖💖✨✨🥺,,,,👉👈💖💖✨✨✨✨👉👈🫂✨✨🥺,,👉👈💖💖✨✨✨👉👈💖💖✨✨✨✨🥺,,👉👈🫂✨✨🥺,,👉👈💖💖✨✨🥺,,,,👉👈💖💖💖✨✨🥺,👉👈🫂✨✨🥺,,👉👈💖💖✨✨✨👉👈💖💖✨✨✨✨👉👈',
  '🥺': '🫂✨✨✨✨👉👈💖💖💖🥺,,,,👉👈💖💖💖✨🥺👉👈💖💖💖✨✨✨🥺,👉👈',
  '\x00': '\u2764👉👈',
};

void main() {
  group('Bottom tests', () {
    test('Encodes properly', () {
      pairs.forEach((text, result) => expect(bottom.encode(text), result));
    });

    test('Decodes properly', () {
      pairs.forEach((text, result) => expect(bottom.decode(result), text));
    });
  });
}
