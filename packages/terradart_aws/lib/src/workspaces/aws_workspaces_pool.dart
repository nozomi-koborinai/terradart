// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspaces_pool`.
const Set<String> _awsWorkspacesPoolSensitive = <String>{};

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
    required TfArg<String> runningMode,
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
           if (applicationSettings != null)
             'application_settings': applicationSettings,
           'bundle_id': bundleId,
           'description': description,
           'directory_id': directoryId,
           'pool_name': poolName,
           if (region != null) 'region': region,
           'running_mode': runningMode,
           if (tags != null) 'tags': tags,
           if (timeoutSettings != null) 'timeout_settings': timeoutSettings,
           if (capacity != null)
             'capacity': TfArg.literal([for (final e in capacity) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkspacesPoolSensitive;

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
}
