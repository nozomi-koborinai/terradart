// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../service_directory/google_service_directory_service.dart'
    show GoogleServiceDirectoryService;

/// Sensitive field paths for `google_service_directory_endpoint`.
const Set<String> _googleServiceDirectoryEndpointSensitive = <String>{};

/// Factory wrapper for `google_service_directory_endpoint`.
///
/// An individual endpoint that provides a service.
final class GoogleServiceDirectoryEndpoint extends Resource {
  static const String tfType = 'google_service_directory_endpoint';

  GoogleServiceDirectoryEndpoint(
    super.localName, {
    required TfArg<String> endpointId,
    required RefTo<GoogleServiceDirectoryService> service,
    TfArg<String>? address,
    TfArg<num>? port,
    TfArg<String>? network,
    TfArg<Map<String, String>>? metadata,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'endpoint_id': endpointId,
           'service': service.encodeAs('id'),
           'address': ?address,
           'port': ?port,
           'network': ?network,
           'metadata': ?metadata,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleServiceDirectoryEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleServiceDirectoryEndpoint>`.
  RefTo<GoogleServiceDirectoryEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address` attribute.
  TfRef<String> get address => TfRef.attribute<String>(this, 'address');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `endpoint_id` attribute.
  TfRef<String> get endpointId => TfRef.attribute<String>(this, 'endpoint_id');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `service` attribute.
  TfRef<String> get service => TfRef.attribute<String>(this, 'service');
}
