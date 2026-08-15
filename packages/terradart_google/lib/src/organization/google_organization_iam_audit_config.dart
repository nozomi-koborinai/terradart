// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_organization_iam_audit_config`.
const Set<String> _googleOrganizationIamAuditConfigSensitive = <String>{};

/// Typed helper for the `audit_log_config` block of
/// `google_organization_iam_audit_config` (derived from provider schema).
@immutable
final class OrganizationIamAuditConfigAuditLogConfig {
  const OrganizationIamAuditConfigAuditLogConfig({
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

/// Factory wrapper for `google_organization_iam_audit_config`.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleOrganizationIamAuditConfig extends Resource {
  static const String tfType = 'google_organization_iam_audit_config';

  GoogleOrganizationIamAuditConfig({
    required super.localName,
    required TfArg<String> orgId,
    required TfArg<String> service,
    required List<OrganizationIamAuditConfigAuditLogConfig> auditLogConfig,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'org_id': orgId,
           'service': service,
           'audit_log_config': TfArg.literal([
             for (final e in auditLogConfig) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOrganizationIamAuditConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
