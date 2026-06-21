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
  }) : super(
         terraformType: tfType,
         argMap: {
           'service_id': serviceId,
           'namespace': namespace,
           if (metadata != null) 'metadata': metadata,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleServiceDirectoryServiceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
