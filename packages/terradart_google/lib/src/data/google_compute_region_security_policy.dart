// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_security_policy`.
const Set<String> _googleComputeRegionSecurityPolicySensitive = <String>{};

/// Factory wrapper for `google_compute_region_security_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeRegionSecurityPolicy extends Data {
  static const String tfType = 'google_compute_region_security_policy';

  DataGoogleComputeRegionSecurityPolicy({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionSecurityPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `advanced_options_config` attribute.
  TfRef<List<Map<String, Object?>>> get advancedOptionsConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'advanced_options_config',
      );

  /// Reference to `ddos_protection_config` attribute.
  TfRef<List<Map<String, Object?>>> get ddosProtectionConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'ddos_protection_config',
      );

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `policy_id` attribute.
  TfRef<String> get policyId => TfRef.attribute<String>(this, 'policy_id');

  /// Reference to `rules` attribute.
  TfRef<List<Map<String, Object?>>> get rules =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'rules');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `self_link_with_policy_id` attribute.
  TfRef<String> get selfLinkWithPolicyId =>
      TfRef.attribute<String>(this, 'self_link_with_policy_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `user_defined_fields` attribute.
  TfRef<List<Map<String, Object?>>> get userDefinedFields =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'user_defined_fields');
}
