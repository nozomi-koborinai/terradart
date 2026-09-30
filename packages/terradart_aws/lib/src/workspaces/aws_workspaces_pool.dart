// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspaces_pool`.
const Set<String> _awsWorkspacesPoolSensitive = <String>{};

/// Workspaces Pool Running enum for `running_mode`.
enum WorkspacesPoolRunningMode implements TerraformEnum {
  autoStop('AUTO_STOP'),
  alwaysOn('ALWAYS_ON');

  const WorkspacesPoolRunningMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `capacity` block of
/// `aws_workspaces_pool` (derived from provider schema).
@immutable
final class WorkspacesPoolCapacity {
  const WorkspacesPoolCapacity({required this.desiredUserSessions});

  final TfArg<num> desiredUserSessions;

  Map<String, Object?> encode() => {
    'desired_user_sessions': desiredUserSessions.toTfJson(),
  };
}

/// Factory wrapper for `aws_workspaces_pool`.
final class AwsWorkspacesPool extends Resource {
  static const String tfType = 'aws_workspaces_pool';

  AwsWorkspacesPool({
    required super.localName,
    TfArg<List<Map<String, Object?>>>? applicationSettings,
    required TfArg<String> bundleId,
    required TfArg<String> description,
    required TfArg<String> directoryId,
    required TfArg<String> poolName,
    TfArg<String>? region,
    required TfArg<WorkspacesPoolRunningMode> runningMode,
    TfArg<Map<String, String>>? tags,
    TfArg<List<Map<String, Object?>>>? timeoutSettings,
    List<WorkspacesPoolCapacity>? capacity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_settings': ?applicationSettings,
           'bundle_id': bundleId,
           'description': description,
           'directory_id': directoryId,
           'pool_name': poolName,
           'region': ?region,
           'running_mode': runningMode,
           'tags': ?tags,
           'timeout_settings': ?timeoutSettings,
           if (capacity != null)
             'capacity': TfArg.literal([for (final e in capacity) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkspacesPoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWorkspacesPool>`.
  RefTo<AwsWorkspacesPool> get ref => RefTo.of(this);

  /// Reference to `capacity_status` attribute.
  TfRef<List<Map<String, Object?>>> get capacityStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'capacity_status');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `pool_arn` attribute.
  TfRef<String> get poolArn => TfRef.attribute<String>(this, 'pool_arn');

  /// Reference to `pool_id` attribute.
  TfRef<String> get poolId => TfRef.attribute<String>(this, 'pool_id');

  /// Reference to `s3_bucket_name` attribute.
  TfRef<String> get s3BucketName =>
      TfRef.attribute<String>(this, 's3_bucket_name');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `application_settings` attribute.
  TfRef<List<Map<String, Object?>>> get applicationSettingsRef =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'application_settings');

  /// Reference to `bundle_id` attribute.
  TfRef<String> get bundleIdRef => TfRef.attribute<String>(this, 'bundle_id');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `directory_id` attribute.
  TfRef<String> get directoryIdRef =>
      TfRef.attribute<String>(this, 'directory_id');

  /// Reference to `pool_name` attribute.
  TfRef<String> get poolNameRef => TfRef.attribute<String>(this, 'pool_name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `running_mode` attribute.
  TfRef<String> get runningModeRef =>
      TfRef.attribute<String>(this, 'running_mode');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `timeout_settings` attribute.
  TfRef<List<Map<String, Object?>>> get timeoutSettingsRef =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'timeout_settings');
}
