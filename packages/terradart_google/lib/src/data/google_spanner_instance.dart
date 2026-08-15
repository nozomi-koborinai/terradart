// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_spanner_instance`.
const Set<String> _googleSpannerInstanceSensitive = <String>{};

/// Factory wrapper for `google_spanner_instance`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleSpannerInstance extends Data {
  static const String tfType = 'google_spanner_instance';

  DataGoogleSpannerInstance({
    required super.localName,
    TfArg<String>? config,
    TfArg<String>? displayName,
    required TfArg<String> name,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (config != null) 'config': config,
           if (displayName != null) 'display_name': displayName,
           'name': name,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSpannerInstanceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `autoscaling_config` attribute.
  TfRef<List<Map<String, Object?>>> get autoscalingConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'autoscaling_config');

  /// Reference to `default_backup_schedule_type` attribute.
  TfRef<String> get defaultBackupScheduleType =>
      TfRef.attribute<String>(this, 'default_backup_schedule_type');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `edition` attribute.
  TfRef<String> get edition => TfRef.attribute<String>(this, 'edition');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroy => TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceType =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `num_nodes` attribute.
  TfRef<num> get numNodes => TfRef.attribute<num>(this, 'num_nodes');

  /// Reference to `processing_units` attribute.
  TfRef<num> get processingUnits =>
      TfRef.attribute<num>(this, 'processing_units');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
