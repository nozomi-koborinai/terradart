// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_security_profile_v2`.
const Set<String> _googleApigeeSecurityProfileV2Sensitive = <String>{};

/// Typed helper for the `profile_assessment_configs` block of
/// `google_apigee_security_profile_v2` (derived from provider schema).
@immutable
final class ApigeeSecurityProfileV2ProfileAssessmentConfigs {
  const ApigeeSecurityProfileV2ProfileAssessmentConfigs({
    required this.assessment,
    required this.weight,
  });

  final TfArg<String> assessment;

  final TfArg<ApigeeSecurityProfileV2ProfileAssessmentConfigsWeight> weight;

  Map<String, Object?> encode() => {
    'assessment': assessment.toTfJson(),
    'weight': weight.toTfJson(),
  };
}

/// `weight` — derived from the provider schema description.
enum ApigeeSecurityProfileV2ProfileAssessmentConfigsWeight
    implements TerraformEnum {
  minor('MINOR'),
  moderate('MODERATE'),
  major('MAJOR');

  const ApigeeSecurityProfileV2ProfileAssessmentConfigsWeight(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_apigee_security_profile_v2`.
///
/// Security profile for risk assessment version 2 in Apigee.
///
/// Apigee **security profile v2** — Advanced API Security assessment profile.
///
/// **Cost / apply:** gcp-cost: Apigee `1C2D-8C78-EC58` Advanced API Security
/// Add-on request SKU `572E-C6FE-7BB3` **$0.00035/request** (subscription
/// variant `39EF-C4B0-1015`). billing-behavior: requires never_apply
/// [GoogleApigeeOrganization] plus Advanced API Security entitlement.
/// Debt-only on `terradart-validate`. **Never** wire into apply-smoke.
final class GoogleApigeeSecurityProfileV2 extends Resource {
  static const String tfType = 'google_apigee_security_profile_v2';

  GoogleApigeeSecurityProfileV2({
    required super.localName,
    required TfArg<String> profileId,
    required TfArg<String> orgId,
    TfArg<String>? description,
    required List<ApigeeSecurityProfileV2ProfileAssessmentConfigs>
    profileAssessmentConfigs,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'profile_id': profileId,
           'org_id': orgId,
           if (description != null) 'description': description,
           'profile_assessment_configs': TfArg.literal([
             for (final e in profileAssessmentConfigs) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeSecurityProfileV2Sensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `profile_id` attribute.
  TfRef<String> get profileIdRef => TfRef.attribute<String>(this, 'profile_id');
}
