// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_eventarc_message_bus`.
const Set<String> _googleEventarcMessageBusSensitive = <String>{};

/// `logging_config.log_severity` — minimum log severity forwarded to
/// Cloud Logging / Platform Telemetry.
enum EventarcMessageBusLogSeverity implements TerraformEnum {
  none('NONE'),
  debug('DEBUG'),
  info('INFO'),
  notice('NOTICE'),
  warning('WARNING'),
  error('ERROR'),
  critical('CRITICAL'),
  alert('ALERT'),
  emergency('EMERGENCY');

  const EventarcMessageBusLogSeverity(this.terraformValue);
  @override
  final String terraformValue;
}

/// `logging_config` block — shared across Eventarc message buses, API
/// sources, and pipelines.
@immutable
class EventarcMessageBusLoggingConfig {
  const EventarcMessageBusLoggingConfig({this.logSeverity});

  final EventarcMessageBusLogSeverity? logSeverity;

  Map<String, Object?> encode() => {
    if (logSeverity != null) 'log_severity': logSeverity!.terraformValue,
  };
}

/// Factory wrapper for `google_eventarc_message_bus`.
///
/// The Eventarc MessageBus resource
final class GoogleEventarcMessageBus extends Resource {
  static const String tfType = 'google_eventarc_message_bus';

  GoogleEventarcMessageBus({
    required super.localName,
    TfArg<Map<String, String>>? annotations,
    RefTo<GoogleKmsCryptoKey>? cryptoKeyName,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    required TfArg<String> messageBusId,
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
           'display_name': ?displayName,
           'labels': ?labels,
           'location': location,
           'message_bus_id': messageBusId,
           'project': ?project,
           if (loggingConfig != null)
             'logging_config': TfArg.literal([loggingConfig.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEventarcMessageBusSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleEventarcMessageBus>`.
  RefTo<GoogleEventarcMessageBus> get ref => RefTo.of(this);

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
