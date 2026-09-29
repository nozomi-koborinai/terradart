// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_macie2_findings_filter`.
const Set<String> _awsMacie2FindingsFilterSensitive = <String>{};

/// Macie2 Findings Filter enum for `action`.
enum Macie2FindingsFilterAction implements TerraformEnum {
  archive('ARCHIVE'),
  noop('NOOP');

  const Macie2FindingsFilterAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `name`, `name_prefix` on `aws_macie2_findings_filter`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class Macie2FindingsFilterName {
  const Macie2FindingsFilterName();

  /// Sets `name`.
  const factory Macie2FindingsFilterName.name(TfArg<String> name) =
      Macie2FindingsFilterNameChoice;

  /// Sets `name_prefix`.
  const factory Macie2FindingsFilterName.namePrefix(TfArg<String> namePrefix) =
      Macie2FindingsFilterNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [Macie2FindingsFilterName.name] choice: sets `name`.
final class Macie2FindingsFilterNameChoice extends Macie2FindingsFilterName {
  const Macie2FindingsFilterNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [Macie2FindingsFilterName.namePrefix] choice: sets `name_prefix`.
final class Macie2FindingsFilterNamePrefix extends Macie2FindingsFilterName {
  const Macie2FindingsFilterNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

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
    'eq': ?eq?.toTfJson(),
    'eq_exact_match': ?eqExactMatch?.toTfJson(),
    'field': field.toTfJson(),
    'gt': ?gt?.toTfJson(),
    'gte': ?gte?.toTfJson(),
    'lt': ?lt?.toTfJson(),
    'lte': ?lte?.toTfJson(),
    'neq': ?neq?.toTfJson(),
  };
}

/// Factory wrapper for `aws_macie2_findings_filter`.
final class AwsMacie2FindingsFilter extends Resource {
  static const String tfType = 'aws_macie2_findings_filter';

  AwsMacie2FindingsFilter({
    required super.localName,
    required TfArg<Macie2FindingsFilterAction> action,
    TfArg<String>? description,
    Macie2FindingsFilterName? name,
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
           'description': ?description,
           ...?name?.argMap,
           'position': ?position,
           'region': ?region,
           'tags': ?tags,
           'finding_criteria': TfArg.literal(findingCriteria.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMacie2FindingsFilterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMacie2FindingsFilter>`.
  RefTo<AwsMacie2FindingsFilter> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
