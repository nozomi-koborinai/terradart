// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_macie2_findings_filter`.
const Set<String> _awsMacie2FindingsFilterSensitive = <String>{};

/// Typed helper for the `finding_criteria` block of
/// `aws_macie2_findings_filter` (derived from provider schema).
@immutable
final class Macie2FindingsFilterFindingCriteria {
  const Macie2FindingsFilterFindingCriteria({this.criterion});

  final List<Macie2FindingsFilterFindingCriteriaCriterion>? criterion;

  Map<String, Object?> encode() => {
    if (criterion != null)
      'criterion': [for (final e in criterion!) e.encode()],
  };
}

/// Typed helper for the `finding_criteria.criterion` block of
/// `aws_macie2_findings_filter` (derived from provider schema).
@immutable
final class Macie2FindingsFilterFindingCriteriaCriterion {
  const Macie2FindingsFilterFindingCriteriaCriterion({
    this.eq,
    this.eqExactMatch,
    required this.field,
    this.gt,
    this.gte,
    this.lt,
    this.lte,
    this.neq,
  });

  final TfArg<List<Object?>>? eq;

  final TfArg<List<Object?>>? eqExactMatch;

  final TfArg<String> field;

  final TfArg<String>? gt;

  final TfArg<String>? gte;

  final TfArg<String>? lt;

  final TfArg<String>? lte;

  final TfArg<List<Object?>>? neq;

  Map<String, Object?> encode() => {
    if (eq != null) 'eq': eq!.toTfJson(),
    if (eqExactMatch != null) 'eq_exact_match': eqExactMatch!.toTfJson(),
    'field': field.toTfJson(),
    if (gt != null) 'gt': gt!.toTfJson(),
    if (gte != null) 'gte': gte!.toTfJson(),
    if (lt != null) 'lt': lt!.toTfJson(),
    if (lte != null) 'lte': lte!.toTfJson(),
    if (neq != null) 'neq': neq!.toTfJson(),
  };
}

/// Factory wrapper for `aws_macie2_findings_filter`.
final class AwsMacie2FindingsFilter extends Resource {
  static const String tfType = 'aws_macie2_findings_filter';

  AwsMacie2FindingsFilter({
    required super.localName,
    required TfArg<String> action,
    TfArg<String>? description,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<num>? position,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required Macie2FindingsFilterFindingCriteria findingCriteria,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': action,
           if (description != null) 'description': description,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (position != null) 'position': position,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'finding_criteria': TfArg.literal(findingCriteria.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMacie2FindingsFilterSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
