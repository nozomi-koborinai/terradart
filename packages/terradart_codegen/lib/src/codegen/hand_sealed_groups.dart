import 'migrate/dart_type_shape.dart';
import 'migrate/helper_class_extractor.dart';
import 'migrate/migrate_shape_analyzer.dart';
import 'wrapper_overrides/wrapper_override.dart';

/// A choice a hand-written sealed class makes: the dotted path of the block
/// its variants set keys in (empty for the resource itself) and the
/// Terraform key of each variant.
typedef HandSealedGroup = ({String path, Set<String> keys});

/// The choices [override]'s hand-written slots already seal: every sealed
/// class of its `prelude` a custom slot reaches, as the slot itself or as a
/// field of a prelude helper the slot holds (`cloud_sql.credential` inside a
/// sealed `backend` variant). The `deriveExactlyOne` gate and the
/// exactly-one lint treat a group one of them covers as sealed.
///
/// The variants and fields come from [HelperClassExtractor], the reading
/// the migration manifest makes of the same prelude, so a variant the
/// manifest cannot key (no `blockKey`, no single key) covers nothing.
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

/// Whether one of [sealed] sits at [path] and has a variant for every one
/// of [members].
bool coversGroup(
  List<HandSealedGroup> sealed,
  String path,
  Iterable<String> members,
) => sealed.any((g) => g.path == path && g.keys.containsAll(members));

/// Walks the fields of the prelude helper [name] encoded at [path]. A
/// variant's field may repeat its own [blockKey] (`{'weekly': {...}}`), which
/// [path] already ends with.
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

/// The class a slot or field of [typeSource] holds: the type itself, or the
/// element of a `List` / `Set` of it.
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
