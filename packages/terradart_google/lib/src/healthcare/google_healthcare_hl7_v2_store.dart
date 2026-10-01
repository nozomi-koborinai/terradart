// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../healthcare/google_healthcare_dataset.dart'
    show GoogleHealthcareDataset;
import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;

/// Sensitive field paths for `google_healthcare_hl7_v2_store`.
const Set<String> _googleHealthcareHl7V2StoreSensitive = <String>{};

/// HL7v2 message-schema version used by a [HealthcareHl7V2StoreParserConfig].
enum HealthcareHl7V2StoreParserConfigVersion implements TerraformEnum {
  /// Legacy parser (V1).
  v1('V1'),

  /// V2 parser.
  v2('V2'),

  /// V3 parser (recommended).
  v3('V3');

  const HealthcareHl7V2StoreParserConfigVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `notification_config` block of
/// `google_healthcare_hl7_v2_store` (derived from provider schema).
@immutable
final class HealthcareHl7V2StoreNotificationConfig {
  const HealthcareHl7V2StoreNotificationConfig({required this.pubsubTopic});

  final RefTo<GooglePubsubTopic> pubsubTopic;

  Map<String, Object?> encode() => {
    'pubsub_topic': pubsubTopic.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `notification_configs` block of
/// `google_healthcare_hl7_v2_store` (derived from provider schema).
@immutable
final class HealthcareHl7V2StoreNotificationConfigs {
  const HealthcareHl7V2StoreNotificationConfigs({
    this.filter,
    required this.pubsubTopic,
  });

  final TfArg<String>? filter;

  final RefTo<GooglePubsubTopic> pubsubTopic;

  Map<String, Object?> encode() => {
    'filter': ?filter?.toTfJson(),
    'pubsub_topic': pubsubTopic.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `parser_config` block of
/// `google_healthcare_hl7_v2_store` (derived from provider schema).
@immutable
final class HealthcareHl7V2StoreParserConfig {
  const HealthcareHl7V2StoreParserConfig({
    this.allowNullHeader,
    this.schema,
    this.segmentTerminator,
    this.version,
  });

  final TfArg<bool>? allowNullHeader;

  final TfArg<String>? schema;

  final TfArg<String>? segmentTerminator;

  final TfArg<HealthcareHl7V2StoreParserConfigVersion>? version;

  Map<String, Object?> encode() => {
    'allow_null_header': ?allowNullHeader?.toTfJson(),
    'schema': ?schema?.toTfJson(),
    'segment_terminator': ?segmentTerminator?.toTfJson(),
    'version': ?version?.toTfJson(),
  };
}

/// Factory wrapper for `google_healthcare_hl7_v2_store`.
///
/// A Hl7V2Store is a datastore inside a Healthcare dataset that conforms to the
/// FHIR (https://www.hl7.org/hl7V2/STU3/) standard for Healthcare information
/// exchange
final class GoogleHealthcareHl7V2Store extends Resource {
  static const String tfType = 'google_healthcare_hl7_v2_store';

  GoogleHealthcareHl7V2Store({
    required super.localName,
    required TfArg<String> name,
    required RefTo<GoogleHealthcareDataset> dataset,
    TfArg<bool>? rejectDuplicateMessage,
    HealthcareHl7V2StoreParserConfig? parserConfig,
    TfArg<Map<String, String>>? labels,
    HealthcareHl7V2StoreNotificationConfig? notificationConfig,
    List<HealthcareHl7V2StoreNotificationConfigs>? notificationConfigs,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'dataset': dataset.encodeAs('self_link'),
           'reject_duplicate_message': ?rejectDuplicateMessage,
           if (parserConfig != null)
             'parser_config': TfArg.literal(parserConfig.encode()),
           'labels': ?labels,
           if (notificationConfig != null)
             'notification_config': TfArg.literal(notificationConfig.encode()),
           if (notificationConfigs != null)
             'notification_configs': TfArg.literal([
               for (final e in notificationConfigs) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleHealthcareHl7V2StoreSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleHealthcareHl7V2Store>`.
  RefTo<GoogleHealthcareHl7V2Store> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `dataset` attribute.
  TfRef<String> get dataset => TfRef.attribute<String>(this, 'dataset');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `reject_duplicate_message` attribute.
  TfRef<bool> get rejectDuplicateMessage =>
      TfRef.attribute<bool>(this, 'reject_duplicate_message');
}
