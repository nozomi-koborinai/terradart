// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_service_directory_service`.
const Set<String> _googleServiceDirectoryServiceSensitive = <String>{};

/// Factory wrapper for `google_service_directory_service`.
///
/// An individual service. A service contains a name and optional metadata.
final class GoogleServiceDirectoryService extends Resource {
  static const String tfType = 'google_service_directory_service';

  GoogleServiceDirectoryService({
    required super.localName,
    required TfArg<String> serviceId,
    required TfArg<String> namespace,
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
           'namespace': namespace,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadataRef =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `namespace` attribute.
  TfRef<String> get namespaceRef => TfRef.attribute<String>(this, 'namespace');

  /// Reference to `service_id` attribute.
  TfRef<String> get serviceIdRef => TfRef.attribute<String>(this, 'service_id');
}
