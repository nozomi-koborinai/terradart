// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_google/src/eventarc/google_eventarc_message_bus.dart'
    show EventarcMessageBusLoggingConfig;
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_eventarc_pipeline`.
const Set<String> _googleEventarcPipelineSensitive = <String>{};

/// Factory wrapper for `google_eventarc_pipeline`.
///
/// The Eventarc Pipeline resource
final class GoogleEventarcPipeline extends Resource {
  static const String tfType = 'google_eventarc_pipeline';

  GoogleEventarcPipeline({
    required super.localName,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? cryptoKeyName,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    required TfArg<String> pipelineId,
    TfArg<String>? project,
    required TfArg<List<Map<String, dynamic>>> destinations,
    TfArg<Map<String, dynamic>>? inputPayloadFormat,
    EventarcMessageBusLoggingConfig? loggingConfig,
    TfArg<List<Map<String, dynamic>>>? mediations,
    TfArg<Map<String, dynamic>>? retryPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (annotations != null) 'annotations': annotations,
           if (cryptoKeyName != null) 'crypto_key_name': cryptoKeyName,
           if (displayName != null) 'display_name': displayName,
           if (labels != null) 'labels': labels,
           'location': location,
           'pipeline_id': pipelineId,
           if (project != null) 'project': project,
           'destinations': destinations,
           if (inputPayloadFormat != null)
             'input_payload_format': inputPayloadFormat,
           if (loggingConfig != null)
             'logging_config': TfArg.literal([loggingConfig.encode()]),
           if (mediations != null) 'mediations': mediations,
           if (retryPolicy != null) 'retry_policy': retryPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEventarcPipelineSensitive;

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
