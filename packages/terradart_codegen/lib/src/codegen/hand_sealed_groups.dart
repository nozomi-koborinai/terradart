import 'migrate/dart_type_shape.dart';
import 'migrate/helper_class_extractor.dart';
import 'migrate/migrate_shape_analyzer.dart';
import 'wrapper_overrides/wrapper_override.dart';

typedef HandSealedGroup = ({String path, Set<String> keys});

List<HandSealedGroup> handSealedGroups(WrapperOverride override) {
  final prelude = override.prelude;
  final slots = override.customSlots;
  if (prelude == null || slots == null || slots.isEmpty) return const [];
  final extraction = const HelperClassExtractor().extract(prelude);
  final out = <HandSealedGroup>[];
  final visited = <String>{};

  void sealedAt(String name, List<String> path, {required bool nests}) {
    final variants = extraction.variantsOf(name);
    if (variants == null) return;
    out.add((path: path.join('.'), keys: variants.keys.toSet()));
    for (final MapEntry(:key, :value) in variants.entries) {
      _fields(
        extraction,
        value,
        nests ? [...path, key] : path,
        blockKey: nests ? key : null,
        visited: visited,
        sealedAt: sealedAt,
      );
    }
  }

  for (final slot in slots.values) {
    final parsed = parseCustomSlot(slot);
    final name = _elementName(parsed.typeSource);
    if (name == null) continue;
    if (extraction.sealedClasses.contains(name)) {
      if (parsed.dynamicKey) {
        sealedAt(name, const [], nests: true);
      } else if (parsed.spread) {
        sealedAt(name, const [], nests: false);
      } else if (parsed.tfKey case final key?) {
        sealedAt(name, [key], nests: true);
      }
    } else if (parsed.tfKey case final key?) {
      _fields(extraction, name, [key], visited: visited, sealedAt: sealedAt);
    }
  }
  return out;
}

bool coversGroup(
  List<HandSealedGroup> sealed,
  String path,
  Iterable<String> members,
) => sealed.any((g) => g.path == path && g.keys.containsAll(members));

void _fields(
  HelperExtraction extraction,
  String name,
  List<String> path, {
  String? blockKey,
  required Set<String> visited,
  required void Function(String name, List<String> path, {required bool nests})
  sealedAt,
}) {
  final helper = extraction.helpers[name];
  if (helper == null || !visited.add('$name@${path.join('.')}')) return;
  for (final field in helper.fields) {
    final type = _elementName(field.typeSource);
    if (type == null) continue;
    final List<String> at;
    if (field.merged) {
      at = path;
    } else if (field.tfKey case final key?) {
      final relative = blockKey != null && key.startsWith('$blockKey.')
          ? key.substring(blockKey.length + 1)
          : key;
      at = [...path, ...relative.split('.')];
    } else {
      continue;
    }
    if (extraction.sealedClasses.contains(type)) {
      sealedAt(type, at, nests: !field.merged);
    } else {
      _fields(extraction, type, at, visited: visited, sealedAt: sealedAt);
    }
  }
}

String? _elementName(String typeSource) {
  final DartTypeShape type;
  try {
    type = parseDartType(typeSource);
  } on FormatException {
    return null;
  }
  if ((type.name == 'List' || type.name == 'Set') && type.args.length == 1) {
    return type.args.single.name;
  }
  return type.args.isEmpty ? type.name : null;
}
