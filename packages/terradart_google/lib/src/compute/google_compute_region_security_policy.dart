// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_security_policy`.
const Set<String> _googleComputeRegionSecurityPolicySensitive = <String>{};

/// Factory wrapper for `google_compute_region_security_policy`.
final class GoogleComputeRegionSecurityPolicy extends Resource {
  static const String tfType = 'google_compute_region_security_policy';

  GoogleComputeRegionSecurityPolicy({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
    TfArg<String>? type,
    TfArg<Map<String, dynamic>>? advancedOptionsConfig,
    TfArg<Map<String, dynamic>>? ddosProtectionConfig,
    TfArg<List<Map<String, dynamic>>>? rules,
    TfArg<List<Map<String, dynamic>>>? userDefinedFields,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'name': name,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           if (type != null) 'type': type,
           if (advancedOptionsConfig != null)
             'advanced_options_config': advancedOptionsConfig,
           if (ddosProtectionConfig != null)
             'ddos_protection_config': ddosProtectionConfig,
           if (rules != null) 'rules': rules,
           if (userDefinedFields != null)
             'user_defined_fields': userDefinedFields,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionSecurityPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `policy_id` attribute.
  TfRef<String> get policyId => TfRef.attribute<String>(this, 'policy_id');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `self_link_with_policy_id` attribute.
  TfRef<String> get selfLinkWithPolicyId =>
      TfRef.attribute<String>(this, 'self_link_with_policy_id');
}
