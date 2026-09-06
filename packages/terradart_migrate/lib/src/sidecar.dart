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

/// [entry] as written in [file], with the comments directly above it and a
/// trailing comment, or re-rendered with [HclWriter] when the file is JSON
/// (or the node has no source range). [level] indents the first line for
/// nesting; continuation lines keep the indentation they had.
String verbatimEntry(HclFile file, BodyEntry entry, {int level = 0}) {
  if (file.isJson || entry.range.isNone) {
    return const HclWriter().writeEntry(entry, level: level).trimRight();
  }
  var range = entry.range;
  for (final c in entry.leadingComments) {
    range = range.union(c.range);
  }
  final trailing = switch (entry) {
    Attribute(:final trailingComment) => trailingComment,
    Block(:final trailingComment) => trailingComment,
  };
  if (trailing != null) range = range.union(trailing.range);
  final text = range.textIn(file.source).trimRight();
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

  void _put(String file, String address, String text) {
    final reason = kept[address];
    _chunks
        .putIfAbsent(file, () => [])
        .add(reason == null ? text : '# terradart-migrate: $reason\n$text');
    _placements[address] = file;
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
    final seen = <Block>{};
    for (final l in module.locals) {
      if (!seen.add(l.block)) continue;
      _put(localsFileName, 'local.${l.name}', verbatimEntry(l.file, l.block));
      for (final other in module.locals) {
        if (identical(other.block, l.block)) {
          _placements['local.${other.name}'] = localsFileName;
        }
      }
    }
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
