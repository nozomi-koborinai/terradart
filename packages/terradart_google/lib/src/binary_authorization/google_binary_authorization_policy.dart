// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_binary_authorization_policy`.
const Set<String> _googleBinaryAuthorizationPolicySensitive = <String>{};

/// Typed helper for the `admission_whitelist_patterns` block of
/// `google_binary_authorization_policy` (derived from provider schema).
@immutable
final class BinaryAuthorizationPolicyAdmissionWhitelistPatterns {
  const BinaryAuthorizationPolicyAdmissionWhitelistPatterns({
    required this.namePattern,
  });

  final TfArg<String> namePattern;

  Map<String, Object?> encode() => {'name_pattern': namePattern.toTfJson()};
}

/// Typed helper for the `cluster_admission_rules` block of
/// `google_binary_authorization_policy` (derived from provider schema).
@immutable
final class BinaryAuthorizationPolicyClusterAdmissionRules {
  const BinaryAuthorizationPolicyClusterAdmissionRules({
    required this.cluster,
    required this.enforcementMode,
    required this.evaluationMode,
    this.requireAttestationsBy,
  });

  final TfArg<String> cluster;

  final TfArg<BinaryAuthorizationPolicyEnforcementMode> enforcementMode;

  final TfArg<BinaryAuthorizationPolicyEvaluationMode> evaluationMode;

  final TfArg<List<String>>? requireAttestationsBy;

  Map<String, Object?> encode() => {
    'cluster': cluster.toTfJson(),
    'enforcement_mode': enforcementMode.toTfJson(),
    'evaluation_mode': evaluationMode.toTfJson(),
    'require_attestations_by': ?requireAttestationsBy?.toTfJson(),
  };
}

/// `enforcement_mode` — derived from the provider schema description.
enum BinaryAuthorizationPolicyEnforcementMode implements TerraformEnum {
  enforcedBlockAndAuditLog('ENFORCED_BLOCK_AND_AUDIT_LOG'),
  dryrunAuditLogOnly('DRYRUN_AUDIT_LOG_ONLY');

  const BinaryAuthorizationPolicyEnforcementMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `evaluation_mode` — derived from the provider schema description.
enum BinaryAuthorizationPolicyEvaluationMode implements TerraformEnum {
  alwaysAllow('ALWAYS_ALLOW'),
  requireAttestation('REQUIRE_ATTESTATION'),
  alwaysDeny('ALWAYS_DENY');

  const BinaryAuthorizationPolicyEvaluationMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `default_admission_rule` block of
/// `google_binary_authorization_policy` (derived from provider schema).
@immutable
final class BinaryAuthorizationPolicyDefaultAdmissionRule {
  const BinaryAuthorizationPolicyDefaultAdmissionRule({
    required this.enforcementMode,
    required this.evaluationMode,
    this.requireAttestationsBy,
  });

  final TfArg<BinaryAuthorizationPolicyEnforcementMode> enforcementMode;

  final TfArg<BinaryAuthorizationPolicyEvaluationMode> evaluationMode;

  final TfArg<List<String>>? requireAttestationsBy;

  Map<String, Object?> encode() => {
    'enforcement_mode': enforcementMode.toTfJson(),
    'evaluation_mode': evaluationMode.toTfJson(),
    'require_attestations_by': ?requireAttestationsBy?.toTfJson(),
  };
}

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
///       BinaryAuthorizationPolicyEnforcementMode.enforcedBlockAndAuditLog,
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
    List<BinaryAuthorizationPolicyAdmissionWhitelistPatterns>?
    admissionWhitelistPatterns,
    List<BinaryAuthorizationPolicyClusterAdmissionRules>? clusterAdmissionRules,
    required BinaryAuthorizationPolicyDefaultAdmissionRule defaultAdmissionRule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'global_policy_evaluation_mode': ?globalPolicyEvaluationMode,
           'project': ?project,
           if (admissionWhitelistPatterns != null)
             'admission_whitelist_patterns': TfArg.literal([
               for (final e in admissionWhitelistPatterns) e.encode(),
             ]),
           if (clusterAdmissionRules != null)
             'cluster_admission_rules': TfArg.literal([
               for (final e in clusterAdmissionRules) e.encode(),
             ]),
           'default_admission_rule': TfArg.literal(
             defaultAdmissionRule.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBinaryAuthorizationPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBinaryAuthorizationPolicy>`.
  RefTo<GoogleBinaryAuthorizationPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `global_policy_evaluation_mode` attribute.
  TfRef<String> get globalPolicyEvaluationModeRef =>
      TfRef.attribute<String>(this, 'global_policy_evaluation_mode');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
