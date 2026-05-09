import 'package:terradart_annotations/terradart_annotations.dart';
import 'package:test/test.dart';

void main() {
  group('terradart_annotations', () {
    test('TerraformResource is const-constructible with required args', () {
      const a = TerraformResource(
        type: 'google_pubsub_topic',
        provider: 'hashicorp/google ~> 7.0',
      );
      expect(a.type, equals('google_pubsub_topic'));
      expect(a.provider, equals('hashicorp/google ~> 7.0'));
    });

    test('ForceNew is const-constructible with no args', () {
      const a = ForceNew();
      expect(a, isA<ForceNew>());
    });

    test('Sensitive is const-constructible with no args', () {
      const a = Sensitive();
      expect(a, isA<Sensitive>());
    });
  });
}
