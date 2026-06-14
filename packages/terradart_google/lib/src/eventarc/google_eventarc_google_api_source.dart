// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_google/src/eventarc/google_eventarc_message_bus.dart'
    show EventarcMessageBusLoggingConfig;
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? cryptoKeyName,
    required TfArg<String> destination,
    TfArg<String>? displayName,
    required TfArg<String> googleApiSourceId,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    EventarcMessageBusLoggingConfig? loggingConfig,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (annotations != null) 'annotations': annotations,
           if (cryptoKeyName != null) 'crypto_key_name': cryptoKeyName,
           'destination': destination,
           if (displayName != null) 'display_name': displayName,
           'google_api_source_id': googleApiSourceId,
           if (labels != null) 'labels': labels,
           'location': location,
           if (project != null) 'project': project,
           if (loggingConfig != null)
             'logging_config': TfArg.literal([loggingConfig.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEventarcGoogleApiSourceSensitive;

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
}
