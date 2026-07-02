import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/access_context_manager.dart';
import 'package:test/test.dart';

void main() {
  test('perimeterType is a typed enum and serializes raw', () {
    final p = GoogleAccessContextManagerServicePerimeter(
      localName: 'p',
      name: TfArg.literal('accessPolicies/1/servicePerimeters/p'),
      parent: TfArg.literal('accessPolicies/1'),
      title: TfArg.literal('p'),
      perimeterType: TfArg.literal(
        AccessContextManagerServicePerimeterPerimeterType.perimeterTypeBridge,
      ),
    );
    expect(
      p.argMap['perimeter_type']!.toTfJson(),
      'PERIMETER_TYPE_BRIDGE',
    );
  });
}
