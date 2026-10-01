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

  final BinaryAuthorizationPolicyEnforcementMode enforcementMode;

  final BinaryAuthorizationPolicyEvaluationMode evaluationMode;

  final TfArg<List<String>>? requireAttestationsBy;

  Map<String, Object?> encode() => {
    'cluster': cluster.toTfJson(),
    'enforcement_mode': enforcementMode.toTfJson(),
    'evaluation_mode': evaluationMode.toTfJson(),
    'require_attestations_by': ?requireAttestationsBy?.toTfJson(),
  };
}

/// `enforcement_mode` — derived from the provider schema description.
extension type const BinaryAuthorizationPolicyEnforcementMode._(TfArg<String> _)
    implements TfArg<String> {
  BinaryAuthorizationPolicyEnforcementMode.variable(String name)
    : this._(TfArg.variable(name));
  BinaryAuthorizationPolicyEnforcementMode.expression(String template)
    : this._(TfArg.expression(template));
  const BinaryAuthorizationPolicyEnforcementMode.arg(TfArg<String> arg)
    : this._(arg);

  static const enforcedBlockAndAuditLog =
      BinaryAuthorizationPolicyEnforcementMode._(
        TfArgLiteral('ENFORCED_BLOCK_AND_AUDIT_LOG'),
      );
  static const dryrunAuditLogOnly = BinaryAuthorizationPolicyEnforcementMode._(
    TfArgLiteral('DRYRUN_AUDIT_LOG_ONLY'),
  );

  static const List<BinaryAuthorizationPolicyEnforcementMode> values = [
    enforcedBlockAndAuditLog,
    dryrunAuditLogOnly,
  ];
}

/// `evaluation_mode` — derived from the provider schema description.
extension type const BinaryAuthorizationPolicyEvaluationMode._(TfArg<String> _)
    implements TfArg<String> {
  BinaryAuthorizationPolicyEvaluationMode.variable(String name)
    : this._(TfArg.variable(name));
  BinaryAuthorizationPolicyEvaluationMode.expression(String template)
    : this._(TfArg.expression(template));
  const BinaryAuthorizationPolicyEvaluationMode.arg(TfArg<String> arg)
    : this._(arg);

  static const alwaysAllow = BinaryAuthorizationPolicyEvaluationMode._(
    TfArgLiteral('ALWAYS_ALLOW'),
  );
  static const requireAttestation = BinaryAuthorizationPolicyEvaluationMode._(
    TfArgLiteral('REQUIRE_ATTESTATION'),
  );
  static const alwaysDeny = BinaryAuthorizationPolicyEvaluationMode._(
    TfArgLiteral('ALWAYS_DENY'),
  );

  static const List<BinaryAuthorizationPolicyEvaluationMode> values = [
    alwaysAllow,
    requireAttestation,
    alwaysDeny,
  ];
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

  final BinaryAuthorizationPolicyEnforcementMode enforcementMode;

  final BinaryAuthorizationPolicyEvaluationMode evaluationMode;

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
///   'project_policy',
///   defaultAdmissionRule: BinaryAuthorizationPolicyDefaultAdmissionRule(
///     evaluationMode: BinaryAuthorizationPolicyEvaluationMode.alwaysAllow,
///     enforcementMode: BinaryAuthorizationPolicyEnforcementMode.enforcedBlockAndAuditLog,
///   ),
/// );
/// ```
final class GoogleBinaryAuthorizationPolicy extends Resource {
  static const String tfType = 'google_binary_authorization_policy';

  GoogleBinaryAuthorizationPolicy(
    super.localName, {
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
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `global_policy_evaluation_mode` attribute.
  TfRef<String> get globalPolicyEvaluationMode =>
      TfRef.attribute<String>(this, 'global_policy_evaluation_mode');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
