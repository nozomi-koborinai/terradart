// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_project_iam_audit_config`.
const Set<String> _googleProjectIamAuditConfigSensitive = <String>{};

/// Permission type for which IAM audit logging is configured.
extension type const ProjectIamAuditConfigAuditLogConfigLogType._(
  TfArg<String> _
) implements TfArg<String> {
  ProjectIamAuditConfigAuditLogConfigLogType.variable(String name)
    : this._(TfArg.variable(name));
  ProjectIamAuditConfigAuditLogConfigLogType.expression(String template)
    : this._(TfArg.expression(template));
  const ProjectIamAuditConfigAuditLogConfigLogType.arg(TfArg<String> arg)
    : this._(arg);

  static const dataRead = ProjectIamAuditConfigAuditLogConfigLogType._(
    TfArgLiteral('DATA_READ'),
  );
  static const dataWrite = ProjectIamAuditConfigAuditLogConfigLogType._(
    TfArgLiteral('DATA_WRITE'),
  );
  static const adminRead = ProjectIamAuditConfigAuditLogConfigLogType._(
    TfArgLiteral('ADMIN_READ'),
  );

  static const List<ProjectIamAuditConfigAuditLogConfigLogType> values = [
    dataRead,
    dataWrite,
    adminRead,
  ];
}

/// Typed helper for the `audit_log_config` block of
/// `google_project_iam_audit_config` (derived from provider schema).
@immutable
final class ProjectIamAuditConfigAuditLogConfig {
  const ProjectIamAuditConfigAuditLogConfig({
    this.exemptedMembers,
    required this.logType,
  });

  final TfArg<List<IamPrincipal>>? exemptedMembers;

  final TfArg<String> logType;

  @internal
  Map<String, Object?> encode() => {
    'exempted_members': ?exemptedMembers?.toTfJson(),
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
///   'storage_admin_read',
///   project: TfArg.literal(projectId),
///   service: TfArg.literal('storage.googleapis.com'),
///   auditLogConfig: [
///     ProjectIamAuditConfigAuditLogConfig(
///       logType: ProjectIamAuditConfigAuditLogConfigLogType.adminRead,
///     ),
///   ],
/// );
/// ```
final class GoogleProjectIamAuditConfig extends Resource {
  static const String tfType = 'google_project_iam_audit_config';

  GoogleProjectIamAuditConfig(
    super.localName, {
    required TfArg<String> project,
    required TfArg<String> service,
    required List<ProjectIamAuditConfigAuditLogConfig> auditLogConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleProjectIamAuditConfig>`.
  RefTo<GoogleProjectIamAuditConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `service` attribute.
  TfRef<String> get service => TfRef.attribute<String>(this, 'service');
}
