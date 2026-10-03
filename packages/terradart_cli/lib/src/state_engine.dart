import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

import 'engine.dart';

/// Which engine wrote a state, and what in the state says so.
typedef StateWriter = ({EngineKind kind, String evidence});

/// The engine that wrote [state] (a `terraform.tfstate` document), or `null`
/// when nothing in it tells.
///
/// The provider addresses decide: OpenTofu rewrites `registry.terraform.io`
/// to `registry.opentofu.org` on its first apply, unless the configuration
/// spells the full Terraform address — so a provider in [pinned]
/// (`hashicorp/google`) is not evidence. A state without providers is
/// Terraform's when its `terraform_version` predates OpenTofu (1.6.0); the
/// two engines' versions overlap after that.
StateWriter? stateWriter(Object? state, {Set<String> pinned = const {}}) {
  if (state is! Map) return null;
  final version = state['terraform_version'];
  final shown = version is String ? ' $version' : '';
  final hosts = <String>{};
  if (state['resources'] case final List<Object?> resources) {
    for (final r in resources) {
      if (r case {'provider': final String provider}) {
        final m = _providerAddress.firstMatch(provider);
        if (m == null || pinned.contains(m[2])) continue;
        hosts.add(m[1]!);
      }
    }
  }
  if (hosts.contains(_tofuRegistry)) {
    return (
      kind: EngineKind.tofu,
      evidence: 'OpenTofu$shown: its providers are $_tofuRegistry ones',
    );
  }
  if (hosts.contains(_terraformRegistry)) {
    return (
      kind: EngineKind.terraform,
      evidence: 'Terraform$shown: its providers are $_terraformRegistry ones',
    );
  }
  if (version is String && compareVersions(version, '1.6.0') < 0) {
    return (
      kind: EngineKind.terraform,
      evidence: 'Terraform $version, older than OpenTofu',
    );
  }
  return null;
}

/// [stateWriter] for a state file; `null` when [file] is missing, empty or
/// not JSON.
StateWriter? stateFileWriter(File file, {Set<String> pinned = const {}}) {
  if (!file.existsSync()) return null;
  final text = file.readAsStringSync();
  return text.trim().isEmpty ? null : stateTextWriter(text, pinned: pinned);
}

/// [stateWriter] for the text of a state (`state pull` prints it).
StateWriter? stateTextWriter(String text, {Set<String> pinned = const {}}) {
  try {
    return stateWriter(jsonDecode(text), pinned: pinned);
  } on FormatException {
    return null;
  }
}

/// The providers whose `required_providers` source in [dir]'s `*.tf.json`
/// names the Terraform registry in full, as `namespace/type`.
Set<String> pinnedTerraformProviders(String dir) {
  final pinned = <String>{};
  final d = Directory(dir);
  if (!d.existsSync()) return pinned;
  for (final f in d.listSync().whereType<File>()) {
    if (!f.path.endsWith('.tf.json')) continue;
    try {
      final json = jsonDecode(f.readAsStringSync());
      if (json case {
        'terraform': {'required_providers': final Map<Object?, Object?> req},
      }) {
        for (final v in req.values) {
          if (v case {
            'source': final String source,
          } when source.startsWith('$_terraformRegistry/')) {
            pinned.add(source.substring(_terraformRegistry.length + 1));
          }
        }
      }
    } on FormatException {
      continue;
    }
  }
  return pinned;
}

/// The local state file of [workspace] (`null`: the default one) in [dir],
/// where the local backend keeps it: the `path` a `*.tf.json` backend block
/// gives, else `terraform.tfstate`.
File localStateFile(String dir, String? workspace) {
  if (workspace != null && workspace != 'default') {
    return File(
      p.join(dir, 'terraform.tfstate.d', workspace, 'terraform.tfstate'),
    );
  }
  for (final f in Directory(dir).listSync().whereType<File>()) {
    if (!f.path.endsWith('.tf.json')) continue;
    try {
      final json = jsonDecode(f.readAsStringSync());
      if (json case {
        'terraform': {'backend': {'local': {'path': final String path}}},
      }) {
        return File(p.normalize(p.join(dir, path)));
      }
    } on FormatException {
      continue;
    }
  }
  return File(p.join(dir, 'terraform.tfstate'));
}

/// Whether `init` configured [dir] with a backend other than `local`, as
/// `.terraform/terraform.tfstate` records it.
bool initializedRemoteBackend(String dir) {
  final file = File(p.join(dir, '.terraform', 'terraform.tfstate'));
  if (!file.existsSync()) return false;
  try {
    final json = jsonDecode(file.readAsStringSync());
    if (json case {'backend': {'type': final String type}}) {
      return type != 'local';
    }
    return false;
  } on FormatException {
    return false;
  }
}

const _terraformRegistry = 'registry.terraform.io';
const _tofuRegistry = 'registry.opentofu.org';

final _providerAddress = RegExp(r'provider\["([^"/]+)/([^"/]+/[^"/]+)"\]');
