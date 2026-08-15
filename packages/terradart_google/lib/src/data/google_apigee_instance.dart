// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_instance`.
const Set<String> _googleApigeeInstanceSensitive = <String>{};

/// Factory wrapper for `google_apigee_instance`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleApigeeInstance extends Data {
  static const String tfType = 'google_apigee_instance';

  DataGoogleApigeeInstance({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> orgId,
  }) : super(terraformType: tfType, argMap: {'name': name, 'org_id': orgId});

  @override
  Set<String> get sensitiveFields => _googleApigeeInstanceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_logging_config` attribute.
  TfRef<List<Map<String, Object?>>> get accessLoggingConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'access_logging_config',
      );

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

  /// Reference to `host` attribute.
  TfRef<String> get host => TfRef.attribute<String>(this, 'host');

  /// Reference to `ip_range` attribute.
  TfRef<String> get ipRange => TfRef.attribute<String>(this, 'ip_range');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `peering_cidr_range` attribute.
  TfRef<String> get peeringCidrRange =>
      TfRef.attribute<String>(this, 'peering_cidr_range');

  /// Reference to `port` attribute.
  TfRef<String> get port => TfRef.attribute<String>(this, 'port');

  /// Reference to `service_attachment` attribute.
  TfRef<String> get serviceAttachment =>
      TfRef.attribute<String>(this, 'service_attachment');
}
