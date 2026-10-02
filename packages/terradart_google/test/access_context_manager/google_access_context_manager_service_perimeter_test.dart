import 'package:terradart_google/access_context_manager.dart';
import 'package:test/test.dart';

void main() {
  test('perimeterType is a typed enum and serializes raw', () {
    final p = GoogleAccessContextManagerServicePerimeter(
      'p',
      name: const TfArg.literal('accessPolicies/1/servicePerimeters/p'),
      parent: const TfArg.literal('accessPolicies/1'),
      title: const TfArg.literal('p'),
      perimeterType:
          AccessContextManagerServicePerimeterType.perimeterTypeBridge,
    );
    expect(p.argMap['perimeter_type']!.toTfJson(), 'PERIMETER_TYPE_BRIDGE');
  });
}
