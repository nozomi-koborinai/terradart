import 'package:terradart_codegen/src/codegen/migrate/helper_class_extractor.dart';
import 'package:terradart_codegen/src/codegen/migrate/migrate_manifest_data.dart';
import 'package:terradart_codegen/src/codegen/migrate/migrate_shape_analyzer.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:test/test.dart';

const _prelude = '''
sealed class Target {
  const Target();
}
final class PubsubTarget extends Target {
  const PubsubTarget({required this.topicName});
  final TfArg<String> topicName;
  @override
  String get blockKey => 'pubsub_target';
  @override
  Map<String, Object?> encode() => {'topic_name': topicName.toTfJson()};
}
sealed class Keyless {
  const Keyless();
}
final class NoKey extends Keyless {
  const NoKey({this.a, this.b});
  final TfArg<String>? a;
  final TfArg<String>? b;
  @override
  Map<String, Object?> encode() => {
    if (a != null) 'a': a!.toTfJson(),
    if (b != null) 'b': b!.toTfJson(),
  };
}
class Helper {
  const Helper({this.x});
  final TfArg<int>? x;
  Map<String, Object?> encode() => {if (x != null) 'x': x!.toTfJson()};
}
''';

final _ctx = ShapeContext(
  helpers: const HelperClassExtractor().extract(_prelude),
  enumNames: const {'Color'},
);

void main() {
  group('classifyDartType', () {
    SlotShape c(String t) =>
        resolveEnumPayload(classifyDartType(t, _ctx), _ctx);

    test('TfArg payloads', () {
      final s = c('TfArg<String>?');
      expect(s.kind, MigrateSlotKind.scalar);
      expect(s.dartType, 'String');
      expect(s.wrapped, isTrue);
      expect(s.repeated, isFalse);

      final list = c('TfArg<List<String>>');
      expect(list.kind, MigrateSlotKind.scalar);
      expect(list.dartType, 'List<String>');

      final pass = c('TfArg<Map<String, dynamic>>?');
      expect(pass.kind, MigrateSlotKind.passthrough);
      expect(pass.dartType, 'Map<String, dynamic>');

      final passList = c('TfArg<List<Map<String, dynamic>>>?');
      expect(passList.kind, MigrateSlotKind.passthrough);
      expect(passList.dartType, 'List<Map<String, dynamic>>');

      final e = c('TfArg<Color>?');
      expect(e.kind, MigrateSlotKind.enumValue);
      expect(e.dartType, 'Color');
      expect(e.wrapped, isTrue);
    });

    test('repeated forms', () {
      final enums = c('List<TfArg<Color>>?');
      expect(enums.kind, MigrateSlotKind.enumValue);
      expect(enums.repeated, isTrue);
      expect(enums.wrapped, isTrue);

      final helpers = c('List<Helper>?');
      expect(helpers.kind, MigrateSlotKind.helper);
      expect(helpers.helper, 'Helper');
      expect(helpers.repeated, isTrue);
      expect(helpers.wrapped, isFalse);

      final bare = c('List<String>');
      expect(bare.kind, MigrateSlotKind.scalar);
      expect(bare.dartType, 'String');
      expect(bare.repeated, isTrue);
      expect(bare.wrapped, isFalse);

      expect(c('List<List<Helper>>').isManual, isTrue);
    });

    test('helpers, sealed choices, bare enums and plain values', () {
      final h = c('Helper?');
      expect(h.kind, MigrateSlotKind.helper);
      expect(h.helper, 'Helper');

      final s = c('Target');
      expect(s.kind, MigrateSlotKind.sealed);
      expect(s.variants, {'pubsub_target': 'PubsubTarget'});

      final keyless = c('Keyless');
      expect(keyless.isManual, isTrue);
      expect(keyless.reason, contains('variant without a blockKey'));

      final e = c('Color?');
      expect(e.kind, MigrateSlotKind.enumValue);
      expect(e.wrapped, isFalse);

      final map = c('Map<String, String>?');
      expect(map.kind, MigrateSlotKind.scalar);
      expect(map.dartType, 'Map<String, String>');
      expect(map.wrapped, isFalse);

      expect(c('bool').kind, MigrateSlotKind.scalar);
      expect(c('Map<String, Helper>').isManual, isTrue);
      expect(c('Unknown').isManual, isTrue);
      expect(c('Foo bar').isManual, isTrue);
    });
  });

  group('mergedShape', () {
    test('keeps helper / sealed, turns a bare map into passthrough', () {
      expect(
        mergedShape(classifyDartType('Helper', _ctx)).kind,
        MigrateSlotKind.helper,
      );
      expect(
        mergedShape(classifyDartType('Target', _ctx)).kind,
        MigrateSlotKind.sealed,
      );
      final map = mergedShape(classifyDartType('Map<String, Object?>?', _ctx));
      expect(map.kind, MigrateSlotKind.passthrough);
      expect(map.dartType, 'Map<String, Object?>');
      expect(map.wrapped, isFalse);
    });

    test('rejects merged scalars and enums', () {
      expect(mergedShape(classifyDartType('TfArg<String>', _ctx)).isManual,
          isTrue);
      expect(
        mergedShape(resolveEnumPayload(classifyDartType('Color', _ctx), _ctx))
            .isManual,
        isTrue,
      );
    });
  });

  group('parseCustomSlot', () {
    test('reads required, name, type, static key', () {
      const slot = CustomSlot(
        paramDeclaration: 'required List<Helper> helpers',
        argMapEntry:
            "'helpers': TfArg.literal(helpers.map((h) => h.encode()).toList()),",
      );
      final parsed = parseCustomSlot(slot);
      expect(parsed.required, isTrue);
      expect(parsed.dartName, 'helpers');
      expect(parsed.typeSource, 'List<Helper>');
      expect(parsed.tfKey, 'helpers');
      expect(parsed.dynamicKey, isFalse);
    });

    test('strips annotations and default values, detects blockKey dispatch',
        () {
      const slot = CustomSlot(
        paramDeclaration:
            "@Deprecated('x') Target target = const PubsubTarget(topicName: TfArg.literal('t'))",
        argMapEntry: 'target.blockKey: TfArg.literal(target.encode()),',
      );
      final parsed = parseCustomSlot(slot);
      expect(parsed.required, isFalse);
      expect(parsed.dartName, 'target');
      expect(parsed.typeSource, 'Target');
      expect(parsed.dynamicKey, isTrue);
      expect(parsed.tfKey, isNull);
    });
  });

  group('customSlotShape', () {
    test('sealed dispatch slot derives to sealed', () {
      const slot = CustomSlot(
        paramDeclaration: 'required Target target',
        argMapEntry: 'target.blockKey: TfArg.literal(target.encode()),',
      );
      final shape = customSlotShape(slot, parseCustomSlot(slot), _ctx);
      expect(shape.kind, MigrateSlotKind.sealed);
      expect(shape.variants, {'pubsub_target': 'PubsubTarget'});
    });

    test('a migrate hint wins over derivation', () {
      const slot = CustomSlot(
        paramDeclaration: 'required Target target',
        argMapEntry: 'target.blockKey: TfArg.literal(target.encode()),',
        migrate: MigrateHint.manual(reason: 'curated by hand'),
      );
      final parsed = parseCustomSlot(slot);
      final shape = customSlotShape(slot, parsed, _ctx);
      expect(shape.isManual, isTrue);
      expect(shape.reason, 'curated by hand');
      expect(deriveCustomSlotShape(parsed, _ctx).kind, MigrateSlotKind.sealed);
    });

    test('structural problems are manual with a reason', () {
      const dynamicNonSealed = CustomSlot(
        paramDeclaration: 'required Helper h',
        argMapEntry: 'h.blockKey: TfArg.literal(h.encode()),',
      );
      expect(
        customSlotShape(
                dynamicNonSealed, parseCustomSlot(dynamicNonSealed), _ctx)
            .reason,
        contains('not a sealed class'),
      );
      const noKey = CustomSlot(
        paramDeclaration: 'Helper? h',
        argMapEntry: 'if (h != null) ...h.encode(),',
      );
      expect(
        customSlotShape(noKey, parseCustomSlot(noKey), _ctx).reason,
        contains('no static key'),
      );
    });
  });
}
