import 'package:meta/meta.dart';

import '../parser/mm_yaml_parser.dart';
import 'hand_sealed_groups.dart';
import 'migrate/helper_class_extractor.dart';
import 'migrate/migrate_shape_analyzer.dart';
import 'universal_invariants/enum_extractor.dart';
import 'wrapper_overrides/wrapper_override.dart';

final class LintViolation {
  const LintViolation({
    required this.tfType,
    required this.rule,
    required this.detail,
  });

  final String tfType;
  final String rule;
  final String detail;
}

List<LintViolation> lintOverride(
  String tfType,
  WrapperOverride override, {
  MmResourceOverrides? mm,
  MigrateShapeLintInput? migrate,
}) {
  final violations = <LintViolation>[];

  if (override.curatedDoc != null && !override.deriveClassDoc) {
    violations.add(
      LintViolation(
        tfType: tfType,
        rule: 'curated-doc-without-derive-class-doc',
        detail:
            'curatedDoc is set but deriveClassDoc is false. curatedDoc is '
            'only emitted when deriveClassDoc is true, so it is dead config. '
            'Set deriveClassDoc: true or remove curatedDoc.',
      ),
    );
  }

  if (override.nestedTypeExcludes != null && !override.deriveNestedTypes) {
    violations.add(
      LintViolation(
        tfType: tfType,
        rule: 'nested-excludes-without-derive',
        detail:
            'nestedTypeExcludes is set but deriveNestedTypes is false. '
            'nestedTypeExcludes only has an effect inside the deriveNestedTypes '
            'codegen gate, so it is dead config. Set deriveNestedTypes: true or '
            'remove nestedTypeExcludes.',
      ),
    );
  }

  violations.addAll(lintDeadCustomSlots(tfType, override));

  violations.addAll(lintExactlyOneMutualExclusion(tfType, override, mm: mm));

  if (migrate != null) {
    violations.addAll(lintMigrateShapes(tfType, override, migrate));
  }

  return violations;
}

final class MigrateShapeLintInput {
  const MigrateShapeLintInput({required this.context, this.debt = const {}});

  final ShapeContext context;
  final Set<String> debt;
}

ShapeContext preludeShapeContext(
  Map<String, WrapperOverride> overrides, {
  Iterable<String> emitted = const [],
}) {
  const helperExtractor = HelperClassExtractor();
  const enumExtractor = EnumExtractor();
  final parts = <HelperExtraction>[];
  final enumNames = <String>{};
  for (final source in [
    for (final o in overrides.values) ?o.prelude,
    ...emitted,
  ]) {
    parts.add(helperExtractor.extract(source));
    enumNames.addAll(enumExtractor.extract(source).map((e) => e.name));
  }
  return ShapeContext(
    helpers: HelperExtraction.merge(parts),
    enumNames: enumNames,
  );
}

List<LintViolation> lintMigrateShapes(
  String tfType,
  WrapperOverride override,
  MigrateShapeLintInput input,
) {
  final violations = <LintViolation>[];
  final underivable = <LintViolation>[];
  final ctx = input.context;

  void flag(String detail) {
    underivable.add(
      LintViolation(
        tfType: tfType,
        rule: 'migrate-shape-underivable',
        detail: detail,
      ),
    );
  }

  final prelude = override.prelude;
  if (prelude != null) {
    final own = const HelperClassExtractor().extract(prelude);
    for (final h in own.helpers.values) {
      if (h.isIrregular) {
        flag(
          'prelude helper `${h.name}` cannot be mapped back to Terraform '
          'keys (${h.irregularReason}). The migration manifest records it '
          'as manual. Rewrite encode() as a field-per-key map literal, or '
          'add a reasoned entry to tool/migrate_manifest_debt.yaml.',
        );
        continue;
      }
      for (final f in h.fields) {
        var shape = resolveEnumPayload(
          classifyDartType(f.typeSource, ctx),
          ctx,
        );
        if (f.merged) shape = mergedShape(shape);
        if (shape.keyed && !f.keyedEncoding) {
          shape = unkeyedMapShape(f.typeSource);
        }
        if (shape.isManual) {
          flag(
            'prelude helper `${h.name}` field `${f.name}` has a type the '
            'migration manifest cannot express (${shape.reason}). Use '
            'TfArg<T>, a helper class, a sealed class or an enum, or add a '
            'reasoned entry to tool/migrate_manifest_debt.yaml.',
          );
        }
      }
    }
  }

  for (final entry in (override.customSlots ?? const {}).entries) {
    final slot = entry.value;
    final SlotShape derived;
    try {
      derived = deriveCustomSlotShape(parseCustomSlot(slot), ctx);
    } on FormatException catch (e) {
      flag(
        'customSlots["${entry.key}"] paramDeclaration could not be parsed '
        '(${e.message}).',
      );
      continue;
    }
    final hint = slot.migrate;
    if (hint != null && !derived.isManual) {
      violations.add(
        LintViolation(
          tfType: tfType,
          rule: 'migrate-hint-stale',
          detail:
              'customSlots["${entry.key}"].migrate declares the slot '
              'manual, but the migration manifest derives it as '
              '${derived.kind.name}. Remove the hint so the manifest carries '
              'the working recipe.',
        ),
      );
    } else if (hint == null && derived.isManual) {
      flag(
        'customSlots["${entry.key}"] cannot be derived for the migration '
        'manifest (${derived.reason}). Give the slot a shape the manifest '
        'can express, declare `migrate: {kind: manual, reason: ...}` on it '
        'when it is manual by design, or add a reasoned entry to '
        'tool/migrate_manifest_debt.yaml.',
      );
    }
  }

  if (!input.debt.contains(tfType)) violations.addAll(underivable);
  return violations;
}

List<String> staleMigrateManifestDebt(
  Map<String, WrapperOverride> overrides, {
  required ShapeContext context,
  required Set<String> debt,
}) {
  final stale = <String>[];
  for (final tfType in debt) {
    final override = overrides[tfType];
    if (override == null) {
      stale.add(tfType);
      continue;
    }
    final wouldViolate = lintMigrateShapes(
      tfType,
      override,
      MigrateShapeLintInput(context: context),
    ).any((v) => v.rule == 'migrate-shape-underivable');
    if (!wouldViolate) stale.add(tfType);
  }
  stale.sort();
  return stale;
}

List<LintViolation> lintDeadCustomSlots(
  String tfType,
  WrapperOverride override,
) {
  final slots = override.customSlots;
  if (slots == null || slots.isEmpty) return const [];

  final paramOrder = override.paramOrder;
  if (paramOrder == null) {
    return [
      LintViolation(
        tfType: tfType,
        rule: 'custom-slot-missing-param-order',
        detail:
            'customSlots [${slots.keys.join(', ')}] are declared but '
            'paramOrder is omitted. The emitter only resolves customSlots '
            'through paramOrder/argMapOrder names, so virtual slots are '
            'silently dropped from the generated constructor. Declare '
            'paramOrder listing every slot key.',
      ),
    ];
  }

  final violations = <LintViolation>[];
  final argMapOrder = override.argMapOrder;
  for (final key in slots.keys) {
    if (!paramOrder.contains(key)) {
      violations.add(
        LintViolation(
          tfType: tfType,
          rule: 'custom-slot-not-in-param-order',
          detail:
              'customSlots["$key"] is not listed in paramOrder, so the '
              'emitter silently skips it: the generated constructor has no '
              'matching parameter and the argMapEntry is dead config. Add '
              '"$key" to paramOrder (and argMapOrder when set) or delete the '
              'slot and its prelude helper types.',
        ),
      );
    } else if (argMapOrder != null && !argMapOrder.contains(key)) {
      violations.add(
        LintViolation(
          tfType: tfType,
          rule: 'custom-slot-not-in-arg-map-order',
          detail:
              'customSlots["$key"] is listed in paramOrder but missing '
              'from argMapOrder, so the constructor parameter is emitted while '
              'its argMap entry is dropped — the argument would be silently '
              'ignored at synth time. Add "$key" to argMapOrder.',
        ),
      );
    }
  }
  return violations;
}

@visibleForTesting
List<List<String>> canonicalExactlyOneOfGroups(List<List<String>> raw) {
  final seen = <String>{};
  final out = <List<String>>[];
  for (final group in raw) {
    if (group.length < 2) continue;
    // Magic Modules uses .<digits>. for list-indexed nested-block paths (e.g. subnet.0.name).
    if (group.any((m) => RegExp(r'\.\d+\.').hasMatch(m))) continue;
    if (group.every((m) => !m.contains('.'))) {
      final sorted = List<String>.from(group)..sort();
      final key = sorted.join(',');
      if (seen.add(key)) out.add(sorted);
      continue;
    }
    final suffixes = <String>{
      for (final m in group) m.contains('.') ? m.split('.').last : m,
    };
    if (suffixes.length < 2 || suffixes.length != group.length) continue;
    final sorted = suffixes.toList()..sort();
    final key = sorted.join(',');
    if (seen.add(key)) out.add(sorted);
  }
  return out;
}

List<LintViolation> lintExactlyOneMutualExclusion(
  String tfType,
  WrapperOverride override, {
  MmResourceOverrides? mm,
}) {
  if (mm == null || override.deriveExactlyOne) return const [];

  final violations = <LintViolation>[];
  final slots = override.customSlots ?? const {};
  final paramOrder = override.paramOrder ?? const [];
  final hand = handSealedGroups(override);

  for (final group in canonicalExactlyOneOfGroups(mm.exactlyOneOfGroups)) {
    final optionalDirectMemberSlots = _optionalMemberSlots(group, slots);
    if (optionalDirectMemberSlots.length < 2) continue;
    if (coversGroup(hand, '', group)) continue;

    violations.add(
      _exactlyOneViolation(
        tfType: tfType,
        rule: 'exactly-one-optional-fanout',
        group: group,
        detail:
            'this override exposes [${optionalDirectMemberSlots.join(', ')}] as '
            'separate optional customSlots. Model the group as a sealed class '
            'plus one required virtual customSlot that dispatches via '
            '`.blockKey` (see google_cloud_scheduler_job.yaml and '
            'google_firestore_backup_schedule.yaml), or set deriveExactlyOne.',
      ),
    );
  }

  for (final group in canonicalExactlyOneOfGroups(mm.exactlyOneOfGroups)) {
    if (coversGroup(hand, '', group)) continue;

    final optionalDirectMemberSlots = _optionalMemberSlots(group, slots);
    final schemaSlotsInParamOrder = [
      for (final member in group)
        if (paramOrder.contains(member) && !slots.containsKey(member)) member,
    ];
    if (schemaSlotsInParamOrder.length < 2) continue;
    if (optionalDirectMemberSlots.length >= 2) continue;

    violations.add(
      _exactlyOneViolation(
        tfType: tfType,
        rule: 'exactly-one-paramorder-fanout',
        group: group,
        detail:
            'this override lists [${schemaSlotsInParamOrder.join(', ')}] in '
            'paramOrder as schema-default slots without a sealed virtual '
            'customSlot. Omit those IR member slots from paramOrder and model '
            'the group as a sealed class plus one required virtual customSlot '
            '(see google_cloud_scheduler_job.yaml).',
      ),
    );
  }

  return violations;
}

List<String> _optionalMemberSlots(
  List<String> group,
  Map<String, CustomSlot> slots,
) {
  return [
    for (final member in group)
      if (slots.containsKey(member) &&
          _paramDeclarationIsOptional(slots[member]!.paramDeclaration))
        member,
  ];
}

LintViolation _exactlyOneViolation({
  required String tfType,
  required String rule,
  required List<String> group,
  required String detail,
}) {
  return LintViolation(
    tfType: tfType,
    rule: rule,
    detail:
        'MM YAML declares exactly_one_of on [${group.join(', ')}] but '
        '$detail',
  );
}

bool _paramDeclarationIsOptional(String paramDeclaration) =>
    paramDeclaration.contains('?');

List<LintViolation> lintOverrides(
  Map<String, WrapperOverride> overrides, {
  Map<String, MmResourceOverrides>? mmByType,
  MigrateShapeLintInput? migrate,
}) {
  final keys = overrides.keys.toList()..sort();
  return [
    for (final k in keys)
      ...lintOverride(k, overrides[k]!, mm: mmByType?[k], migrate: migrate),
  ];
}
