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

  final WorkspacesWorkspaceComputeTypeName? computeTypeName;

  final TfArg<num>? rootVolumeSizeGib;

  final WorkspacesWorkspaceRunningMode? runningMode;

  final TfArg<num>? runningModeAutoStopTimeoutInMinutes;

  final TfArg<num>? userVolumeSizeGib;

  @internal
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
extension type const WorkspacesWorkspaceComputeTypeName._(TfArg<String> _)
    implements TfArg<String> {
  WorkspacesWorkspaceComputeTypeName.variable(String name)
    : this._(TfArg.variable(name));
  WorkspacesWorkspaceComputeTypeName.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspacesWorkspaceComputeTypeName.arg(TfArg<String> arg) : this._(arg);

  static const value = WorkspacesWorkspaceComputeTypeName._(
    TfArgLiteral('VALUE'),
  );
  static const standard = WorkspacesWorkspaceComputeTypeName._(
    TfArgLiteral('STANDARD'),
  );
  static const performance = WorkspacesWorkspaceComputeTypeName._(
    TfArgLiteral('PERFORMANCE'),
  );
  static const power = WorkspacesWorkspaceComputeTypeName._(
    TfArgLiteral('POWER'),
  );
  static const graphics = WorkspacesWorkspaceComputeTypeName._(
    TfArgLiteral('GRAPHICS'),
  );
  static const powerpro = WorkspacesWorkspaceComputeTypeName._(
    TfArgLiteral('POWERPRO'),
  );
  static const generalpurpose4xlarge = WorkspacesWorkspaceComputeTypeName._(
    TfArgLiteral('GENERALPURPOSE_4XLARGE'),
  );
  static const generalpurpose8xlarge = WorkspacesWorkspaceComputeTypeName._(
    TfArgLiteral('GENERALPURPOSE_8XLARGE'),
  );
  static const graphicspro = WorkspacesWorkspaceComputeTypeName._(
    TfArgLiteral('GRAPHICSPRO'),
  );
  static const graphicsG4dn = WorkspacesWorkspaceComputeTypeName._(
    TfArgLiteral('GRAPHICS_G4DN'),
  );
  static const graphicsproG4dn = WorkspacesWorkspaceComputeTypeName._(
    TfArgLiteral('GRAPHICSPRO_G4DN'),
  );
  static const graphicsG6Xlarge = WorkspacesWorkspaceComputeTypeName._(
    TfArgLiteral('GRAPHICS_G6_XLARGE'),
  );
  static const graphicsG62xlarge = WorkspacesWorkspaceComputeTypeName._(
    TfArgLiteral('GRAPHICS_G6_2XLARGE'),
  );
  static const graphicsG64xlarge = WorkspacesWorkspaceComputeTypeName._(
    TfArgLiteral('GRAPHICS_G6_4XLARGE'),
  );
  static const graphicsG68xlarge = WorkspacesWorkspaceComputeTypeName._(
    TfArgLiteral('GRAPHICS_G6_8XLARGE'),
  );
  static const graphicsG616xlarge = WorkspacesWorkspaceComputeTypeName._(
    TfArgLiteral('GRAPHICS_G6_16XLARGE'),
  );
  static const graphicsGr64xlarge = WorkspacesWorkspaceComputeTypeName._(
    TfArgLiteral('GRAPHICS_GR6_4XLARGE'),
  );
  static const graphicsGr68xlarge = WorkspacesWorkspaceComputeTypeName._(
    TfArgLiteral('GRAPHICS_GR6_8XLARGE'),
  );
  static const graphicsG6fLarge = WorkspacesWorkspaceComputeTypeName._(
    TfArgLiteral('GRAPHICS_G6F_LARGE'),
  );
  static const graphicsG6fXlarge = WorkspacesWorkspaceComputeTypeName._(
    TfArgLiteral('GRAPHICS_G6F_XLARGE'),
  );
  static const graphicsG6f2xlarge = WorkspacesWorkspaceComputeTypeName._(
    TfArgLiteral('GRAPHICS_G6F_2XLARGE'),
  );
  static const graphicsG6f4xlarge = WorkspacesWorkspaceComputeTypeName._(
    TfArgLiteral('GRAPHICS_G6F_4XLARGE'),
  );
  static const graphicsGr6f4xlarge = WorkspacesWorkspaceComputeTypeName._(
    TfArgLiteral('GRAPHICS_GR6F_4XLARGE'),
  );

  static const List<WorkspacesWorkspaceComputeTypeName> values = [
    value,
    standard,
    performance,
    power,
    graphics,
    powerpro,
    generalpurpose4xlarge,
    generalpurpose8xlarge,
    graphicspro,
    graphicsG4dn,
    graphicsproG4dn,
    graphicsG6Xlarge,
    graphicsG62xlarge,
    graphicsG64xlarge,
    graphicsG68xlarge,
    graphicsG616xlarge,
    graphicsGr64xlarge,
    graphicsGr68xlarge,
    graphicsG6fLarge,
    graphicsG6fXlarge,
    graphicsG6f2xlarge,
    graphicsG6f4xlarge,
    graphicsGr6f4xlarge,
  ];
}

/// `running_mode` — derived from the provider schema description.
extension type const WorkspacesWorkspaceRunningMode._(TfArg<String> _)
    implements TfArg<String> {
  WorkspacesWorkspaceRunningMode.variable(String name)
    : this._(TfArg.variable(name));
  WorkspacesWorkspaceRunningMode.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspacesWorkspaceRunningMode.arg(TfArg<String> arg) : this._(arg);

  static const alwaysOn = WorkspacesWorkspaceRunningMode._(
    TfArgLiteral('ALWAYS_ON'),
  );
  static const autoStop = WorkspacesWorkspaceRunningMode._(
    TfArgLiteral('AUTO_STOP'),
  );

  static const List<WorkspacesWorkspaceRunningMode> values = [
    alwaysOn,
    autoStop,
  ];
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
