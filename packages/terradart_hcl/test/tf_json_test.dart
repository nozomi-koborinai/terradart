import 'dart:convert';
import 'dart:io';

import 'package:terradart_hcl/src/dump.dart';
import 'package:terradart_hcl/terradart_hcl.dart';
import 'package:test/test.dart';

void main() {
  final json = File(
    'test/fixtures/pubsub_quickstart.tf.json',
  ).readAsStringSync();

  group('decodeTfJson', () {
    test('maps the Terraform structure to blocks', () {
      final file = decodeTfJson(json, fileName: 'main.tf.json');
      expect(file.isJson, isTrue);
      final raw = jsonDecode(json) as Map<String, dynamic>;
      final resourceCount = (raw['resource'] as Map<String, dynamic>).values
          .map((byName) => (byName as Map).length)
          .fold<int>(0, (a, b) => a + b);
      expect(file.body.blocksOf('resource'), hasLength(resourceCount));
      expect(file.body.block('terraform')!.labels, isEmpty);
      expect(file.body.block('provider')!.labelTexts, ['google']);
      expect(
        file.body.blocksOf('output').map((b) => b.labelTexts.single),
        (raw['output'] as Map).keys,
      );

      final sub = file.body
          .blocksOf('resource')
          .firstWhere(
            (b) =>
                b.labelTexts.join('.') ==
                'google_pubsub_subscription.orders_push',
          );
      final pushConfig = sub.body.attribute('push_config')!.value as ObjectExpr;
      expect(
        pushConfig.item('push_endpoint')!.value.constantString,
        'https://app.example.com/push',
      );
      final topic = sub.body.attribute('topic')!.value as TemplateExpr;
      expect(topic.parts.single, isA<TemplateInterpolation>());
      expect(
        ((topic.parts.single as TemplateInterpolation).expr as TraversalExpr)
            .dottedPath,
        'google_pubsub_topic.orders.id',
      );
      expect(
        (sub.body.attribute('ack_deadline_seconds')!.value as LiteralExpr)
            .value,
        60,
      );

      final iam = file.body
          .blocksOf('resource')
          .firstWhere(
            (b) => b.labelTexts.first == 'google_pubsub_schema_iam_member',
          );
      final dependsOn = iam.body.attribute('depends_on')!.value as TupleExpr;
      expect(dependsOn.elements.map((e) => e.constantString), [
        'google_pubsub_schema.orders_proto',
        'google_service_account.orders_publisher',
      ]);
      expect(sub.range.isNone, isTrue);
    });

    test('lists of bodies, locals, escapes and scalars', () {
      final file = decodeTfJson('''
{
  "provider": {"google": [{"project": "a"}, {"alias": "eu", "project": "b"}]},
  "locals": {"n": 1, "s": "\$\${literal}", "l": [true, null, 1.5], "o": {"k": "v"}},
  "moved": [{"from": "a.b", "to": "a.c"}],
  "custom_block": {"x": 1},
  "stray": "value"
}
''');
      expect(
        file.body
            .blocksOf('provider')
            .map((b) => b.body.attribute('project')!.value.constantString),
        ['a', 'b'],
      );
      final locals = file.body.block('locals')!.body;
      expect((locals.attribute('n')!.value as LiteralExpr).value, 1);
      expect(locals.attribute('s')!.value.constantString, r'${literal}');
      final l = locals.attribute('l')!.value as TupleExpr;
      expect(l.elements.map((e) => (e as LiteralExpr).value), [
        true,
        null,
        1.5,
      ]);
      expect(
        (locals.attribute('o')!.value as ObjectExpr)
            .item('k')!
            .value
            .constantString,
        'v',
      );
      expect(file.body.blocksOf('moved'), hasLength(1));
      expect(
        decodeTfJson(
          '{"check": {"health": {"assert": {"condition": true}}}}',
        ).body.block('check')!.labelTexts,
        ['health'],
      );
      expect(file.body.block('custom_block')!.body.attribute('x'), isNotNull);
      expect(file.body.attribute('stray')!.value.constantString, 'value');
    });

    test('rejects invalid input with a diagnostic', () {
      expect(
        () => decodeTfJson('{'),
        throwsA(
          isA<HclParseException>().having(
            (e) => e.first.message,
            'message',
            contains('invalid JSON'),
          ),
        ),
      );
      expect(
        () => decodeTfJson('[]'),
        throwsA(
          isA<HclParseException>().having(
            (e) => e.first.message,
            'message',
            contains('JSON object'),
          ),
        ),
      );
      expect(
        () => decodeTfJson('{"resource": {"t": "oops"}}'),
        throwsA(isA<HclParseException>()),
      );
      expect(
        () => decodeTfJson('{"resource": {"t": {"n": [1]}}}'),
        throwsA(isA<HclParseException>()),
      );
    });

    test('JSON → module → HCL → module gives the same structure', () {
      final fromJson = TfModule.fromTfJson(json, fileName: 'main.tf.json');
      final hcl = serializeHcl(fromJson.files.single);
      final fromHcl = TfModule.fromHcl(hcl, fileName: 'main.tf');
      expect(
        fromHcl.resources.map((r) => r.address),
        fromJson.resources.map((r) => r.address),
      );
      expect(
        fromHcl.outputs.map((o) => o.name),
        fromJson.outputs.map((o) => o.name),
      );
      expect(fromHcl.providers.single.name, 'google');
      expect(dumpHcl(fromHcl.files.single), dumpHcl(fromJson.files.single));
      expect(fromHcl.requiredProviders.keys, ['google']);
    });
  });
}
