// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;
import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;

/// Sensitive field paths for `google_eventarc_pipeline`.
const Set<String> _googleEventarcPipelineSensitive = <String>{};

/// Typed helper for the `destinations` block of
/// `google_eventarc_pipeline` (derived from provider schema).
@immutable
final class EventarcPipelineDestinations {
  const EventarcPipelineDestinations({
    this.messageBus,
    this.topic,
    this.workflow,
    this.authenticationConfig,
    this.httpEndpoint,
    this.networkConfig,
    this.outputPayloadFormat,
  });

  final TfArg<String>? messageBus;

  final RefTo<GooglePubsubTopic>? topic;

  final TfArg<String>? workflow;

  final EventarcPipelineAuthenticationConfig? authenticationConfig;

  final EventarcPipelineHttpEndpoint? httpEndpoint;

  final EventarcPipelineNetworkConfig? networkConfig;

  final EventarcPipelineOutputPayloadFormat? outputPayloadFormat;

  Map<String, Object?> encode() => {
    'message_bus': ?messageBus?.toTfJson(),
    'topic': ?topic?.encodeAs('id').toTfJson(),
    'workflow': ?workflow?.toTfJson(),
    'authentication_config': ?authenticationConfig?.encode(),
    'http_endpoint': ?httpEndpoint?.encode(),
    'network_config': ?networkConfig?.encode(),
    'output_payload_format': ?outputPayloadFormat?.encode(),
  };
}

/// Typed helper for the `destinations.authentication_config` block of
/// `google_eventarc_pipeline` (derived from provider schema).
@immutable
final class EventarcPipelineAuthenticationConfig {
  const EventarcPipelineAuthenticationConfig({
    this.googleOidc,
    this.oauthToken,
  });

  final EventarcPipelineGoogleOidc? googleOidc;

  final EventarcPipelineOauthToken? oauthToken;

  Map<String, Object?> encode() => {
    'google_oidc': ?googleOidc?.encode(),
    'oauth_token': ?oauthToken?.encode(),
  };
}

/// Typed helper for the `destinations.authentication_config.google_oidc` block of
/// `google_eventarc_pipeline` (derived from provider schema).
@immutable
final class EventarcPipelineGoogleOidc {
  const EventarcPipelineGoogleOidc({
    this.audience,
    required this.serviceAccount,
  });

  final TfArg<String>? audience;

  final RefTo<GoogleServiceAccount> serviceAccount;

  Map<String, Object?> encode() => {
    'audience': ?audience?.toTfJson(),
    'service_account': serviceAccount.encodeAs('email').toTfJson(),
  };
}

/// Typed helper for the `destinations.authentication_config.oauth_token` block of
/// `google_eventarc_pipeline` (derived from provider schema).
@immutable
final class EventarcPipelineOauthToken {
  const EventarcPipelineOauthToken({this.scope, required this.serviceAccount});

  final TfArg<String>? scope;

  final RefTo<GoogleServiceAccount> serviceAccount;

  Map<String, Object?> encode() => {
    'scope': ?scope?.toTfJson(),
    'service_account': serviceAccount.encodeAs('email').toTfJson(),
  };
}

/// Typed helper for the `destinations.http_endpoint` block of
/// `google_eventarc_pipeline` (derived from provider schema).
@immutable
final class EventarcPipelineHttpEndpoint {
  const EventarcPipelineHttpEndpoint({
    this.messageBindingTemplate,
    required this.uri,
  });

  final TfArg<String>? messageBindingTemplate;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    'message_binding_template': ?messageBindingTemplate?.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `destinations.network_config` block of
/// `google_eventarc_pipeline` (derived from provider schema).
@immutable
final class EventarcPipelineNetworkConfig {
  const EventarcPipelineNetworkConfig({this.networkAttachment});

  final TfArg<String>? networkAttachment;

  Map<String, Object?> encode() => {
    'network_attachment': ?networkAttachment?.toTfJson(),
  };
}

/// Typed helper for the `destinations.output_payload_format` block of
/// `google_eventarc_pipeline` (derived from provider schema).
@immutable
final class EventarcPipelineOutputPayloadFormat {
  const EventarcPipelineOutputPayloadFormat({
    this.avro,
    this.json,
    this.protobuf,
  });

  final EventarcPipelineAvro? avro;

  final EventarcPipelineJson? json;

  final EventarcPipelineProtobuf? protobuf;

  Map<String, Object?> encode() => {
    'avro': ?avro?.encode(),
    'json': ?json?.encode(),
    'protobuf': ?protobuf?.encode(),
  };
}

/// Typed helper for the `input_payload_format.avro` block of
/// `google_eventarc_pipeline` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class EventarcPipelineAvro {
  const EventarcPipelineAvro({this.schemaDefinition});

  final TfArg<String>? schemaDefinition;

  Map<String, Object?> encode() => {
    'schema_definition': ?schemaDefinition?.toTfJson(),
  };
}

/// Typed helper for the `input_payload_format.json` block of
/// `google_eventarc_pipeline` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class EventarcPipelineJson {
  const EventarcPipelineJson();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `input_payload_format.protobuf` block of
/// `google_eventarc_pipeline` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class EventarcPipelineProtobuf {
  const EventarcPipelineProtobuf({this.schemaDefinition});

  final TfArg<String>? schemaDefinition;

  Map<String, Object?> encode() => {
    'schema_definition': ?schemaDefinition?.toTfJson(),
  };
}

/// Typed helper for the `input_payload_format` block of
/// `google_eventarc_pipeline` (derived from provider schema).
@immutable
final class EventarcPipelineInputPayloadFormat {
  const EventarcPipelineInputPayloadFormat({
    this.avro,
    this.json,
    this.protobuf,
  });

  final EventarcPipelineAvro? avro;

  final EventarcPipelineJson? json;

  final EventarcPipelineProtobuf? protobuf;

  Map<String, Object?> encode() => {
    'avro': ?avro?.encode(),
    'json': ?json?.encode(),
    'protobuf': ?protobuf?.encode(),
  };
}

/// Typed helper for the `logging_config` block of
/// `google_eventarc_pipeline` (derived from provider schema).
@immutable
final class EventarcPipelineLoggingConfig {
  const EventarcPipelineLoggingConfig({this.logSeverity});

  final TfArg<EventarcPipelineLogSeverity>? logSeverity;

  Map<String, Object?> encode() => {'log_severity': ?logSeverity?.toTfJson()};
}

/// `log_severity` — derived from the provider schema description.
enum EventarcPipelineLogSeverity implements TerraformEnum {
  none('NONE'),
  debug('DEBUG'),
  info('INFO'),
  notice('NOTICE'),
  warning('WARNING'),
  error('ERROR'),
  critical('CRITICAL'),
  alert('ALERT'),
  emergency('EMERGENCY');

  const EventarcPipelineLogSeverity(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `mediations` block of
/// `google_eventarc_pipeline` (derived from provider schema).
@immutable
final class EventarcPipelineMediations {
  const EventarcPipelineMediations({this.transformation});

  final EventarcPipelineTransformation? transformation;

  Map<String, Object?> encode() => {
    'transformation': ?transformation?.encode(),
  };
}

/// Typed helper for the `mediations.transformation` block of
/// `google_eventarc_pipeline` (derived from provider schema).
@immutable
final class EventarcPipelineTransformation {
  const EventarcPipelineTransformation({this.transformationTemplate});

  final TfArg<String>? transformationTemplate;

  Map<String, Object?> encode() => {
    'transformation_template': ?transformationTemplate?.toTfJson(),
  };
}

/// Typed helper for the `retry_policy` block of
/// `google_eventarc_pipeline` (derived from provider schema).
@immutable
final class EventarcPipelineRetryPolicy {
  const EventarcPipelineRetryPolicy({
    this.maxAttempts,
    this.maxRetryDelay,
    this.minRetryDelay,
  });

  final TfArg<num>? maxAttempts;

  final TfArg<String>? maxRetryDelay;

  final TfArg<String>? minRetryDelay;

  Map<String, Object?> encode() => {
    'max_attempts': ?maxAttempts?.toTfJson(),
    'max_retry_delay': ?maxRetryDelay?.toTfJson(),
    'min_retry_delay': ?minRetryDelay?.toTfJson(),
  };
}

/// Factory wrapper for `google_eventarc_pipeline`.
///
/// The Eventarc Pipeline resource
final class GoogleEventarcPipeline extends Resource {
  static const String tfType = 'google_eventarc_pipeline';

  GoogleEventarcPipeline({
    required super.localName,
    TfArg<Map<String, String>>? annotations,
    RefTo<GoogleKmsCryptoKey>? cryptoKeyName,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    required TfArg<String> pipelineId,
    TfArg<String>? project,
    required List<EventarcPipelineDestinations> destinations,
    EventarcPipelineInputPayloadFormat? inputPayloadFormat,
    EventarcPipelineLoggingConfig? loggingConfig,
    List<EventarcPipelineMediations>? mediations,
    EventarcPipelineRetryPolicy? retryPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'annotations': ?annotations,
           'crypto_key_name': ?cryptoKeyName?.encodeAs('id'),
           'display_name': ?displayName,
           'labels': ?labels,
           'location': location,
           'pipeline_id': pipelineId,
           'project': ?project,
           'destinations': TfArg.literal([
             for (final e in destinations) e.encode(),
           ]),
           if (inputPayloadFormat != null)
             'input_payload_format': TfArg.literal(inputPayloadFormat.encode()),
           if (loggingConfig != null)
             'logging_config': TfArg.literal(loggingConfig.encode()),
           if (mediations != null)
             'mediations': TfArg.literal([
               for (final e in mediations) e.encode(),
             ]),
           if (retryPolicy != null)
             'retry_policy': TfArg.literal(retryPolicy.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEventarcPipelineSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleEventarcPipeline>`.
  RefTo<GoogleEventarcPipeline> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `crypto_key_name` attribute.
  TfRef<String> get cryptoKeyName =>
      TfRef.attribute<String>(this, 'crypto_key_name');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `pipeline_id` attribute.
  TfRef<String> get pipelineId => TfRef.attribute<String>(this, 'pipeline_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
