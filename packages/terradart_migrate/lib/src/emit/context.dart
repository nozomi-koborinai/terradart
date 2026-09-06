/// State shared across one module's emission.
library;

import 'package:terradart_appwrite/catalog.dart' as appwrite;
import 'package:terradart_cloudflare/catalog.dart' as cloudflare;
import 'package:terradart_google/catalog.dart' as google;
import 'package:terradart_google_beta/catalog.dart' as beta;

import '../migrate_manifest.dart';

/// A resource or data source the Stack declares, as other blocks see it.
final class EmitTarget {
  EmitTarget({
    required this.address,
    required this.dartName,
    required this.entry,
    required this.manifest,
    required this.isData,
  });

  /// `google_pubsub_topic.orders` / `data.google_project.current`.
  final String address;

  /// The Dart local that holds it.
  final String dartName;
  final MigrateEntry entry;
  final MigrateManifest manifest;
  final bool isData;

  /// The output getter for [attribute], if the wrapper declares one.
  MigrateGetter? getter(String attribute) {
    for (final g in entry.getters) {
      if (g.tfName == attribute) return g;
    }
    return null;
  }
}

/// Sensitive argument paths per curated factory, from the catalogs.
final class SensitiveIndex {
  SensitiveIndex._(this._byKey);

  factory SensitiveIndex.fromCatalogs() {
    final out = <String, Set<String>>{};
    void addAll(
      String package,
      Iterable<({String tfType, String kind, List<String> sensitive})> entries,
    ) {
      for (final e in entries) {
        if (e.sensitive.isEmpty) continue;
        out['$package|${e.tfType}|${e.kind}'] = e.sensitive.toSet();
      }
    }

    addAll('terradart_google', [
      for (final e in google.terradartCatalog)
        (tfType: e.tfType, kind: e.kind.name, sensitive: e.sensitiveFields),
    ]);
    addAll('terradart_google_beta', [
      for (final e in beta.terradartCatalog)
        (tfType: e.tfType, kind: e.kind.name, sensitive: e.sensitiveFields),
    ]);
    addAll('terradart_appwrite', [
      for (final e in appwrite.terradartCatalog)
        (tfType: e.tfType, kind: e.kind.name, sensitive: e.sensitiveFields),
    ]);
    addAll('terradart_cloudflare', [
      for (final e in cloudflare.terradartCatalog)
        (tfType: e.tfType, kind: e.kind.name, sensitive: e.sensitiveFields),
    ]);
    return SensitiveIndex._(out);
  }

  final Map<String, Set<String>> _byKey;

  /// Dotted sensitive paths of the factory for [tfType] in [package].
  Set<String> of(String package, String tfType, CatalogKind kind) =>
      _byKey['$package|$tfType|${kind.name}'] ?? const {};
}

/// Everything the value and resource emitters share while one module is
/// being emitted: which blocks are migrated (and under which Dart name),
/// which variables exist, and the imports the Stack needs.
final class EmitContext {
  EmitContext({required this.manifests, required this.sensitive});

  /// Manifests in lookup precedence.
  final List<MigrateManifest> manifests;
  final SensitiveIndex sensitive;

  /// Migrated blocks by address — the ones a reference may resolve to.
  final Map<String, EmitTarget> targets = {};

  /// Variables declared by `variable` blocks that become `addVariable`.
  final Set<String> declaredVariables = {};

  /// Variables referenced but not declared: `addExternalVariable`.
  final Set<String> externalVariables = {};

  /// Addresses whose Dart local is used by another statement.
  final Set<String> referenced = {};

  /// Package → barrels to import.
  final Map<String, Set<String>> imports = {};

  final List<String> warnings = [];

  /// Resets the per-pass state (references, imports, external variables).
  void resetPass() {
    referenced.clear();
    externalVariables.clear();
    imports.clear();
    warnings.clear();
  }

  void import(String package, String barrel) {
    imports.putIfAbsent(package, () => <String>{}).add(barrel);
  }

  /// The migrated block at [address], marking it referenced.
  EmitTarget? use(String address) {
    final t = targets[address];
    if (t != null) referenced.add(address);
    return t;
  }

  /// Registers a `var.<name>` reference.
  void useVariable(String name) {
    if (!declaredVariables.contains(name)) externalVariables.add(name);
  }

  /// The manifest entry for a Terraform type, in precedence order.
  ({MigrateManifest manifest, MigrateEntry entry})? lookup(
    String tfType,
    CatalogKind kind,
  ) {
    for (final m in manifests) {
      final e = m.entryFor(tfType, kind);
      if (e != null) return (manifest: m, entry: e);
    }
    return null;
  }
}
