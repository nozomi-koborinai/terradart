import 'package:terradart_google/catalog.dart' show CatalogKind;
import 'tf_reference.dart';

/// Parses a decoded `terraform show -json` document (state or plan) into refs.
///
/// Accepts the `values` block (state) or `planned_values` block (plan); both
/// carry the same `root_module` shape. Throws [FormatException] if neither is
/// present. Entries without a usable `type` are collected into
/// [ParseOutcome.unparseable] rather than dropped.
ParseOutcome parseShowJson(Map<String, dynamic> json) {
  final root = (json['values'] ?? json['planned_values']);
  if (root is! Map || root['root_module'] is! Map) {
    throw const FormatException(
      'Expected `terraform show -json` output with a `values` or '
      '`planned_values` block (run `terraform show -json` on state or a plan).',
    );
  }
  final refs = <TfReference>[];
  final unparseable = <String>[];
  _walk(root['root_module'] as Map, 'root', refs, unparseable);
  return ParseOutcome(references: refs, unparseable: unparseable);
}

void _walk(
  Map module,
  String modulePath,
  List<TfReference> refs,
  List<String> unparseable,
) {
  final resources = module['resources'];
  if (resources is List) {
    for (final r in resources) {
      if (r is! Map) {
        unparseable.add('$modulePath: non-object resource entry');
        continue;
      }
      final type = r['type'];
      final mode = r['mode'];
      if (type is! String || type.isEmpty) {
        unparseable.add('$modulePath: resource entry missing `type` '
            '(${r['address'] ?? r['name'] ?? 'unknown'})');
        continue;
      }
      final kind = mode == 'data'
          ? CatalogKind.dataSource
          : CatalogKind.resource;
      refs.add(TfReference(type: type, kind: kind, modulePath: modulePath));
    }
  }
  final children = module['child_modules'];
  if (children is List) {
    for (final c in children) {
      if (c is! Map) continue;
      final addr = c['address'];
      _walk(c, addr is String ? addr : modulePath, refs, unparseable);
    }
  }
}
