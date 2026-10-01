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
final class WorkspacesWorkspaceProperties {
  const WorkspacesWorkspaceProperties({
    this.computeTypeName,
    this.rootVolumeSizeGib,
    this.runningMode,
    this.runningModeAutoStopTimeoutInMinutes,
    this.userVolumeSizeGib,
  });

  final TfArg<WorkspacesWorkspaceComputeTypeName>? computeTypeName;

  final TfArg<num>? rootVolumeSizeGib;

  final TfArg<WorkspacesWorkspaceRunningMode>? runningMode;

  final TfArg<num>? runningModeAutoStopTimeoutInMinutes;

  final TfArg<num>? userVolumeSizeGib;

  Map<String, Object?> encode() => {
    'compute_type_name': ?computeTypeName?.toTfJson(),
    'root_volume_size_gib': ?rootVolumeSizeGib?.toTfJson(),
    'running_mode': ?runningMode?.toTfJson(),
    'running_mode_auto_stop_timeout_in_minutes':
        ?runningModeAutoStopTimeoutInMinutes?.toTfJson(),
    'user_volume_size_gib': ?userVolumeSizeGib?.toTfJson(),
  };
}

/// `compute_type_name` — derived from the provider schema description.
enum WorkspacesWorkspaceComputeTypeName implements TerraformEnum {
  value('VALUE'),
  standard('STANDARD'),
  performance('PERFORMANCE'),
  power('POWER'),
  graphics('GRAPHICS'),
  powerpro('POWERPRO'),
  generalpurpose4xlarge('GENERALPURPOSE_4XLARGE'),
  generalpurpose8xlarge('GENERALPURPOSE_8XLARGE'),
  graphicspro('GRAPHICSPRO'),
  graphicsG4dn('GRAPHICS_G4DN'),
  graphicsproG4dn('GRAPHICSPRO_G4DN'),
  graphicsG6Xlarge('GRAPHICS_G6_XLARGE'),
  graphicsG62xlarge('GRAPHICS_G6_2XLARGE'),
  graphicsG64xlarge('GRAPHICS_G6_4XLARGE'),
  graphicsG68xlarge('GRAPHICS_G6_8XLARGE'),
  graphicsG616xlarge('GRAPHICS_G6_16XLARGE'),
  graphicsGr64xlarge('GRAPHICS_GR6_4XLARGE'),
  graphicsGr68xlarge('GRAPHICS_GR6_8XLARGE'),
  graphicsG6fLarge('GRAPHICS_G6F_LARGE'),
  graphicsG6fXlarge('GRAPHICS_G6F_XLARGE'),
  graphicsG6f2xlarge('GRAPHICS_G6F_2XLARGE'),
  graphicsG6f4xlarge('GRAPHICS_G6F_4XLARGE'),
  graphicsGr6f4xlarge('GRAPHICS_GR6F_4XLARGE');

  const WorkspacesWorkspaceComputeTypeName(this.terraformValue);
  @override
  final String terraformValue;
}

/// `running_mode` — derived from the provider schema description.
enum WorkspacesWorkspaceRunningMode implements TerraformEnum {
  alwaysOn('ALWAYS_ON'),
  autoStop('AUTO_STOP');

  const WorkspacesWorkspaceRunningMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_workspaces_workspace`.
final class AwsWorkspacesWorkspace extends Resource {
  static const String tfType = 'aws_workspaces_workspace';

  AwsWorkspacesWorkspace(
    super.localName, {
    required TfArg<String> bundleId,
    required TfArg<String> directoryId,
    TfArg<String>? region,
    TfArg<bool>? rootVolumeEncryptionEnabled,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> userName,
    TfArg<bool>? userVolumeEncryptionEnabled,
    TfArg<String>? volumeEncryptionKey,
    WorkspacesWorkspaceProperties? workspaceProperties,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bundle_id': bundleId,
           'directory_id': directoryId,
           'region': ?region,
           'root_volume_encryption_enabled': ?rootVolumeEncryptionEnabled,
           'tags': ?tags,
           'user_name': userName,
           'user_volume_encryption_enabled': ?userVolumeEncryptionEnabled,
           'volume_encryption_key': ?volumeEncryptionKey,
           if (workspaceProperties != null)
             'workspace_properties': TfArg.literal(
               workspaceProperties.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkspacesWorkspaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWorkspacesWorkspace>`.
  RefTo<AwsWorkspacesWorkspace> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `computer_name` attribute.
  TfRef<String> get computerName =>
      TfRef.attribute<String>(this, 'computer_name');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddress => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `bundle_id` attribute.
  TfRef<String> get bundleId => TfRef.attribute<String>(this, 'bundle_id');

  /// Reference to `directory_id` attribute.
  TfRef<String> get directoryId =>
      TfRef.attribute<String>(this, 'directory_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `root_volume_encryption_enabled` attribute.
  TfRef<bool> get rootVolumeEncryptionEnabled =>
      TfRef.attribute<bool>(this, 'root_volume_encryption_enabled');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `user_name` attribute.
  TfRef<String> get userName => TfRef.attribute<String>(this, 'user_name');

  /// Reference to `user_volume_encryption_enabled` attribute.
  TfRef<bool> get userVolumeEncryptionEnabled =>
      TfRef.attribute<bool>(this, 'user_volume_encryption_enabled');

  /// Reference to `volume_encryption_key` attribute.
  TfRef<String> get volumeEncryptionKey =>
      TfRef.attribute<String>(this, 'volume_encryption_key');
}
