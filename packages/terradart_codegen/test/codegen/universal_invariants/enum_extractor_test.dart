import 'package:terradart_codegen/src/codegen/universal_invariants/enum_extractor.dart';
import 'package:test/test.dart';

void main() {
  group('EnumExtractor', () {
    test('extracts (member, Terraform value) pairs from a canonical enum', () {
      const src = '''
extension type const BucketStorageClass._(TfArg<String> _) implements TfArg<String> {
  BucketStorageClass.variable(String name) : this._(TfArg.variable(name));
  BucketStorageClass.expression(String template) : this._(TfArg.expression(template));
  const BucketStorageClass.arg(TfArg<String> arg) : this._(arg);

  static const standard = BucketStorageClass._(TfArgLiteral('STANDARD'));
  static const nearline = BucketStorageClass._(TfArgLiteral('NEARLINE'));
  static const archive = BucketStorageClass._(TfArgLiteral('ARCHIVE'));

  static const List<BucketStorageClass> values = [standard, nearline, archive];
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

    test('accepts a dart_style-wrapped header, member and values list', () {
      const src = '''
extension type const SubnetworkResolveSubnetMask._(TfArg<String> _)
    implements TfArg<String> {
  SubnetworkResolveSubnetMask.variable(String name)
    : this._(TfArg.variable(name));
  SubnetworkResolveSubnetMask.expression(String template)
    : this._(TfArg.expression(template));
  const SubnetworkResolveSubnetMask.arg(TfArg<String> arg) : this._(arg);

  static const arpAllRanges = SubnetworkResolveSubnetMask._(
    TfArgLiteral('ARP_ALL_RANGES'),
  );
  static const arpBroadcastPrimaryRangeWithLearning =
      SubnetworkResolveSubnetMask._(
        TfArgLiteral('ARP_BROADCAST_PRIMARY_RANGE_WITH_LEARNING'),
      );

  static const List<
    SubnetworkResolveSubnetMask
  >
  values = [arpAllRanges, arpBroadcastPrimaryRangeWithLearning];
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

    test('returns empty list for source with no enum declarations', () {
      const src = 'class Foo {}\nvoid bar() {}\nenum Plain { a, b }';
      expect(const EnumExtractor().extract(src), isEmpty);
    });

    test('extracts multiple enum declarations in one file', () {
      const src = '''
extension type const A._(TfArg<String> _) implements TfArg<String> {
  static const x = A._(TfArgLiteral('X'));

  static const List<A> values = [x];
}

extension type const B._(TfArg<String> _) implements TfArg<String> {
  static const y = B._(TfArgLiteral('Y'));
  static const z = B._(TfArgLiteral('Z'));

  static const List<B> values = [y, z];
}
''';
      final enums = const EnumExtractor().extract(src);
      expect(enums.map((e) => e.name).toSet(), equals({'A', 'B'}));
      expect(enums.firstWhere((e) => e.name == 'B').members, {
        'y': 'Y',
        'z': 'Z',
      });
    });

    test('unescapes escaped member values', () {
      const src = r'''
extension type const A._(TfArg<String> _) implements TfArg<String> {
  A.variable(String name) : this._(TfArg.variable(name));
  A.expression(String template) : this._(TfArg.expression(template));
  const A.arg(TfArg<String> arg) : this._(arg);

  static const thresholdsKey = A._(TfArgLiteral('thresholds.\$key'));
  static const quote = A._(TfArgLiteral('it\'s'));

  static const List<A> values = [thresholdsKey, quote];
}
''';
      final enums = const EnumExtractor().extract(src);
      expect(enums.single.members, {
        'thresholdsKey': r'thresholds.$key',
        'quote': "it's",
      });
    });
  });
}
