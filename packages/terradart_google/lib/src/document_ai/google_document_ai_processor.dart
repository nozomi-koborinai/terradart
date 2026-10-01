// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_document_ai_processor`.
const Set<String> _googleDocumentAiProcessorSensitive = <String>{};

/// Factory wrapper for `google_document_ai_processor`.
///
/// The first-class citizen for Document AI. Each processor defines how to
/// extract structural information from a document.
final class GoogleDocumentAiProcessor extends Resource {
  static const String tfType = 'google_document_ai_processor';

  GoogleDocumentAiProcessor({
    required super.localName,
    required TfArg<String> type,
    required TfArg<String> displayName,
    required TfArg<String> location,
    RefTo<GoogleKmsCryptoKey>? kmsKeyName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'type': type,
           'display_name': displayName,
           'location': location,
           'kms_key_name': ?kmsKeyName?.encodeAs('id'),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDocumentAiProcessorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDocumentAiProcessor>`.
  RefTo<GoogleDocumentAiProcessor> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `kms_key_name` attribute.
  TfRef<String> get kmsKeyName => TfRef.attribute<String>(this, 'kms_key_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
