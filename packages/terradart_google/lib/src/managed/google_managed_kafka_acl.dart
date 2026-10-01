// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_managed_kafka_acl`.
const Set<String> _googleManagedKafkaAclSensitive = <String>{};

/// Typed helper for the `acl_entries` block of
/// `google_managed_kafka_acl` (derived from provider schema).
@immutable
final class ManagedKafkaAclEntries {
  const ManagedKafkaAclEntries({
    this.host,
    required this.operation,
    this.permissionType,
    required this.principal,
  });

  final TfArg<String>? host;

  final TfArg<String> operation;

  final TfArg<String>? permissionType;

  final TfArg<String> principal;

  Map<String, Object?> encode() => {
    'host': ?host?.toTfJson(),
    'operation': operation.toTfJson(),
    'permission_type': ?permissionType?.toTfJson(),
    'principal': principal.toTfJson(),
  };
}

/// Factory wrapper for `google_managed_kafka_acl`.
///
/// A Managed Service for Apache Kafka ACL. Apache Kafka is a trademark owned by
/// the Apache Software Foundation.
///
/// Kafka **ACL** entry set on a [GoogleManagedKafkaCluster].
///
/// **Cost:** no separate Cloud Billing Catalog SKU — ACL metadata on the
/// parent cluster. Deferred with the cluster (no apply-smoke quickstart).
///
/// [aclId] encodes the resource pattern (see provider docs). Provide at
/// least one [aclEntries] principal/operation.
///
/// Example:
/// ```dart
/// GoogleManagedKafkaAcl(
///   localName: 'eventsAcl',
///   aclId: TfArg.literal('topic/events'),
///   cluster: cluster.clusterId,
///   location: TfArg.literal('us-central1'),
///   aclEntries: [
///     ManagedKafkaAclEntries(
///       principal: TfArg.literal('User:serviceAccount:sa@proj.iam.gserviceaccount.com'),
///       operation: TfArg.literal('ALL'),
///       permissionType: TfArg.literal('ALLOW'),
///     ),
///   ],
/// );
/// ```
final class GoogleManagedKafkaAcl extends Resource {
  static const String tfType = 'google_managed_kafka_acl';

  GoogleManagedKafkaAcl({
    required super.localName,
    required TfArg<String> aclId,
    required TfArg<String> cluster,
    required TfArg<String> location,
    required List<ManagedKafkaAclEntries> aclEntries,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'acl_id': aclId,
           'cluster': cluster,
           'location': location,
           'acl_entries': TfArg.literal([
             for (final e in aclEntries) e.encode(),
           ]),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleManagedKafkaAclSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleManagedKafkaAcl>`.
  RefTo<GoogleManagedKafkaAcl> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `pattern_type` attribute.
  TfRef<String> get patternType =>
      TfRef.attribute<String>(this, 'pattern_type');

  /// Reference to `resource_name` attribute.
  TfRef<String> get resourceName =>
      TfRef.attribute<String>(this, 'resource_name');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');

  /// Reference to `acl_id` attribute.
  TfRef<String> get aclId => TfRef.attribute<String>(this, 'acl_id');

  /// Reference to `cluster` attribute.
  TfRef<String> get cluster => TfRef.attribute<String>(this, 'cluster');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
