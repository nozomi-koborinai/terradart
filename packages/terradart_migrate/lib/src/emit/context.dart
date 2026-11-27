import 'package:terradart_appwrite/catalog.dart' as appwrite;
import 'package:terradart_aws/catalog.dart' as aws;
import 'package:terradart_azure/catalog.dart' as azure;
import 'package:terradart_cloudflare/catalog.dart' as cloudflare;
import 'package:terradart_google/catalog.dart' as google;
import 'package:terradart_google_beta/catalog.dart' as beta;

import '../migrate_manifest.dart';
import 'module_wrapper.dart';

final class ModuleTarget {
  const ModuleTarget({
    required this.address,
    required this.dartName,
    this.local,
  });

  final String address;
  final String dartName;
  final LocalModule? local;

  ModuleOutput? getter(String attribute) => local?.output(attribute);
}

final class EmitTarget {
  EmitTarget({
    required this.address,
    required this.dartName,
    required this.entry,
    required this.manifest,
    required this.isData,
  });

  final String address;
  final String dartName;
  final MigrateEntry entry;
  final MigrateManifest manifest;
  final bool isData;

  MigrateGetter? getter(String attribute) {
    for (final g in entry.getters) {
      if (g.tfName == attribute) return g;
    }
    return null;
  }
}

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
    addAll('terradart_aws', [
      for (final e in aws.terradartCatalog)
        (tfType: e.tfType, kind: e.kind.name, sensitive: e.sensitiveFields),
    ]);
    addAll('terradart_azure', [
      for (final e in azure.terradartCatalog)
        (tfType: e.tfType, kind: e.kind.name, sensitive: e.sensitiveFields),
    ]);
    return SensitiveIndex._(out);
  }

  final Map<String, Set<String>> _byKey;

  Set<String> of(String package, String tfType, CatalogKind kind) =>
      _byKey['$package|$tfType|${kind.name}'] ?? const {};
}

final class EmitContext {
  EmitContext({required this.manifests, required this.sensitive});

  final List<MigrateManifest> manifests;
  final SensitiveIndex sensitive;
  final Map<String, EmitTarget> targets = {};
  final Map<String, ModuleTarget> moduleTargets = {};
  final Set<String> declaredVariables = {};
  final Map<String, ({String dartName, String dartType})> variableHandles = {};
  final Set<String> externalVariables = {};
  final Set<String> referenced = {};
  final Map<String, Set<String>> imports = {};
  final List<String> warnings = [];

  void resetPass() {
    referenced.clear();
    externalVariables.clear();
    imports.clear();
    warnings.clear();
  }

  void import(String package, String barrel) {
    imports.putIfAbsent(package, () => <String>{}).add(barrel);
  }

  EmitTarget? use(String address) {
    final t = targets[address];
    if (t != null) referenced.add(address);
    return t;
  }

  void useVariable(String name) {
    if (!declaredVariables.contains(name)) externalVariables.add(name);
  }

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
