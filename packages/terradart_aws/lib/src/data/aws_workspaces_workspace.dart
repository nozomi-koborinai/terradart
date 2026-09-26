// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspaces_workspace`.
const Set<String> _awsWorkspacesWorkspaceSensitive = <String>{};

/// Factory wrapper for `aws_workspaces_workspace`.
final class DataAwsWorkspacesWorkspace extends Data {
  static const String tfType = 'aws_workspaces_workspace';

  DataAwsWorkspacesWorkspace({
    required super.localName,
    TfArg<String>? directoryId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? userName,
    TfArg<String>? workspaceId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (directoryId != null) 'directory_id': directoryId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (userName != null) 'user_name': userName,
           if (workspaceId != null) 'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkspacesWorkspaceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bundle_id` attribute.
  TfRef<String> get bundleId => TfRef.attribute<String>(this, 'bundle_id');

  /// Reference to `computer_name` attribute.
  TfRef<String> get computerName =>
      TfRef.attribute<String>(this, 'computer_name');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddress => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `root_volume_encryption_enabled` attribute.
  TfRef<bool> get rootVolumeEncryptionEnabled =>
      TfRef.attribute<bool>(this, 'root_volume_encryption_enabled');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `user_volume_encryption_enabled` attribute.
  TfRef<bool> get userVolumeEncryptionEnabled =>
      TfRef.attribute<bool>(this, 'user_volume_encryption_enabled');

  /// Reference to `volume_encryption_key` attribute.
  TfRef<String> get volumeEncryptionKey =>
      TfRef.attribute<String>(this, 'volume_encryption_key');

  /// Reference to `workspace_properties` attribute.
  TfRef<List<Map<String, Object?>>> get workspaceProperties =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'workspace_properties');
}
