// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_google/src/eventarc/google_eventarc_message_bus.dart'
    show EventarcMessageBusLoggingConfig;
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_eventarc_google_api_source`.
const Set<String> _googleEventarcGoogleApiSourceSensitive = <String>{};

/// Factory wrapper for `google_eventarc_google_api_source`.
///
/// The Eventarc GoogleApiSource resource
final class GoogleEventarcGoogleApiSource extends Resource {
  static const String tfType = 'google_eventarc_google_api_source';

  GoogleEventarcGoogleApiSource({
    required super.localName,
    TfArg<Map<String, String>>? annotations,
    RefTo<GoogleKmsCryptoKey>? cryptoKeyName,
    required TfArg<String> destination,
    TfArg<String>? displayName,
    required TfArg<String> googleApiSourceId,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    EventarcMessageBusLoggingConfig? loggingConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'annotations': ?annotations,
           'crypto_key_name': ?cryptoKeyName?.encodeAs('id'),
           'destination': destination,
           'display_name': ?displayName,
           'google_api_source_id': googleApiSourceId,
           'labels': ?labels,
           'location': location,
           'project': ?project,
           if (loggingConfig != null)
             'logging_config': TfArg.literal([loggingConfig.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEventarcGoogleApiSourceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleEventarcGoogleApiSource>`.
  RefTo<GoogleEventarcGoogleApiSource> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotationsRef =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `crypto_key_name` attribute.
  TfRef<String> get cryptoKeyNameRef =>
      TfRef.attribute<String>(this, 'crypto_key_name');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `destination` attribute.
  TfRef<String> get destinationRef =>
      TfRef.attribute<String>(this, 'destination');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `google_api_source_id` attribute.
  TfRef<String> get googleApiSourceIdRef =>
      TfRef.attribute<String>(this, 'google_api_source_id');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
