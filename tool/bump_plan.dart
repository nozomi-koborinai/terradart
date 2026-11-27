// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';

import 'wrap_lanes.dart';

const _exitUsage = 64;

enum Weekday {
  sunday('Sunday'),
  monday('Monday'),
  tuesday('Tuesday'),
  wednesday('Wednesday'),
  thursday('Thursday'),
  friday('Friday'),
  saturday('Saturday');

  const Weekday(this.label);

  final String label;

  static Weekday parseCron(String cron) {
    final fields = cron.trim().split(RegExp(r'\s+'));
    final day = fields.length == 5 ? int.tryParse(fields.last) : null;
    if (day == null || day < 0 || day > 7) {
      throw const FormatException(
        'bump.cron must run on one weekday (day field 0-7)',
      );
    }
    return Weekday.values[day % 7];
  }
}

@immutable
class BumpLane {
  const BumpLane({
    required this.lane,
    required this.mode,
    required this.cron,
    required this.refresh,
    required this.scaffold,
    required this.dataSources,
    required this.rideAlong,
    required this.exampleGenerator,
    required this.exampleCovers,
    required this.mm,
  });

  final WrapLane lane;
  final String mode;
  final String cron;

  Weekday get weekday => Weekday.parseCron(cron);

  final String refresh;
  final String scaffold;
  final bool dataSources;
  final WrapLane? rideAlong;
  final String? exampleGenerator;
  final Set<String> exampleCovers;
  final bool mm;

  Map<String, Object> toMatrix() => {
    'lane': lane.name,
    'mode': mode,
    'source': lane.source,
    'refresh': refresh,
    'scaffold': scaffold,
    'overrides_root': lane.overridesRoot,
    'schema_dir': lane.schemaDir,
    'package': lane.outputPackage,
    'catalog': p.join(lane.outputPackage, 'lib', 'src', '_catalog.g.dart'),
    'manifest': lane.migrateManifest,
    'mm': mm,
    'data_sources': dataSources,
    'api_lanes': [lane.name, if (rideAlong case final r?) r.name].join(','),
    'ride_along': rideAlong?.name ?? '',
    'ride_along_source': rideAlong?.source ?? '',
    'ride_along_schema_dir': rideAlong?.schemaDir ?? '',
    'ride_along_package': rideAlong?.outputPackage ?? '',
    'ride_along_manifest': rideAlong?.migrateManifest ?? '',
    'example_generator': exampleGenerator ?? '',
  };
}

List<BumpLane> parseBumpLanes(String providersYaml) {
  final lanes = {
    for (final lane in parseWrapLanes(providersYaml)) lane.name: lane,
  };
  final providers =
      (loadYaml(providersYaml) as YamlMap)['providers'] as YamlMap;
  final out = <BumpLane>[];
  for (final MapEntry(:key, :value) in providers.entries) {
    final name = '$key';
    final entry = value as YamlMap;
    final bump = entry['bump'];
    if (bump == null) continue;
    if (bump is! YamlMap) {
      throw FormatException('lane $name: bump is not a map');
    }
    String field(String k, {Set<String>? oneOf}) {
      final v = bump[k];
      if (v is String && v.isNotEmpty && (oneOf == null || oneOf.contains(v))) {
        return v;
      }
      throw FormatException(
        'lane $name: bump.$k must be '
        '${oneOf == null ? 'a string' : 'one of ${oneOf.join(', ')}'}',
      );
    }

    final cron = field('cron');
    try {
      Weekday.parseCron(cron);
    } on FormatException catch (e) {
      throw FormatException('lane $name: ${e.message}');
    }
    final rideAlongName = bump['rideAlong'];
    final rideAlong = rideAlongName == null ? null : lanes['$rideAlongName'];
    if (rideAlongName != null && rideAlong == null) {
      throw FormatException('lane $name: bump.rideAlong names no lane');
    }
    final generator = bump['exampleGenerator'];
    if (generator != null && generator is! String) {
      throw FormatException('lane $name: bump.exampleGenerator not a path');
    }
    final covers = bump['exampleCovers'];
    if (covers != null && generator == null) {
      throw FormatException(
        'lane $name: bump.exampleCovers needs bump.exampleGenerator',
      );
    }
    final coveredKinds = switch (covers ?? 'all') {
      _ when generator == null => const <String>{},
      'all' => const {'resource', 'dataSource'},
      'dataSources' => const {'dataSource'},
      _ => throw FormatException(
        'lane $name: bump.exampleCovers must be one of all, dataSources',
      ),
    };
    out.add(
      BumpLane(
        lane: lanes[name]!,
        mode: field('mode', oneOf: {'auto', 'pr-only'}),
        cron: cron,
        refresh: field('refresh', oneOf: {'dump', 'extract'}),
        scaffold: field('scaffold', oneOf: {'wrap-init', 'lane'}),
        dataSources: bump['dataSources'] == true,
        rideAlong: rideAlong,
        exampleGenerator: generator as String?,
        exampleCovers: coveredKinds,
        mm: entry['mm'] == true,
      ),
    );
  }
  return out;
}

@visibleForTesting
List<BumpLane> planLanes(
  List<BumpLane> lanes, {
  String? schedule,
  String? lane,
}) {
  if (schedule != null) {
    return [
      for (final l in lanes)
        if (l.cron == schedule) l,
    ];
  }
  if (lane == 'all') return lanes;
  final match = lanes.where((l) => l.lane.name == lane).toList();
  if (match.isEmpty) {
    throw FormatException(
      'no bump lane "$lane" (known: '
      '${lanes.map((l) => l.lane.name).join(', ')}, all)',
    );
  }
  return match;
}

void main(List<String> args) {
  String? schedule;
  String? lane;
  for (final a in args) {
    if (a.startsWith('--schedule=')) {
      schedule = a.substring('--schedule='.length);
    } else if (a.startsWith('--lane=')) {
      lane = a.substring('--lane='.length);
    }
  }
  if ((schedule == null || schedule.isEmpty) == (lane == null)) {
    stderr.writeln(
      'usage: dart tool/bump_plan.dart --schedule=<cron> | --lane=<name|all>',
    );
    exit(_exitUsage);
  }
  try {
    final lanes = planLanes(
      parseBumpLanes(File(providersPath).readAsStringSync()),
      schedule: lane == null ? schedule : null,
      lane: lane,
    );
    print(jsonEncode([for (final l in lanes) l.toMatrix()]));
  } on FormatException catch (e) {
    stderr.writeln('bump_plan: ${e.message}');
    exit(_exitUsage);
  }
}
