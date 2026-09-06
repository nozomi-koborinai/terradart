import 'package:terradart_codegen/src/codegen/migrate/helper_class_extractor.dart';
import 'package:test/test.dart';

const _extractor = HelperClassExtractor();

ExtractedHelper _one(String src, String name) {
  final extraction = _extractor.extract(src);
  expect(extraction.helpers, contains(name), reason: 'helper $name');
  return extraction.helpers[name]!;
}

void main() {
  group('HelperClassExtractor', () {
    test('maps named fields to their static keys (guards stripped)', () {
      const src = '''
/// Doc comment with a brace { that must be ignored.
@immutable
class PushConfig {
  const PushConfig({required this.pushEndpoint, this.attributes});

  final TfArg<String> pushEndpoint;
  final TfArg<Map<String, String>>? attributes;

  Map<String, Object?> encode() => {
    'push_endpoint': pushEndpoint.toTfJson(),
    if (attributes != null) 'attributes': attributes!.toTfJson(),
    'kind': 'constant',
  };
}
''';
      final h = _one(src, 'PushConfig');
      expect(h.isIrregular, isFalse, reason: h.irregularReason);
      expect(h.parent, isNull);
      expect(h.fields.map((f) => f.name), ['pushEndpoint', 'attributes']);
      expect(h.fields[0].tfKey, 'push_endpoint');
      expect(h.fields[0].required, isTrue);
      expect(h.fields[0].positional, isFalse);
      expect(h.fields[0].typeSource, 'TfArg<String>');
      expect(h.fields[1].tfKey, 'attributes');
      expect(h.fields[1].required, isFalse);
      expect(h.fields[1].typeSource, 'TfArg<Map<String, String>>?');
    });

    test('accepts the list-of-one and typed-literal encode forms', () {
      const src = '''
final class SparkR extends Workload {
  const SparkR({this.mainRFileUri});
  final TfArg<String>? mainRFileUri;
  @override
  String get blockKey => 'spark_r_batch';
  @override
  List<Map<String, Object?>> encode() => [
    {
      if (mainRFileUri != null) 'main_r_file_uri': mainRFileUri!.toTfJson(),
    },
  ];
}

final class Empty extends Workload {
  const Empty();
  @override
  String get blockKey => 'empty';
  @override
  List<Map<String, Object?>> encode() => const [<String, Object?>{}];
}
''';
      final spark = _one(src, 'SparkR');
      expect(spark.isIrregular, isFalse, reason: spark.irregularReason);
      expect(spark.blockKey, 'spark_r_batch');
      expect(spark.fields.single.tfKey, 'main_r_file_uri');
      final empty = _one(src, 'Empty');
      expect(empty.isIrregular, isFalse, reason: empty.irregularReason);
      expect(empty.fields, isEmpty);
    });

    test('sealed roots are recorded and variantsOf maps block keys', () {
      const src = '''
sealed class Target {
  const Target();
  String get blockKey;
  Map<String, Object?> encode();
}

final class PubsubTarget extends Target {
  const PubsubTarget({required this.topicName});
  final TfArg<String> topicName;
  @override
  String get blockKey => 'pubsub_target';
  @override
  Map<String, Object?> encode() => {'topic_name': topicName.toTfJson()};
}

final class HttpTarget extends Target {
  const HttpTarget({required this.uri});
  final TfArg<String> uri;
  @override
  String get blockKey => 'http_target';
  @override
  Map<String, Object?> encode() => {'uri': uri.toTfJson()};
}
''';
      final x = _extractor.extract(src);
      expect(x.sealedClasses, {'Target'});
      expect(x.helpers.keys, ['PubsubTarget', 'HttpTarget']);
      expect(x.helpers['PubsubTarget']!.parent, 'Target');
      expect(
        x.variantsOf('Target'),
        {'pubsub_target': 'PubsubTarget', 'http_target': 'HttpTarget'},
      );
      expect(x.variantsOf('Nope'), isNull);
    });

    test('self-wrapping variant: dotted keys and inferred block key', () {
      const src = '''
final class WeeklySchedule extends SnapshotSchedule {
  const WeeklySchedule(this.dayOfWeeks);
  final List<DayOfWeek> dayOfWeeks;
  @override
  Map<String, Object?> encode() => {
    'weekly_schedule': {
      'day_of_weeks': dayOfWeeks.map((d) => d.encode()).toList(),
    },
  };
}
''';
      final h = _one(src, 'WeeklySchedule');
      expect(h.isIrregular, isFalse, reason: h.irregularReason);
      expect(h.blockKey, 'weekly_schedule');
      expect(h.fields.single.positional, isTrue);
      expect(h.fields.single.tfKey, 'weekly_schedule.day_of_weeks');
    });

    test('inline nested map entries get dotted keys', () {
      const src = '''
class Visualization {
  const Visualization({this.plotMode, this.pointSizeType});
  final TfArg<String>? plotMode;
  final TfArg<String>? pointSizeType;
  Map<String, Object?> encode() => {
    'google_maps_config': <String, Object?>{
      if (plotMode != null) 'plot_mode': plotMode!.toTfJson(),
      if (pointSizeType != null) 'point_size_type': pointSizeType!.toTfJson(),
    },
  };
}
''';
      final h = _one(src, 'Visualization');
      expect(h.isIrregular, isFalse, reason: h.irregularReason);
      expect(
        h.fields.map((f) => f.tfKey),
        ['google_maps_config.plot_mode', 'google_maps_config.point_size_type'],
      );
    });

    test('bare blockKey / other getter keys resolve through the class', () {
      const src = '''
final class CustomCompute extends Compute {
  const CustomCompute(this.spec);
  final TfArg<Map<String, Object?>> spec;
  @override
  String get blockKey => 'custom_environment_spec';
  @override
  Map<String, Object?> encode() => {blockKey: [spec.toTfJson()]};
}

final class Local extends Plane {
  const Local({this.nodeCount});
  final TfArg<int>? nodeCount;
  @override
  String get planeKey => 'local';
  @override
  List<Map<String, Object?>> encode() => [
    {
      planeKey: [
        {if (nodeCount != null) 'node_count': nodeCount!.toTfJson()},
      ],
    },
  ];
}
''';
      final custom = _one(src, 'CustomCompute');
      expect(custom.isIrregular, isFalse, reason: custom.irregularReason);
      expect(custom.fields.single.tfKey, 'custom_environment_spec');
      final local = _one(src, 'Local');
      expect(local.isIrregular, isFalse, reason: local.irregularReason);
      expect(local.blockKey, 'local');
      expect(local.fields.single.tfKey, 'local.node_count');
    });

    test('scalar sealed variants: value field / value getter / slotValue', () {
      const src = '''
final class GatewayNextHop extends NextHop {
  const GatewayNextHop({required this.nextHopGateway});
  final TfArg<String> nextHopGateway;
  @override
  String get blockKey => 'next_hop_gateway';
  @override
  TfArg<String> get value => nextHopGateway;
}

final class Matcher extends Match {
  const Matcher(this.value);
  @override
  final TfArg<String> value;
  @override
  String get blockKey => 'matcher';
}

final class IlbIp extends NextHop {
  const IlbIp(TfArg<String> ip) : value = ip;
  @override
  final TfArg<dynamic> value;
  @override
  String get blockKey => 'next_hop_ilb_ip';
}

final class InlineBuild extends BuildSpec {
  const InlineBuild({required this.build});
  final Build build;
  @override
  String get blockKey => 'build';
  @override
  TfArg<dynamic> get slotValue => TfArg.literal([build.toArgMap()]);
}
''';
      final gateway = _one(src, 'GatewayNextHop');
      expect(gateway.isIrregular, isFalse, reason: gateway.irregularReason);
      expect(gateway.fields.single.tfKey, 'next_hop_gateway');
      final matcher = _one(src, 'Matcher');
      expect(matcher.isIrregular, isFalse, reason: matcher.irregularReason);
      expect(matcher.fields.single.name, 'value');
      expect(matcher.fields.single.tfKey, 'matcher');
      final ilb = _one(src, 'IlbIp');
      expect(ilb.isIrregular, isFalse, reason: ilb.irregularReason);
      expect(ilb.fields.single.name, 'ip');
      expect(ilb.fields.single.typeSource, 'TfArg<String>');
      expect(ilb.fields.single.tfKey, 'next_hop_ilb_ip');
      expect(ilb.fields.single.positional, isTrue);
      final inline = _one(src, 'InlineBuild');
      expect(inline.isIrregular, isFalse, reason: inline.irregularReason);
      expect(inline.fields.single.tfKey, 'build');
    });

    test('super parameters resolve against the parent class fields', () {
      const src = '''
sealed class Access {
  const Access({this.condition});
  final Condition? condition;
}

final class Domain extends Access {
  const Domain({required this.domain, this.role, super.condition});
  final TfArg<String> domain;
  final TfArg<String>? role;
  @override
  Map<String, Object?> encode() => {
    'domain': domain.toTfJson(),
    if (role != null) 'role': role!.toTfJson(),
    if (condition != null) 'condition': [condition!.encode()],
  };
}

final class View extends Access {
  const View({required this.view, super.condition});
  final Condition view;
  @override
  Map<String, Object?> encode() => {
    'view': view.encode(),
    if (condition != null) 'condition': [condition!.encode()],
  };
}
''';
      final domain = _one(src, 'Domain');
      expect(domain.isIrregular, isFalse, reason: domain.irregularReason);
      expect(domain.fields.map((f) => f.name), ['domain', 'role', 'condition']);
      expect(domain.fields[2].typeSource, 'Condition?');
      expect(domain.fields[2].tfKey, 'condition');
      // Multi-key variants without a getter: the required key no sibling
      // writes is the discriminator.
      expect(domain.blockKey, 'domain');
      expect(_one(src, 'View').blockKey, 'view');
    });

    test('a variant with one constant string getter uses it as the key', () {
      const src = '''
final class Basic extends Tier {
  const Basic();
  @override
  String get tierKey => 'basic';
}
''';
      expect(_one(src, 'Basic').blockKey, 'basic');
    });

    test('spread entries mark the field merged', () {
      const src = '''
class Volume {
  const Volume({required this.name, required this.source, this.extra});
  final TfArg<String> name;
  final VolumeSource source;
  final Map<String, Object?>? extra;
  Map<String, Object?> toArgMap() => {
    'name': name.toTfJson(),
    ...source.encode(),
    if (extra != null) ...extra!,
  };
}
''';
      final h = _one(src, 'Volume');
      expect(h.isIrregular, isFalse, reason: h.irregularReason);
      expect(h.fields[1].merged, isTrue);
      expect(h.fields[1].tfKey, isNull);
      expect(h.fields[2].merged, isTrue);
    });

    test('annotations with parenthesised strings are stripped', () {
      const src = '''
class Spanner {
  const Spanner({
    @Deprecated('Use x (see docs) for new workloads.')
    this.useServerlessAnalytics,
  });
  final TfArg<bool>? useServerlessAnalytics;
  Map<String, Object?> encode() => {
    if (useServerlessAnalytics != null)
      'use_serverless_analytics': useServerlessAnalytics!.toTfJson(),
  };
}
''';
      final h = _one(src, 'Spanner');
      expect(h.isIrregular, isFalse, reason: h.irregularReason);
      expect(h.fields.single.tfKey, 'use_serverless_analytics');
    });

    test('irregular shapes are reported, never guessed', () {
      const src = '''
class Fanout {
  const Fanout({required this.protocol, this.additionalRules});
  final TfArg<String> protocol;
  final List<Fanout>? additionalRules;
  List<Map<String, Object?>> encode() => [
    {'protocol': protocol.toTfJson()},
    ...?additionalRules?.map((r) => r.encode().single),
  ];
}

class Combined {
  const Combined({this.images, this.objects});
  final TfArg<List<String>>? images;
  final TfArg<List<String>>? objects;
  Map<String, Object?> encode() => {
    'artifacts': [images, objects],
  };
}

class Discriminant {
  const Discriminant({this.arrayContains = false});
  final bool arrayContains;
  Map<String, Object?> encode() => {
    if (arrayContains) 'array_config': 'CONTAINS',
  };
}

class NoEncode {
  const NoEncode({required this.x});
  final TfArg<String> x;
}
''';
      expect(
        _one(src, 'Fanout').irregularReason,
        contains('list with more than one map'),
      );
      expect(
        _one(src, 'Combined').irregularReason,
        contains("entry 'artifacts' combines fields images, objects"),
      );
      expect(
        _one(src, 'Discriminant').irregularReason,
        contains('field `arrayContains` has no encode entry'),
      );
      expect(
        _one(src, 'NoEncode').irregularReason,
        contains('no encode()/toArgMap() method'),
      );
    });

    test('skips Resource / Data subclasses', () {
      const src = '''
final class GoogleThing extends Resource {
  GoogleThing({required super.localName}) : super(terraformType: 'x');
}
final class DataGoogleThing extends Data {
  DataGoogleThing({required super.localName}) : super(terraformType: 'x');
}
''';
      expect(_extractor.extract(src).helpers, isEmpty);
    });

    test('merge() unions files, first declaration wins', () {
      final a = _extractor.extract('''
class Shared {
  const Shared({this.x});
  final TfArg<String>? x;
  Map<String, Object?> encode() => {if (x != null) 'x': x!.toTfJson()};
}
sealed class S {}
''');
      final b = _extractor.extract('''
class Other {
  const Other({this.y});
  final TfArg<String>? y;
  Map<String, Object?> encode() => {if (y != null) 'y': y!.toTfJson()};
}
''');
      final merged = HelperExtraction.merge([a, b]);
      expect(merged.helpers.keys, ['Shared', 'Other']);
      expect(merged.sealedClasses, {'S'});
    });
  });
}
