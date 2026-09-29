// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;

/// Sensitive field paths for `google_healthcare_dicom_store`.
const Set<String> _googleHealthcareDicomStoreSensitive = <String>{};

/// Typed helper for the `notification_config` block of
/// `google_healthcare_dicom_store` (derived from provider schema).
@immutable
final class HealthcareDicomStoreNotificationConfig {
  const HealthcareDicomStoreNotificationConfig({
    required this.pubsubTopic,
    this.sendForBulkImport,
  });

  final RefTo<GooglePubsubTopic> pubsubTopic;

  final TfArg<bool>? sendForBulkImport;

  Map<String, Object?> encode() => {
    'pubsub_topic': pubsubTopic.encodeAs('id').toTfJson(),
    'send_for_bulk_import': ?sendForBulkImport?.toTfJson(),
  };
}

/// Factory wrapper for `google_healthcare_dicom_store`.
///
/// A DicomStore is a datastore inside a Healthcare dataset that conforms to the
/// DICOM (https://www.dicomstandard.org/about/) standard for Healthcare
/// information exchange
final class GoogleHealthcareDicomStore extends Resource {
  static const String tfType = 'google_healthcare_dicom_store';

  GoogleHealthcareDicomStore({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> dataset,
    TfArg<Map<String, String>>? labels,
    HealthcareDicomStoreNotificationConfig? notificationConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'dataset': dataset,
           'labels': ?labels,
           if (notificationConfig != null)
             'notification_config': TfArg.literal(notificationConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleHealthcareDicomStoreSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleHealthcareDicomStore>`.
  RefTo<GoogleHealthcareDicomStore> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
