// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspacesweb_ip_access_settings`.
const Set<String> _awsWorkspaceswebIpAccessSettingsSensitive = <String>{};

/// Typed helper for the `ip_rule` block of
/// `aws_workspacesweb_ip_access_settings` (derived from provider schema).
@immutable
final class WorkspaceswebIpAccessSettingsIpRule {
  const WorkspaceswebIpAccessSettingsIpRule({
    this.description,
    required this.ipRange,
  });

  final TfArg<String>? description;

  final TfArg<String> ipRange;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'ip_range': ipRange.toTfJson(),
  };
}

/// Factory wrapper for `aws_workspacesweb_ip_access_settings`.
final class AwsWorkspaceswebIpAccessSettings extends Resource {
  static const String tfType = 'aws_workspacesweb_ip_access_settings';

  AwsWorkspaceswebIpAccessSettings({
    required super.localName,
    TfArg<Map<String, String>>? additionalEncryptionContext,
    TfArg<String>? customerManagedKey,
    TfArg<String>? description,
    required TfArg<String> displayName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<WorkspaceswebIpAccessSettingsIpRule>? ipRule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'additional_encryption_context': ?additionalEncryptionContext,
           'customer_managed_key': ?customerManagedKey,
           'description': ?description,
           'display_name': displayName,
           'region': ?region,
           'tags': ?tags,
           if (ipRule != null)
             'ip_rule': TfArg.literal([for (final e in ipRule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkspaceswebIpAccessSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWorkspaceswebIpAccessSettings>`.
  RefTo<AwsWorkspaceswebIpAccessSettings> get ref => RefTo.of(this);

  /// Reference to `associated_portal_arns` attribute.
  TfRef<List<String>> get associatedPortalArns =>
      TfRef.attribute<List<String>>(this, 'associated_portal_arns');

  /// Reference to `ip_access_settings_arn` attribute.
  TfRef<String> get ipAccessSettingsArn =>
      TfRef.attribute<String>(this, 'ip_access_settings_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `additional_encryption_context` attribute.
  TfRef<Map<String, String>> get additionalEncryptionContextRef =>
      TfRef.attribute<Map<String, String>>(
        this,
        'additional_encryption_context',
      );

  /// Reference to `customer_managed_key` attribute.
  TfRef<String> get customerManagedKeyRef =>
      TfRef.attribute<String>(this, 'customer_managed_key');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
