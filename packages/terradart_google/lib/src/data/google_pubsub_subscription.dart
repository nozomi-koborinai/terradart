// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_pubsub_subscription`.
const Set<String> _googlePubsubSubscriptionSensitive = <String>{};

/// Factory wrapper for `google_pubsub_subscription`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGooglePubsubSubscription extends Data {
  static const String tfType = 'google_pubsub_subscription';

  DataGooglePubsubSubscription({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, if (project != null) 'project': project},
       );

  @override
  Set<String> get sensitiveFields => _googlePubsubSubscriptionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ack_deadline_seconds` attribute.
  TfRef<num> get ackDeadlineSeconds =>
      TfRef.attribute<num>(this, 'ack_deadline_seconds');

  /// Reference to `bigquery_config` attribute.
  TfRef<List<Map<String, Object?>>> get bigqueryConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'bigquery_config');

  /// Reference to `cloud_storage_config` attribute.
  TfRef<List<Map<String, Object?>>> get cloudStorageConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cloud_storage_config');

  /// Reference to `dead_letter_policy` attribute.
  TfRef<List<Map<String, Object?>>> get deadLetterPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'dead_letter_policy');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `enable_exactly_once_delivery` attribute.
  TfRef<bool> get enableExactlyOnceDelivery =>
      TfRef.attribute<bool>(this, 'enable_exactly_once_delivery');

  /// Reference to `enable_message_ordering` attribute.
  TfRef<bool> get enableMessageOrdering =>
      TfRef.attribute<bool>(this, 'enable_message_ordering');

  /// Reference to `expiration_policy` attribute.
  TfRef<List<Map<String, Object?>>> get expirationPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'expiration_policy');

  /// Reference to `filter` attribute.
  TfRef<String> get filter => TfRef.attribute<String>(this, 'filter');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `message_retention_duration` attribute.
  TfRef<String> get messageRetentionDuration =>
      TfRef.attribute<String>(this, 'message_retention_duration');

  /// Reference to `message_transforms` attribute.
  TfRef<List<Map<String, Object?>>> get messageTransforms =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'message_transforms');

  /// Reference to `push_config` attribute.
  TfRef<List<Map<String, Object?>>> get pushConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'push_config');

  /// Reference to `retain_acked_messages` attribute.
  TfRef<bool> get retainAckedMessages =>
      TfRef.attribute<bool>(this, 'retain_acked_messages');

  /// Reference to `retry_policy` attribute.
  TfRef<List<Map<String, Object?>>> get retryPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'retry_policy');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `topic` attribute.
  TfRef<String> get topic => TfRef.attribute<String>(this, 'topic');
}
