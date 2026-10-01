// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_iam_policy`.
const Set<String> _googleIamPolicySensitive = <String>{};

/// Typed helper for the `audit_config` block of
/// `google_iam_policy` (derived from provider schema).
@immutable
final class DataIamPolicyAuditConfig {
  const DataIamPolicyAuditConfig({
    required this.service,
    required this.auditLogConfigs,
  });

  final TfArg<String> service;

  final List<DataIamPolicyAuditLogConfigs> auditLogConfigs;

  Map<String, Object?> encode() => {
    'service': service.toTfJson(),
    'audit_log_configs': [for (final e in auditLogConfigs) e.encode()],
  };
}

/// Typed helper for the `audit_config.audit_log_configs` block of
/// `google_iam_policy` (derived from provider schema).
@immutable
final class DataIamPolicyAuditLogConfigs {
  const DataIamPolicyAuditLogConfigs({
    this.exemptedMembers,
    required this.logType,
  });

  final TfArg<List<IamPrincipal>>? exemptedMembers;

  final TfArg<String> logType;

  Map<String, Object?> encode() => {
    'exempted_members': ?exemptedMembers?.toTfJson(),
    'log_type': logType.toTfJson(),
  };
}

/// Typed helper for the `binding` block of
/// `google_iam_policy` (derived from provider schema).
@immutable
final class DataIamPolicyBinding {
  const DataIamPolicyBinding({
    required this.members,
    required this.role,
    this.condition,
  });

  final TfArg<List<IamPrincipal>> members;

  final TfArg<String> role;

  final DataIamPolicyCondition? condition;

  Map<String, Object?> encode() => {
    'members': members.toTfJson(),
    'role': role.toTfJson(),
    'condition': ?condition?.encode(),
  };
}

/// Typed helper for the `binding.condition` block of
/// `google_iam_policy` (derived from provider schema).
@immutable
final class DataIamPolicyCondition {
  const DataIamPolicyCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleIamPolicy extends Data {
  static const String tfType = 'google_iam_policy';

  DataGoogleIamPolicy(
    super.localName, {
    List<DataIamPolicyAuditConfig>? auditConfig,
    List<DataIamPolicyBinding>? binding,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (auditConfig != null)
             'audit_config': TfArg.literal([
               for (final e in auditConfig) e.encode(),
             ]),
           if (binding != null)
             'binding': TfArg.literal([for (final e in binding) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
