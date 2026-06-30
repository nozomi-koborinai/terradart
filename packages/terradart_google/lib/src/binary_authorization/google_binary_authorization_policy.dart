// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_binary_authorization_policy`.
const Set<String> _googleBinaryAuthorizationPolicySensitive = <String>{};

/// Factory wrapper for `google_binary_authorization_policy`.
///
/// A policy for container image binary authorization.
///
/// Project-wide Binary Authorization policy controlling container image
/// admission for GKE, Cloud Run, and other deploy targets.
///
/// Enable `binaryauthorization.googleapis.com` via [GoogleProjectService]
/// before apply. Pair with [GoogleBinaryAuthorizationAttestor] and reference
/// attestor names in `default_admission_rule` / `cluster_admission_rules`.
///
/// Example:
/// ```dart
/// GoogleBinaryAuthorizationPolicy(
///   localName: 'project_policy',
///   defaultAdmissionRule: BinaryAuthorizationPolicyDefaultAdmissionRule(
///     evaluationMode: TfArg.literal(
///       BinaryAuthorizationPolicyEvaluationMode.alwaysAllow,
///     ),
///     enforcementMode: TfArg.literal(
///       BinaryAuthorizationPolicyEnforcementMode.enforced,
///     ),
///   ),
/// );
/// ```
final class GoogleBinaryAuthorizationPolicy extends Resource {
  static const String tfType = 'google_binary_authorization_policy';

  GoogleBinaryAuthorizationPolicy({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? globalPolicyEvaluationMode,
    TfArg<String>? project,
    TfArg<List<Map<String, dynamic>>>? admissionWhitelistPatterns,
    TfArg<List<Map<String, dynamic>>>? clusterAdmissionRules,
    required TfArg<Map<String, dynamic>> defaultAdmissionRule,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           if (globalPolicyEvaluationMode != null)
             'global_policy_evaluation_mode': globalPolicyEvaluationMode,
           if (project != null) 'project': project,
           if (admissionWhitelistPatterns != null)
             'admission_whitelist_patterns': admissionWhitelistPatterns,
           if (clusterAdmissionRules != null)
             'cluster_admission_rules': clusterAdmissionRules,
           'default_admission_rule': defaultAdmissionRule,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBinaryAuthorizationPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
