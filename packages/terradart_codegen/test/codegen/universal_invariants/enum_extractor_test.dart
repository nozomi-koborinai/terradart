import 'package:terradart_codegen/src/codegen/universal_invariants/enum_extractor.dart';
import 'package:test/test.dart';

void main() {
  group('EnumExtractor', () {
    test('extracts (member, terraformValue) pairs from a canonical enum block',
        () {
      const src = '''
enum BucketStorageClass {
  standard('STANDARD'),
  nearline('NEARLINE'),
  archive('ARCHIVE');

  const BucketStorageClass(this.terraformValue);
  final String terraformValue;
}
''';
      final enums = const EnumExtractor().extract(src);
      expect(enums, hasLength(1));
      final ev = enums.single;
      expect(ev.name, equals('BucketStorageClass'));
      expect(
        ev.members,
        equals({
          'standard': 'STANDARD',
          'nearline': 'NEARLINE',
          'archive': 'ARCHIVE',
        }),
      );
    });

    test('returns empty list for source with no enum declarations', () {
      const src = 'class Foo {}\nvoid bar() {}';
      expect(const EnumExtractor().extract(src), isEmpty);
    });

    test('extracts a multi-line member (Dart format trailing-comma style)', () {
      const src = '''
enum SubnetworkResolveSubnetMask {
  arpAllRanges('ARP_ALL_RANGES'),
  arpBroadcastPrimaryRangeWithLearning(
    'ARP_BROADCAST_PRIMARY_RANGE_WITH_LEARNING',
  );

  const SubnetworkResolveSubnetMask(this.terraformValue);
  final String terraformValue;
}
''';
      final enums = const EnumExtractor().extract(src);
      expect(enums, hasLength(1));
      expect(
        enums.single.members,
        equals({
          'arpAllRanges': 'ARP_ALL_RANGES',
          'arpBroadcastPrimaryRangeWithLearning':
              'ARP_BROADCAST_PRIMARY_RANGE_WITH_LEARNING',
        }),
      );
    });

    test('extracts multiple enum declarations in one file', () {
      const src = '''
enum A {
  x('X');
  const A(this.terraformValue);
  final String terraformValue;
}

enum B {
  y('Y'),
  z('Z');
  const B(this.terraformValue);
  final String terraformValue;
}
''';
      final enums = const EnumExtractor().extract(src);
      expect(enums.map((e) => e.name).toSet(), equals({'A', 'B'}));
    });
  });
}
