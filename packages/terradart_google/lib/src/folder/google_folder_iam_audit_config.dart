// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_folder_iam_audit_config`.
const Set<String> _googleFolderIamAuditConfigSensitive = <String>{};

/// Typed helper for the `audit_log_config` block of
/// `google_folder_iam_audit_config` (derived from provider schema).
@immutable
final class FolderIamAuditConfigAuditLogConfig {
  const FolderIamAuditConfigAuditLogConfig({
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

/// Factory wrapper for `google_folder_iam_audit_config`.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleFolderIamAuditConfig extends Resource {
  static const String tfType = 'google_folder_iam_audit_config';

  GoogleFolderIamAuditConfig({
    required super.localName,
    required TfArg<String> folder,
    required TfArg<String> service,
    required List<FolderIamAuditConfigAuditLogConfig> auditLogConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'folder': folder,
           'service': service,
           'audit_log_config': TfArg.literal([
             for (final e in auditLogConfig) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFolderIamAuditConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFolderIamAuditConfig>`.
  RefTo<GoogleFolderIamAuditConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `folder` attribute.
  TfRef<String> get folder => TfRef.attribute<String>(this, 'folder');

  /// Reference to `service` attribute.
  TfRef<String> get service => TfRef.attribute<String>(this, 'service');
}
