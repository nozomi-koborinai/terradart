// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_monitoring_notification_channel`.
const Set<String> _googleMonitoringNotificationChannelSensitive = <String>{};

/// Factory wrapper for `google_monitoring_notification_channel`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleMonitoringNotificationChannel extends Data {
  static const String tfType = 'google_monitoring_notification_channel';

  DataGoogleMonitoringNotificationChannel({
    required super.localName,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    TfArg<String>? type,
    TfArg<Map<String, String>>? userLabels,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (displayName != null) 'display_name': displayName,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
           if (type != null) 'type': type,
           if (userLabels != null) 'user_labels': userLabels,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleMonitoringNotificationChannelSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `force_delete` attribute.
  TfRef<bool> get forceDelete => TfRef.attribute<bool>(this, 'force_delete');

  /// Reference to `sensitive_labels` attribute.
  TfRef<List<Map<String, Object?>>> get sensitiveLabels =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'sensitive_labels');

  /// Reference to `verification_status` attribute.
  TfRef<String> get verificationStatus =>
      TfRef.attribute<String>(this, 'verification_status');
}
