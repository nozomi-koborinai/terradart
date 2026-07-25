// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_findings_refinement`.
const Set<String> _googleChronicleFindingsRefinementSensitive = <String>{};

/// Typed helper for the `outcome_filters` block of
/// `google_chronicle_findings_refinement` (derived from provider schema).
@immutable
final class ChronicleFindingsRefinementOutcomeFilters {
  const ChronicleFindingsRefinementOutcomeFilters({
    required this.outcomeFilterOperator,
    required this.outcomeValue,
    required this.outcomeVariable,
  });

  final TfArg<String> outcomeFilterOperator;

  final TfArg<String> outcomeValue;

  final TfArg<String> outcomeVariable;

  Map<String, Object?> encode() => {
    'outcome_filter_operator': outcomeFilterOperator.toTfJson(),
    'outcome_value': outcomeValue.toTfJson(),
    'outcome_variable': outcomeVariable.toTfJson(),
  };
}

/// Factory wrapper for `google_chronicle_findings_refinement`.
///
/// Represents a set of logic conditions used to refine various types of
/// findings such as curated rule detections.
///
/// Chronicle (Google SecOps) **findings refinement** — detection exclusion /
/// refinement query applied to curated or custom findings.
///
/// **Cost / apply:** gcp-cost: Chronicle `144D-4907-2A21` Bytes of data
/// ingested in US for the Enterprise Plus package SKU `0310-AEE4-5DC1`
/// **$6.58/GBy** (plus dollar-based SecOps commitments). billing-behavior:
/// refinements sit on an entitlement-gated Chronicle instance and alter
/// detection outcomes against billed ingestion. Not applyable on
/// `terradart-validate`. **Never** wire into apply-smoke.
///
/// Enable `chronicle.googleapis.com` before apply. Pair with
/// [GoogleChronicleFindingsRefinementDeployment] to enable.
final class GoogleChronicleFindingsRefinement extends Resource {
  static const String tfType = 'google_chronicle_findings_refinement';

  GoogleChronicleFindingsRefinement({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> instance,
    TfArg<String>? type,
    TfArg<String>? displayName,
    TfArg<String>? query,
    List<ChronicleFindingsRefinementOutcomeFilters>? outcomeFilters,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'instance': instance,
           if (type != null) 'type': type,
           if (displayName != null) 'display_name': displayName,
           if (query != null) 'query': query,
           if (outcomeFilters != null)
             'outcome_filters': TfArg.literal([
               for (final e in outcomeFilters) e.encode(),
             ]),
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleChronicleFindingsRefinementSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
