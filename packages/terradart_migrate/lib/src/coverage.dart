/// `terradart-migrate --report`: what migrating a tree would translate, per
/// Terraform type, without writing a file.
library;

import 'dart:convert';

import 'package:terradart_hcl/terradart_hcl.dart' show TfModule;

import 'manifests.dart';
import 'migrate_manifest.dart';
import 'project.dart';
import 'version.dart';

/// One `resource` or `data` type of the scanned tree.
final class TypeCoverage {
  TypeCoverage._(this.type, this.kind, this.factory);

  /// `google_pubsub_topic`.
  final String type;

  /// Whether [type] is a resource or a data source type.
  final CatalogKind kind;

  /// The curated factory for [type], or `null` when no TerraDart catalog
  /// has one.
  final ({String className, String package, String barrel})? factory;

  /// Resources that become Dart: one per instance of an unrolled
  /// `count` / `for_each` block.
  int translated = 0;

  /// Blocks that stay in Terraform, each counted once.
  int kept = 0;

  /// True when some TerraDart catalog curates [type].
  bool get inCatalog => factory != null;

  /// [translated] plus [kept].
  int get count => translated + kept;

  /// This type's row of the JSON report.
  Map<String, Object?> toJson() => {
    'type': type,
    'kind': _kindName(kind),
    'count': count,
    'translated': translated,
    'kept': kept,
    'inCatalog': inCatalog,
    if (factory case final f?) ...{
      'className': f.className,
      'package': f.package,
      'barrel': f.barrel,
    },
  };
}

/// One module directory's share of a [MigrationCoverage].
final class DirectoryCoverage {
  DirectoryCoverage._(this.directory, {required this.isRoot});

  /// Relative to the scanned directory (`.` for the directory itself).
  final String directory;

  /// True for a root module, false for a child module.
  final bool isRoot;

  /// Resources and data sources in this directory that become Dart.
  int translated = 0;

  /// Resources and data sources in this directory that stay in Terraform.
  int kept = 0;

  /// This directory's row of the JSON report.
  Map<String, Object?> toJson() => {
    'directory': directory,
    'role': isRoot ? 'root' : 'child',
    'translated': translated,
    'kept': kept,
  };
}

/// A block that stays in Terraform, where it is, and why.
typedef KeptBlock = ({String directory, String address, String reason});

/// A `module` call whose source is not a directory of the scanned tree (a
/// registry or git module, or a path outside it): the resources inside it
/// are not counted.
typedef UnscannedModule = ({String directory, String name, String source});

/// The `--report` view of a [MigratedProject]: every `resource` and `data`
/// block of the tree grouped by type, with how many translate, how many stay
/// in Terraform (and why), and which types no catalog curates.
///
/// A child module is counted once, however many times it is called. An
/// unrolled `count` / `for_each` block counts once per instance; one that
/// stays in Terraform counts once.
final class MigrationCoverage {
  MigrationCoverage._({
    required this.input,
    required this.types,
    required this.directories,
    required this.kept,
    required this.unscanned,
  });

  /// Counts every `resource` and `data` block of [project].
  factory MigrationCoverage.of(MigratedProject project) {
    final types = <(String, CatalogKind), TypeCoverage>{};
    final directories = <DirectoryCoverage>[];
    final kept = <KeptBlock>[];
    final unscanned = <UnscannedModule>[];
    for (final m in project.modules) {
      final dir = DirectoryCoverage._(m.dir.relPath, isRoot: m.dir.isRoot);
      directories.add(dir);
      final report = m.report;
      final instances = {
        for (final e in report.expanded) e.address: e.instances.length,
      };
      final reasons = {for (final k in report.kept) k.address: k.reason};
      for (final k in report.kept) {
        kept.add((
          directory: m.dir.relPath,
          address: k.address,
          reason: k.reason,
        ));
      }
      void count(String type, CatalogKind kind, String address) {
        final t = types.putIfAbsent((
          type,
          kind,
        ), () => TypeCoverage._(type, kind, _factoryFor(type, kind)));
        if (reasons.containsKey(address)) {
          t.kept++;
          dir.kept++;
        } else {
          final n = instances[address] ?? 1;
          t.translated += n;
          dir.translated += n;
        }
      }

      final module = m.dir.module;
      for (final r in module.resources) {
        count(r.type, CatalogKind.resource, r.address);
      }
      for (final d in module.dataSources) {
        count(d.type, CatalogKind.dataSource, d.address);
      }
      unscanned.addAll(_unscanned(m.dir.relPath, module, m.dir.calls));
    }
    final sorted = types.values.toList()
      ..sort((a, b) {
        final byCount = b.count.compareTo(a.count);
        return byCount != 0 ? byCount : a.type.compareTo(b.type);
      });
    return MigrationCoverage._(
      input: project.inputPath,
      types: sorted,
      directories: directories,
      kept: kept,
      unscanned: unscanned,
    );
  }

  /// The scanned directory, as the caller named it.
  final String input;

  /// Most blocks first.
  final List<TypeCoverage> types;

  /// One entry per module directory, in tree order.
  final List<DirectoryCoverage> directories;

  /// Every block that stays in Terraform — `resource` and `data` blocks, and
  /// the providers, variables, backends and so on that a Stack cannot hold.
  final List<KeptBlock> kept;

  /// `module` calls whose resources were not counted.
  final List<UnscannedModule> unscanned;

  /// Resource and data blocks counted, over every type.
  int get total => types.fold(0, (n, t) => n + t.count);

  /// Resource and data blocks that become Dart, over every type.
  int get translated => types.fold(0, (n, t) => n + t.translated);

  /// How many of [types] some TerraDart catalog curates.
  int get curatedTypes => types.where((t) => t.inCatalog).length;

  static int _pct(int part, int whole) =>
      whole == 0 ? 0 : (part * 100 / whole).round();

  /// The report as JSON (`--report --json`).
  Map<String, Object?> toJson() => {
    'version': packageVersion,
    'input': input,
    'summary': {
      'types': types.length,
      'curatedTypes': curatedTypes,
      'blocks': total,
      'translated': translated,
      'kept': total - translated,
      'translatedPct': _pct(translated, total),
    },
    'types': [for (final t in types) t.toJson()],
    'directories': [for (final d in directories) d.toJson()],
    'kept': [
      for (final k in kept)
        {'directory': k.directory, 'address': k.address, 'reason': k.reason},
    ],
    'unscanned': [
      for (final u in unscanned)
        {'directory': u.directory, 'module': u.name, 'source': u.source},
    ],
  };

  /// [toJson], indented.
  String renderJson() => const JsonEncoder.withIndent('  ').convert(toJson());

  /// The report as the human-readable text `--report` prints.
  String renderText() {
    final b = StringBuffer()
      ..writeln('terradart migrate $packageVersion --report: $input')
      ..writeln(
        '  $translated of $total resource and data blocks translate '
        '(${_pct(translated, total)}%); $curatedTypes of ${types.length} '
        'types have a curated factory. Nothing was written.',
      );
    if (types.isNotEmpty) {
      b
        ..writeln()
        ..writeln('Types (${types.length}):');
      for (final t in types) {
        final what = t.factory == null
            ? 'not in any catalog'
            : [
                if (t.translated > 0) '${t.translated} translate',
                if (t.kept > 0) '${t.kept} kept',
              ].join(', ');
        final target = switch (t.factory) {
          final f? => ' -> ${f.className} (${f.package}/${f.barrel})',
          null => '',
        };
        b.writeln(
          '  ${t.type} [${_kindName(t.kind)}] x${t.count}: $what$target',
        );
      }
    }
    b
      ..writeln()
      ..writeln('By directory:');
    for (final d in directories) {
      b.writeln(
        '  ${d.directory} (${d.isRoot ? 'root' : 'child'}): '
        '${d.translated} translate, ${d.kept} kept',
      );
    }
    if (kept.isNotEmpty) {
      b
        ..writeln()
        ..writeln('Kept in Terraform (${kept.length}):');
      for (final k in kept) {
        b.writeln('  ${k.directory}: ${k.address}: ${k.reason}');
      }
    }
    if (unscanned.isNotEmpty) {
      b
        ..writeln()
        ..writeln('Not scanned (${unscanned.length}):');
      for (final u in unscanned) {
        b.writeln(
          '  ${u.directory}: module "${u.name}" (source: ${u.source}) — '
          'its resources are not counted',
        );
      }
    }
    b
      ..writeln()
      ..writeln('Next: terradart migrate --dir $input --out <package dir>');
    return b.toString();
  }
}

({String className, String package, String barrel})? _factoryFor(
  String type,
  CatalogKind kind,
) {
  final hit = findMigrateEntry(type, kind);
  if (hit == null) return null;
  return (
    className: hit.entry.className,
    package: hit.manifest.package,
    barrel: hit.entry.barrel,
  );
}

Iterable<UnscannedModule> _unscanned(
  String directory,
  TfModule module,
  Map<String, String> localCalls,
) sync* {
  for (final call in module.moduleCalls) {
    if (localCalls.containsKey(call.name)) continue;
    yield (
      directory: directory,
      name: call.name,
      source: switch (call.source) {
        null => '(none)',
        final s => s.constantString ?? '(not a literal)',
      },
    );
  }
}

String _kindName(CatalogKind k) =>
    k == CatalogKind.dataSource ? 'data' : 'resource';
