// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_project_iam_audit_config`.
const Set<String> _googleProjectIamAuditConfigSensitive = <String>{};

/// Permission type for which IAM audit logging is configured.
enum ProjectIamAuditConfigAuditLogConfigLogType implements TerraformEnum {
  dataRead('DATA_READ'),
  dataWrite('DATA_WRITE'),
  adminRead('ADMIN_READ');

  const ProjectIamAuditConfigAuditLogConfigLogType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `audit_log_config` block of
/// `google_project_iam_audit_config` (derived from provider schema).
@immutable
final class ProjectIamAuditConfigAuditLogConfig {
  const ProjectIamAuditConfigAuditLogConfig({
    this.exemptedMembers,
    required this.logType,
  });

  final TfArg<List<Object?>>? exemptedMembers;

  final TfArg<String> logType;

  Map<String, Object?> encode() => {
    if (exemptedMembers != null)
      'exempted_members': exemptedMembers!.toTfJson(),
    'log_type': logType.toTfJson(),
  };
}

/// Factory wrapper for `google_project_iam_audit_config`.
///
/// Project-level **IAM audit logging config** — enables Admin Activity,
/// Data Access, or System Event audit logs for a service (or
/// `allServices`).
///
/// Prefer [ProjectIamAuditConfigAuditLogConfigLogType.adminRead] for smoke
/// stacks: Admin Activity audit logs are free. `DATA_READ` / `DATA_WRITE`
/// emit Data Access logs that count toward Cloud Logging ingestion volume.
///
/// Example:
/// ```dart
/// GoogleProjectIamAuditConfig(
///   localName: 'storage_admin_read',
///   project: TfArg.literal(projectId),
///   service: TfArg.literal('storage.googleapis.com'),
///   auditLogConfig: [
///     ProjectIamAuditConfigAuditLogConfig(
///       logType: TfArg.literal(
///         ProjectIamAuditConfigAuditLogConfigLogType.adminRead.terraformValue,
///       ),
///     ),
///   ],
/// );
/// ```
final class GoogleProjectIamAuditConfig extends Resource {
  static const String tfType = 'google_project_iam_audit_config';

  GoogleProjectIamAuditConfig({
    required super.localName,
    required TfArg<String> project,
    required TfArg<String> service,
    required List<ProjectIamAuditConfigAuditLogConfig> auditLogConfig,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'project': project,
           'service': service,
           'audit_log_config': TfArg.literal([
             for (final e in auditLogConfig) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleProjectIamAuditConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
