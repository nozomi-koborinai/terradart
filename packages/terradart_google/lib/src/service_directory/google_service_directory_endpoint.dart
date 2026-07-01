// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_service_directory_endpoint`.
const Set<String> _googleServiceDirectoryEndpointSensitive = <String>{};

/// Factory wrapper for `google_service_directory_endpoint`.
///
/// An individual endpoint that provides a service.
final class GoogleServiceDirectoryEndpoint extends Resource {
  static const String tfType = 'google_service_directory_endpoint';

  GoogleServiceDirectoryEndpoint({
    required super.localName,
    required TfArg<String> endpointId,
    required TfArg<String> service,
    TfArg<String>? address,
    TfArg<num>? port,
    TfArg<String>? network,
    TfArg<Map<String, String>>? metadata,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'endpoint_id': endpointId,
           'service': service,
           if (address != null) 'address': address,
           if (port != null) 'port': port,
           if (network != null) 'network': network,
           if (metadata != null) 'metadata': metadata,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleServiceDirectoryEndpointSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
