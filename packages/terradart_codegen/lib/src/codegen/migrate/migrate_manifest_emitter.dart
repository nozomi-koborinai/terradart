import 'migrate_manifest_data.dart';

/// Renders `_migrate_manifest.g.dart`: a single `const MigrateManifest
/// terradartMigrateManifest` built from the per-factory [MigrateEntryBuild]s
/// `terradart wrap --migrate-manifest` collects.
///
/// Output is deterministic regardless of input order: entries sort by
/// `tfType` (resource before dataSource twin), helper and enum tables by
/// name. Helper / enum names are unique per package (a universal invariant
/// of the generated wrappers); a name that reaches this emitter twice with
/// different content is a generator bug and throws rather than emitting a
/// manifest that silently picks one.
///
/// Like `CatalogMetadataEmitter`, the returned source is unformatted; the
/// wrap pipeline runs it through the same `DartFormatter` as the wrappers.
class MigrateManifestEmitter {
  String emit(List<MigrateEntryBuild> builds) {
    final entries = [for (final b in builds) b.entry]..sort((a, b) {
        final byType = a.tfType.compareTo(b.tfType);
        if (byType != 0) return byType;
        return _kindRank(a.kind).compareTo(_kindRank(b.kind));
      });
    final helpers = <String, String>{};
    final enums = <String, String>{};
    for (final b in builds) {
      for (final h in b.helpers) {
        _put(helpers, h.className, _helper(h), what: 'helper');
      }
      for (final e in b.enums) {
        _put(enums, e.name, _enum(e), what: 'enum');
      }
    }
    final helperNames = helpers.keys.toList()..sort();
    final enumNames = enums.keys.toList()..sort();

    final buf = StringBuffer()
      ..writeln('// GENERATED FILE - DO NOT EDIT')
      ..writeln('// Run `terradart wrap --migrate-manifest` to regenerate.')
      ..writeln("import 'catalog_entry.dart';")
      ..writeln("import 'migrate_manifest_entry.dart';")
      ..writeln()
      ..writeln(
          'const MigrateManifest terradartMigrateManifest = MigrateManifest(')
      ..writeln('  entries: <MigrateEntry>[');
    for (final e in entries) {
      buf.write(_entry(e));
    }
    buf
      ..writeln('  ],')
      ..writeln('  helpers: <String, MigrateHelper>{');
    for (final name in helperNames) {
      buf.writeln('    ${_str(name)}: ${helpers[name]},');
    }
    buf
      ..writeln('  },')
      ..writeln('  enums: <String, MigrateEnum>{');
    for (final name in enumNames) {
      buf.writeln('    ${_str(name)}: ${enums[name]},');
    }
    buf
      ..writeln('  },')
      ..writeln(');');
    return buf.toString();
  }

  static void _put(
    Map<String, String> table,
    String name,
    String rendered, {
    required String what,
  }) {
    final existing = table[name];
    if (existing != null && existing != rendered) {
      throw StateError(
        'MigrateManifestEmitter: $what "$name" is declared twice with '
        'different shapes.',
      );
    }
    table[name] = rendered;
  }

  static int _kindRank(String kind) => kind == 'resource' ? 0 : 1;

  String _entry(MigrateEntryData e) {
    final buf = StringBuffer()
      ..writeln('    MigrateEntry(')
      ..writeln('      tfType: ${_str(e.tfType)},')
      ..writeln('      className: ${_str(e.className)},')
      ..writeln('      barrel: ${_str(e.barrel)},')
      ..writeln('      kind: CatalogKind.${e.kind},')
      ..writeln('      slots: <MigrateSlot>[');
    for (final s in e.slots) {
      buf.writeln('        ${_slot(s)},');
    }
    buf
      ..writeln('      ],')
      ..writeln('      getters: <MigrateGetter>[');
    for (final g in e.getters) {
      buf.writeln(
        '        MigrateGetter(tfName: ${_str(g.tfName)}, '
        'dartName: ${_str(g.dartName)}, dartType: ${_str(g.dartType)}),',
      );
    }
    buf
      ..writeln('      ],')
      ..writeln('    ),');
    return buf.toString();
  }

  String _helper(MigrateHelperData h) {
    final slots = h.slots.map(_slot).join(', ');
    final reason = h.reason == null ? '' : ', reason: ${_str(h.reason!)}';
    return 'MigrateHelper(className: ${_str(h.className)}, '
        'slots: <MigrateSlot>[$slots]$reason)';
  }

  String _enum(MigrateEnumData e) {
    final members = e.members.entries
        .map((m) => '${_str(m.key)}: ${_str(m.value)}')
        .join(', ');
    return 'MigrateEnum(name: ${_str(e.name)}, '
        'members: <String, String>{$members})';
  }

  String _slot(MigrateSlotData s) {
    final args = <String>[
      'tfName: ${_str(s.tfName)}',
      'dartName: ${_str(s.dartName)}',
      'kind: MigrateSlotKind.${s.kind.name}',
      'required: ${s.required}',
      if (s.repeated) 'repeated: true',
      if (!s.wrapped) 'wrapped: false',
      if (s.positional) 'positional: true',
      if (s.merged) 'merged: true',
      if (s.dartType != null) 'dartType: ${_str(s.dartType!)}',
      if (s.helper != null) 'helper: ${_str(s.helper!)}',
      if (s.variants != null)
        'variants: <String, String>{${s.variants!.entries.map((v) => '${_str(v.key)}: ${_str(v.value)}').join(', ')}}',
      if (s.reason != null) 'reason: ${_str(s.reason!)}',
    ];
    return 'MigrateSlot(${args.join(', ')})';
  }

  /// Single-quoted Dart string literal (same escaping as the catalog
  /// emitter): backslash first, then quote, `$`, and newline.
  static String _str(String s) {
    final escaped = s
        .replaceAll(r'\', r'\\')
        .replaceAll("'", r"\'")
        .replaceAll(r'$', r'\$')
        .replaceAll('\n', r'\n');
    return "'$escaped'";
  }
}
