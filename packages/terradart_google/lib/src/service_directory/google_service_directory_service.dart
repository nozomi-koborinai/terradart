// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../service_directory/google_service_directory_namespace.dart'
    show GoogleServiceDirectoryNamespace;

/// Sensitive field paths for `google_service_directory_service`.
const Set<String> _googleServiceDirectoryServiceSensitive = <String>{};

/// Factory wrapper for `google_service_directory_service`.
///
/// An individual service. A service contains a name and optional metadata.
final class GoogleServiceDirectoryService extends Resource {
  static const String tfType = 'google_service_directory_service';

  GoogleServiceDirectoryService(
    super.localName, {
    required TfArg<String> serviceId,
    required RefTo<GoogleServiceDirectoryNamespace> namespace,
    TfArg<Map<String, String>>? metadata,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service_id': serviceId,
           'namespace': namespace.encodeAs('id'),
           'metadata': ?metadata,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleServiceDirectoryServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleServiceDirectoryService>`.
  RefTo<GoogleServiceDirectoryService> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `namespace` attribute.
  TfRef<String> get namespace => TfRef.attribute<String>(this, 'namespace');

  /// Reference to `service_id` attribute.
  TfRef<String> get serviceId => TfRef.attribute<String>(this, 'service_id');
}
