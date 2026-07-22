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
final class ManagedKafkaAclAclEntries {
  const ManagedKafkaAclAclEntries({
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
    if (host != null) 'host': host!.toTfJson(),
    'operation': operation.toTfJson(),
    if (permissionType != null) 'permission_type': permissionType!.toTfJson(),
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
///   cluster: TfArg.ref(cluster.clusterIdRef),
///   location: TfArg.literal('us-central1'),
///   aclEntries: [
///     ManagedKafkaAclAclEntries(
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
    required List<ManagedKafkaAclAclEntries> aclEntries,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'acl_id': aclId,
           'cluster': cluster,
           'location': location,
           'acl_entries': TfArg.literal([
             for (final e in aclEntries) e.encode(),
           ]),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleManagedKafkaAclSensitive;

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
  TfRef<String> get aclIdRef => TfRef.attribute<String>(this, 'acl_id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
