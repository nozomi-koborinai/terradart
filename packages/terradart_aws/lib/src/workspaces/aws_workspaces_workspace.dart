// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspaces_workspace`.
const Set<String> _awsWorkspacesWorkspaceSensitive = <String>{};

/// Typed helper for the `workspace_properties` block of
/// `aws_workspaces_workspace` (derived from provider schema).
@immutable
final class WorkspacesWorkspaceWorkspaceProperties {
  const WorkspacesWorkspaceWorkspaceProperties({
    this.computeTypeName,
    this.rootVolumeSizeGib,
    this.runningMode,
    this.runningModeAutoStopTimeoutInMinutes,
    this.userVolumeSizeGib,
  });

  final TfArg<String>? computeTypeName;

  final TfArg<num>? rootVolumeSizeGib;

  final TfArg<String>? runningMode;

  final TfArg<num>? runningModeAutoStopTimeoutInMinutes;

  final TfArg<num>? userVolumeSizeGib;

  Map<String, Object?> encode() => {
    if (computeTypeName != null)
      'compute_type_name': computeTypeName!.toTfJson(),
    if (rootVolumeSizeGib != null)
      'root_volume_size_gib': rootVolumeSizeGib!.toTfJson(),
    if (runningMode != null) 'running_mode': runningMode!.toTfJson(),
    if (runningModeAutoStopTimeoutInMinutes != null)
      'running_mode_auto_stop_timeout_in_minutes':
          runningModeAutoStopTimeoutInMinutes!.toTfJson(),
    if (userVolumeSizeGib != null)
      'user_volume_size_gib': userVolumeSizeGib!.toTfJson(),
  };
}

/// Factory wrapper for `aws_workspaces_workspace`.
final class AwsWorkspacesWorkspace extends Resource {
  static const String tfType = 'aws_workspaces_workspace';

  AwsWorkspacesWorkspace({
    required super.localName,
    required TfArg<String> bundleId,
    required TfArg<String> directoryId,
    TfArg<String>? region,
    TfArg<bool>? rootVolumeEncryptionEnabled,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> userName,
    TfArg<bool>? userVolumeEncryptionEnabled,
    TfArg<String>? volumeEncryptionKey,
    WorkspacesWorkspaceWorkspaceProperties? workspaceProperties,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bundle_id': bundleId,
           'directory_id': directoryId,
           if (region != null) 'region': region,
           if (rootVolumeEncryptionEnabled != null)
             'root_volume_encryption_enabled': rootVolumeEncryptionEnabled,
           if (tags != null) 'tags': tags,
           'user_name': userName,
           if (userVolumeEncryptionEnabled != null)
             'user_volume_encryption_enabled': userVolumeEncryptionEnabled,
           if (volumeEncryptionKey != null)
             'volume_encryption_key': volumeEncryptionKey,
           if (workspaceProperties != null)
             'workspace_properties': TfArg.literal(
               workspaceProperties.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkspacesWorkspaceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `computer_name` attribute.
  TfRef<String> get computerName =>
      TfRef.attribute<String>(this, 'computer_name');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddress => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
