import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_hcl/terradart_hcl.dart';

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

/// The local state file of [workspace] in [dir], where the local backend
/// keeps it.
///
/// [workspace] `null` is the one [recordedWorkspace] names, else the default.
/// A named workspace is `terraform.tfstate.d/<name>/terraform.tfstate`; the
/// default is the `path` a `local` backend gives, else `terraform.tfstate`.
/// A missing [dir] has not been written (`--no-synth`): the default path is
/// returned and does not exist.
File localStateFile(String dir, String? workspace) {
  final selected = workspace ?? recordedWorkspace(dir);
  if (selected != null && selected != 'default') {
    return File(
      p.join(dir, 'terraform.tfstate.d', selected, 'terraform.tfstate'),
    );
  }
  // `--no-synth` or a deleted output dir: nothing has been written, so there
  // is no local state to guard. Listing a missing directory throws.
  final d = Directory(dir);
  if (!d.existsSync()) return File(p.join(dir, 'terraform.tfstate'));
  for (final f in d.listSync().whereType<File>()) {
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

/// The workspace the last `init` selected in [dir] (`.terraform/environment`),
/// or `null` when none is recorded.
String? recordedWorkspace(String dir) {
  final file = File(p.join(dir, '.terraform', 'environment'));
  if (!file.existsSync()) return null;
  final name = file.readAsStringSync().trim();
  return name.isEmpty ? null : name;
}

/// Whether [dir]'s configuration stores state in a local file: no `backend`
/// block, or a `local` one. A remote backend's leftover `terraform.tfstate`
/// is not the state the next command will use.
///
/// `.tf` and `.tf.json` are parsed (`parseHcl` / the JSON front-end). A
/// `backend` other than `"local"`, or a `cloud { }` block, is not local, so
/// the check falls through to a remote `state pull`. A file that does not
/// parse does the same — guessing wrong would skip the guard.
bool configuredLocalBackend(String dir) => readConfiguredBackend(dir).isLocal;

ConfiguredBackend readConfiguredBackend(String dir) {
  final directory = Directory(dir);
  if (!directory.existsSync()) {
    return const ConfiguredBackend(type: 'local');
  }
  var unreadable = false;
  var hasCloud = false;
  var sawBackend = false;
  var hasRemote = false;
  var type = 'local';
  var attributes = const <String, String>{};
  final files = directory.listSync().whereType<File>().toList()
    // Basename order, so two backend files resolve the same way on every OS.
    ..sort((a, b) => p.basename(a.path).compareTo(p.basename(b.path)));
  for (final file in files) {
    final name = p.basename(file.path);
    final TfModule module;
    try {
      if (name.endsWith('.tf.json')) {
        module = TfModule.fromTfJson(
          file.readAsStringSync(),
          fileName: file.path,
        );
      } else if (name.endsWith('.tf')) {
        module = TfModule.fromHcl(file.readAsStringSync(), fileName: file.path);
      } else {
        continue;
      }
    } on HclParseException {
      unreadable = true;
      continue;
    } on FileSystemException {
      unreadable = true;
      continue;
    }
    for (final block in module.terraform) {
      final backend = block.backend;
      if (backend != null) {
        final backendType = backend.labels.isEmpty
            ? ''
            : backend.labels.first.text;
        if (backendType.isEmpty) {
          unreadable = true;
        } else {
          sawBackend = true;
          final attrs = _scalarAttributes(backend);
          if (backendType == 'local') {
            if (!hasRemote) {
              type = 'local';
              attributes = attrs;
            }
          } else {
            hasRemote = true;
            type = backendType;
            attributes = attrs;
          }
        }
      }
      if (block.cloud != null) {
        hasCloud = true;
        if (!sawBackend && !hasRemote) {
          type = 'cloud';
          attributes = _scalarAttributes(block.cloud!);
        }
      }
    }
  }
  return ConfiguredBackend(
    type: type,
    attributes: attributes,
    unreadable: unreadable,
    hasCloud: hasCloud,
  );
}

final class ConfiguredBackend {
  const ConfiguredBackend({
    required this.type,
    this.attributes = const {},
    this.unreadable = false,
    this.hasCloud = false,
  });

  final String type;
  final Map<String, String> attributes;
  final bool unreadable;
  final bool hasCloud;

  bool get isLocal => !unreadable && !hasCloud && type == 'local';
}

Map<String, String> _scalarAttributes(Block block) {
  final out = <String, String>{};
  for (final attr in block.body.attributes) {
    final shown = _shownScalar(attr.value);
    if (shown == null) continue;
    out[attr.name] = shown;
  }
  return out;
}

String? _shownScalar(Expr expr) {
  if (expr is LiteralExpr) {
    if (expr.isNull) return null;
    if (expr.isString || expr.isNumber || expr.isBool) return '${expr.value}';
    return null;
  }
  return expr.constantString;
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
