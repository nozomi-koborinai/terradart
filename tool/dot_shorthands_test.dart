import 'package:test/test.dart';

import 'dot_shorthands.dart';

void main() {
  test('shortens TfArg / RefTo constructors and known enum values', () {
    expect(
      dotShorthands(
        "a: TfArg.literal(Runtime.go),\n"
        "b: RefTo.literal('x'),\n"
        "c: TfArg.variable('v'),\n"
        "d: TfRef.attribute(x, 'id'),\n"
        "e: TfArg.literal(Other.value),\n",
        {'Runtime'},
      ),
      "a: .literal(.go),\n"
      "b: .literal('x'),\n"
      "c: .variable('v'),\n"
      "d: TfRef.attribute(x, 'id'),\n"
      "e: .literal(Other.value),\n",
    );
  });
}
