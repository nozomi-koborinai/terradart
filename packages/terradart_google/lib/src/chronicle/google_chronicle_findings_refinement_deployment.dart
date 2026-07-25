// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_findings_refinement_deployment`.
const Set<String> _googleChronicleFindingsRefinementDeploymentSensitive =
    <String>{};

/// Typed helper for the `detection_exclusion_application` block of
/// `google_chronicle_findings_refinement_deployment` (derived from provider schema).
@immutable
final class ChronicleFindingsRefinementDeploymentDetectionExclusionApplication {
  const ChronicleFindingsRefinementDeploymentDetectionExclusionApplication({
    this.curatedRuleSets,
    this.curatedRules,
    this.rules,
  });

  final TfArg<List<Object?>>? curatedRuleSets;

  final TfArg<List<Object?>>? curatedRules;

  final TfArg<List<Object?>>? rules;

  Map<String, Object?> encode() => {
    if (curatedRuleSets != null)
      'curated_rule_sets': curatedRuleSets!.toTfJson(),
    if (curatedRules != null) 'curated_rules': curatedRules!.toTfJson(),
    if (rules != null) 'rules': rules!.toTfJson(),
  };
}

/// Factory wrapper for `google_chronicle_findings_refinement_deployment`.
///
/// The FindingsRefinementDeployment resource represents the deployment state of
/// a findings refinement.
///
/// Chronicle (Google SecOps) **findings refinement deployment** — enables /
/// archives a [GoogleChronicleFindingsRefinement].
///
/// **Cost / apply:** gcp-cost: Chronicle `144D-4907-2A21` Bytes of data
/// ingested in US for the Enterprise Plus package SKU `0310-AEE4-5DC1`
/// **$6.58/GBy** (plus dollar-based SecOps commitments). billing-behavior:
/// enabling a deployment applies exclusions against entitlement-gated SecOps
/// detection. Not applyable on `terradart-validate`. **Never** wire into
/// apply-smoke.
///
/// Enable `chronicle.googleapis.com` before apply.
final class GoogleChronicleFindingsRefinementDeployment extends Resource {
  static const String tfType =
      'google_chronicle_findings_refinement_deployment';

  GoogleChronicleFindingsRefinementDeployment({
    required super.localName,
    required TfArg<String> findingsRefinement,
    required TfArg<String> location,
    required TfArg<String> instance,
    TfArg<bool>? enabled,
    TfArg<bool>? archived,
    ChronicleFindingsRefinementDeploymentDetectionExclusionApplication?
    detectionExclusionApplication,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'findings_refinement': findingsRefinement,
           'location': location,
           'instance': instance,
           if (enabled != null) 'enabled': enabled,
           if (archived != null) 'archived': archived,
           if (detectionExclusionApplication != null)
             'detection_exclusion_application': TfArg.literal(
               detectionExclusionApplication.encode(),
             ),
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleChronicleFindingsRefinementDeploymentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
