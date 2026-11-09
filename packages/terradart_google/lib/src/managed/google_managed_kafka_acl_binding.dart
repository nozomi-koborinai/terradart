// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_managed_kafka_acl_binding`.
const Set<String> _googleManagedKafkaAclBindingSensitive = <String>{};

/// Factory wrapper for `google_managed_kafka_acl_binding`.
///
/// A single grant (principal, operation, permission type and host) on a Managed
/// Service for Apache Kafka ACL. Unlike `google_managed_kafka_acl`, whose
/// `Update` call (`UpdateAcl`) replaces the entire `acl_entries` list, this
/// resource adds and removes exactly one entry via the `AddAclEntry` and
/// `RemoveAclEntry` RPCs, so multiple independently-managed Terraform
/// configurations can each own one grant on the same ACL without clobbering
/// each other's entries on `apply`. Apache Kafka is a trademark owned by the
/// Apache Software Foundation.
final class GoogleManagedKafkaAclBinding extends Resource {
  static const String tfType = 'google_managed_kafka_acl_binding';

  GoogleManagedKafkaAclBinding(
    super.localName, {
    required TfArg<String> aclId,
    required TfArg<String> cluster,
    TfArg<String>? deletionPolicy,
    TfArg<String>? host,
    required TfArg<String> location,
    required TfArg<String> operation,
    TfArg<String>? permissionType,
    required TfArg<String> principal,
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
           'deletion_policy': ?deletionPolicy,
           'host': ?host,
           'location': location,
           'operation': operation,
           'permission_type': ?permissionType,
           'principal': principal,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleManagedKafkaAclBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleManagedKafkaAclBinding>`.
  RefTo<GoogleManagedKafkaAclBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `acl_id` attribute.
  TfRef<String> get aclId => TfRef.attribute<String>(this, 'acl_id');

  /// Reference to `cluster` attribute.
  TfRef<String> get cluster => TfRef.attribute<String>(this, 'cluster');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `host` attribute.
  TfRef<String> get host => TfRef.attribute<String>(this, 'host');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `operation` attribute.
  TfRef<String> get operation => TfRef.attribute<String>(this, 'operation');

  /// Reference to `permission_type` attribute.
  TfRef<String> get permissionType =>
      TfRef.attribute<String>(this, 'permission_type');

  /// Reference to `principal` attribute.
  TfRef<String> get principal => TfRef.attribute<String>(this, 'principal');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
