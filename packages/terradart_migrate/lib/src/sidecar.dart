/// The leftover sidecar: every block the Stack did not take, verbatim, in
/// the Terraform files that conventionally hold it.
///
/// Terraform merges every file of a directory, so the Stack's `main.tf.json`
/// and these files form one module again. The sidecar never carries what the
/// Stack owns — `required_providers` of the providers it registers, the
/// provider configurations it translated, the backend it typed, variables
/// that became `addVariable` — because Terraform rejects those twice.
library;

import 'package:terradart_hcl/terradart_hcl.dart';

import 'emit/expand.dart';
import 'report.dart';

/// Resources, data sources, module calls, `moved` and friends, provider
/// configurations and anything else that stays in Terraform.
const leftoverFileName = 'terradart_leftover.tf';

/// `terraform { }` settings the Stack does not own: a backend it could not
/// type, `cloud`, and the `required_providers` of providers it does not
/// register.
const backendFileName = 'backend.tf';

/// `variable` blocks that stay in Terraform (declared external in the Stack).
const variablesFileName = 'variables.tf';

/// Every `locals` block.
const localsFileName = 'locals.tf';

/// `output` blocks that did not become exports.
const outputsFileName = 'outputs.tf';

/// One module's sidecar files.
final class Sidecar {
  const Sidecar({required this.files, required this.placements});

  /// File name → content, for the directory the Stack synthesizes into.
  final Map<String, String> files;

  /// Kept address → the file its block landed in.
  final Map<String, String> placements;

  bool get isEmpty => files.isEmpty;
}

/// Builds the sidecar of [module] from what [report] kept.
Sidecar buildSidecar(
  TfModule module,
  MigrationReport report, {
  required String version,
}) => _SidecarBuilder(module, report, version).build();

/// The full source range of [entry]: the entry itself, the comments
/// directly above it and its trailing comment.
SourceRange entryRange(BodyEntry entry) {
  var range = entry.range;
  for (final c in entry.leadingComments) {
    range = range.union(c.range);
  }
  final trailing = switch (entry) {
    Attribute(:final trailingComment) => trailingComment,
    Block(:final trailingComment) => trailingComment,
  };
  return trailing == null ? range : range.union(trailing.range);
}

/// [entry] as written in [file], with the comments directly above it and a
/// trailing comment, or re-rendered with [HclWriter] when the file is JSON
/// (or the node has no source range). [level] indents the first line for
/// nesting; continuation lines keep the indentation they had.
String verbatimEntry(HclFile file, BodyEntry entry, {int level = 0}) {
  if (file.isJson || entry.range.isNone) {
    return const HclWriter().writeEntry(entry, level: level).trimRight();
  }
  final text = entryRange(entry).textIn(file.source).trimRight();
  return level == 0 ? text : '${'  ' * level}$text';
}

final class _SidecarBuilder {
  _SidecarBuilder(this.module, this.report, this.version)
    : kept = {for (final k in report.kept) k.address: k.reason};

  final TfModule module;
  final MigrationReport report;
  final String version;
  final Map<String, String> kept;
  final _chunks = <String, List<String>>{};
  final _placements = <String, String>{};

  /// Points references at the instances the Stack unrolled a `count` /
  /// `for_each` block into (`google_x.y[0]` → `google_x.y_0`); the block as
  /// written no longer exists in the directory.
  late final _rewriter = ReferenceRewriter(report.expanded);

  void _put(String file, String address, String text) {
    final reason = kept[address];
    final pointed = _pointAtInstances(text);
    final body = pointed.rewritten
        ? '# terradart-migrate: $_instancesMoved\n${pointed.text}'
        : pointed.text;
    _chunks
        .putIfAbsent(file, () => [])
        .add(reason == null ? body : '# terradart-migrate: $reason\n$body');
    _placements[address] = file;
  }

  static const _instancesMoved =
      'references to instances of an unrolled count / for_each block point '
      'at the new addresses';

  /// [text] with every reference to an instance of an unrolled block
  /// pointed at the address that instance became.
  ///
  /// Everything the sidecar writes goes through this: a block the migration
  /// kept still names `google_x.y[0]`, and that resource no longer exists —
  /// the Stack declares `google_x.y_0`.
  ({String text, bool rewritten}) _pointAtInstances(String text) {
    if (_rewriter.isEmpty) return (text: text, rewritten: false);
    final out = _rewriter.text(text, strict: false);
    return (text: out, rewritten: out != text);
  }

  Sidecar build() {
    for (final r in module.resources) {
      if (kept.containsKey(r.address)) {
        _put(leftoverFileName, r.address, verbatimEntry(r.file, r.block));
      }
    }
    for (final d in module.dataSources) {
      if (kept.containsKey(d.address)) {
        _put(leftoverFileName, d.address, verbatimEntry(d.file, d.block));
      }
    }
    for (final m in module.moduleCalls) {
      final address = 'module.${m.name}';
      if (kept.containsKey(address)) {
        _put(leftoverFileName, address, verbatimEntry(m.file, m.block));
      }
    }
    for (final o in module.opaque) {
      final labels = o.block.labels.map((l) => '.${l.text}').join();
      final address = '${o.type}$labels';
      if (kept.containsKey(address)) {
        _put(leftoverFileName, address, verbatimEntry(o.file, o.block));
      }
    }
    for (final p in module.providers) {
      final address = p.alias == null
          ? 'provider.${p.name}'
          : 'provider.${p.name}.${p.alias}';
      if (kept.containsKey(address)) {
        _put(leftoverFileName, address, verbatimEntry(p.file, p.block));
      }
    }
    for (final a in module.strayAttributes) {
      if (kept.containsKey(a.name)) {
        _put(
          leftoverFileName,
          a.name,
          const HclWriter().writeEntry(a).trimRight(),
        );
      }
    }

    _terraformSettings();

    for (final v in module.variables) {
      final address = 'variable.${v.name}';
      if (kept.containsKey(address)) {
        _put(variablesFileName, address, verbatimEntry(v.file, v.block));
      }
    }
    _locals();
    for (final o in module.outputs) {
      final address = 'output.${o.name}';
      if (kept.containsKey(address)) {
        _put(outputsFileName, address, verbatimEntry(o.file, o.block));
      }
    }

    return Sidecar(
      files: {for (final e in _chunks.entries) e.key: _render(e.value)},
      placements: Map.unmodifiable(_placements),
    );
  }

  /// The `locals` blocks, holding the entries that stay in Terraform.
  ///
  /// A block every entry of which is kept is copied as written; once
  /// `--inline-locals` has taken some of them into the Stack, what is left
  /// is re-rendered around the entries that remain, so the sidecar defines
  /// exactly the locals something still reads.
  void _locals() {
    final seen = <Block>{};
    for (final l in module.locals) {
      if (!seen.add(l.block)) continue;
      final entries = [
        for (final other in module.locals)
          if (identical(other.block, l.block) &&
              kept.containsKey('local.${other.name}'))
            other,
      ];
      if (entries.isEmpty) continue;
      if (entries.length == l.block.body.entries.length) {
        // Every entry stays: the block is the user's, as written.
        _put(
          localsFileName,
          'local.${entries.first.name}',
          verbatimEntry(l.file, l.block),
        );
      } else {
        // Some entries became Dart, so the block is rebuilt around what is
        // left, each entry over the reason it stayed — and each pointed at
        // the unrolled instances, as `_put` would have done for a whole one.
        final lines = <String>['locals {'];
        var moved = false;
        for (final e in entries) {
          final pointed = _pointAtInstances(
            verbatimEntry(e.file, e.attribute, level: 1),
          );
          moved = moved || pointed.rewritten;
          lines
            ..add('  # terradart-migrate: ${kept['local.${e.name}']}')
            ..add(pointed.text);
        }
        lines.add('}');
        _chunks
            .putIfAbsent(localsFileName, () => [])
            .add(
              moved
                  ? '# terradart-migrate: $_instancesMoved\n${lines.join('\n')}'
                  : lines.join('\n'),
            );
      }
      for (final e in entries) {
        _placements['local.${e.name}'] = localsFileName;
      }
    }
  }

  /// One `terraform { }` block holding the settings the Stack does not own.
  void _terraformSettings() {
    final entries = <String>[];
    final providerEntries = <String>[];
    for (final t in module.terraform) {
      for (final entry in t.body.entries) {
        final key = switch (entry) {
          Attribute(:final name) => name,
          Block(:final type) => type,
        };
        if (key == 'required_providers') {
          final nested = t.nestedBody('required_providers');
          if (nested == null) continue;
          for (final attr in nested.attributes) {
            if (report.providers.contains(attr.name)) continue;
            final reason =
                kept['provider.${attr.name}'] ??
                'provider "${attr.name}" is not registered by the Stack';
            providerEntries.add(
              '    # terradart-migrate: $reason\n'
              '${verbatimEntry(t.file, attr, level: 2)}',
            );
            _placements['terraform.required_providers.${attr.name}'] =
                backendFileName;
            // A kept provider with no `provider` block lives here alone.
            _placements.putIfAbsent(
              'provider.${attr.name}',
              () => backendFileName,
            );
          }
          continue;
        }
        final address = 'terraform.$key';
        final reason = kept[address];
        if (reason == null) continue;
        // A JSON backend / cloud setting is an attribute; render the block
        // form Terraform expects in HCL.
        BodyEntry node = entry;
        if (entry is Attribute && key == 'backend') node = t.backend ?? entry;
        if (entry is Attribute && key == 'cloud') node = t.cloud ?? entry;
        entries.add(
          '  # terradart-migrate: $reason\n'
          '${verbatimEntry(t.file, node, level: 1)}',
        );
        _placements[address] = backendFileName;
      }
    }
    if (entries.isEmpty && providerEntries.isEmpty) return;
    final buf = StringBuffer('terraform {\n');
    buf.writeAll(entries, '\n\n');
    if (providerEntries.isNotEmpty) {
      if (entries.isNotEmpty) buf.write('\n\n');
      buf.write('  required_providers {\n');
      buf.writeAll(providerEntries, '\n');
      buf.write('\n  }');
    }
    buf.write('\n}');
    _chunks.putIfAbsent(backendFileName, () => []).add(buf.toString());
  }

  String _render(List<String> chunks) {
    final b = StringBuffer()
      ..writeln('# Kept in Terraform by terradart-migrate $version.')
      ..writeln(
        "# Terraform merges this file with the Stack's main.tf.json in this",
      )
      ..writeln('# directory; each block stays here for the reason noted above')
      ..writeln('# it (see MIGRATION.md).')
      ..writeln();
    b.writeAll(chunks, '\n\n');
    b.writeln();
    return b.toString();
  }
}
