// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_instance`.
const Set<String> _googleApigeeInstanceSensitive = <String>{};

/// Typed helper for the `access_logging_config` block of
/// `google_apigee_instance` (derived from provider schema).
@immutable
final class ApigeeInstanceAccessLoggingConfig {
  const ApigeeInstanceAccessLoggingConfig({required this.enabled, this.filter});

  final TfArg<bool> enabled;

  final TfArg<String>? filter;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'filter': ?filter?.toTfJson(),
  };
}

/// Factory wrapper for `google_apigee_instance`.
///
/// An `Instance` is the runtime dataplane in Apigee.
///
/// Apigee **instance** — regional runtime that processes API traffic.
///
/// **Cost:** Cloud Billing Catalog service `1C2D-8C78-EC58` bills
/// **Gateway Node Hours** while the instance exists (SKU
/// `0136-18C1-DD41` **$1.025/h**) plus environment usage (e.g.
/// Intermediate `421B-D6C0-52A2` **$2/h**; Comprehensive
/// `01C8-CFFA-106E` **$4.7/h`). Destroy stops instance/gateway charges.
/// Too expensive for apply-smoke — factories ship without a quickstart.
///
/// Requires a parent [GoogleApigeeOrganization] ([orgId]), [name], and
/// [location]. Enable `apigee.googleapis.com` via
/// [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleApigeeInstance(
///   localName: 'runtime',
///   name: TfArg.literal('terradart-apigee'),
///   location: TfArg.literal('us-central1'),
///   orgId: org.nameRef,
/// );
/// ```
final class GoogleApigeeInstance extends Resource {
  static const String tfType = 'google_apigee_instance';

  GoogleApigeeInstance({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> orgId,
    TfArg<String>? peeringCidrRange,
    TfArg<String>? ipRange,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<String>? diskEncryptionKeyName,
    TfArg<List<String>>? consumerAcceptList,
    ApigeeInstanceAccessLoggingConfig? accessLoggingConfig,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'org_id': orgId,
           'peering_cidr_range': ?peeringCidrRange,
           'ip_range': ?ipRange,
           'display_name': ?displayName,
           'description': ?description,
           'disk_encryption_key_name': ?diskEncryptionKeyName,
           'consumer_accept_list': ?consumerAcceptList,
           if (accessLoggingConfig != null)
             'access_logging_config': TfArg.literal(
               accessLoggingConfig.encode(),
             ),
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApigeeInstance>`.
  RefTo<GoogleApigeeInstance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `host` attribute.
  TfRef<String> get host => TfRef.attribute<String>(this, 'host');

  /// Reference to `port` attribute.
  TfRef<String> get port => TfRef.attribute<String>(this, 'port');

  /// Reference to `service_attachment` attribute.
  TfRef<String> get serviceAttachment =>
      TfRef.attribute<String>(this, 'service_attachment');

  /// Reference to `consumer_accept_list` attribute.
  TfRef<List<String>> get consumerAcceptList =>
      TfRef.attribute<List<String>>(this, 'consumer_accept_list');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disk_encryption_key_name` attribute.
  TfRef<String> get diskEncryptionKeyName =>
      TfRef.attribute<String>(this, 'disk_encryption_key_name');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `ip_range` attribute.
  TfRef<String> get ipRange => TfRef.attribute<String>(this, 'ip_range');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `peering_cidr_range` attribute.
  TfRef<String> get peeringCidrRange =>
      TfRef.attribute<String>(this, 'peering_cidr_range');
}
