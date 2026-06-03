// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_data_connect_service`.
const Set<String> _googleFirebaseDataConnectServiceSensitive = <String>{};

// ===========================================================================
// Enums (sourced from schema "Possible values" prose)
// ===========================================================================

/// `deletion_policy` -- behaviour of `terraform destroy` when downstream
/// Data Connect schemas / connectors still exist. [defaultPolicy] (the
/// schema default) refuses to delete the service while any are present;
/// [force] tears the service down regardless.
enum DataConnectDeletionPolicy implements TerraformEnum {
  defaultPolicy('DEFAULT'),
  force('FORCE');

  const DataConnectDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_firebase_data_connect_service`.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_firebase_data_connect_service.`).
/// - `service_id`: stable user-chosen identifier. Becomes the final
///   segment of the service's full resource name. Note (per the schema's
///   own warning): this ID is specific to the Data Connect service itself
///   and is NOT the ID of the underlying Cloud SQL instance.
/// - `location`: GCP region (e.g. `'us-central1'`, `'asia-east1'`).
///
/// Example:
/// ```dart
/// final svc = GoogleFirebaseDataConnectService(
///   localName: 'web',
///   serviceId: TfArg.literal('web-svc'),
///   location: TfArg.literal('us-central1'),
///   displayName: TfArg.literal('Web app data connect'),
/// );
/// ```
///
/// Setting [deletionPolicy] to [DataConnectDeletionPolicy.force] allows
/// `terraform destroy` to remove the service even when downstream
/// schemas / connectors still exist; the default leaves the service in
/// place if any are present.
final class GoogleFirebaseDataConnectService extends Resource {
  static const String tfType = 'google_firebase_data_connect_service';

  GoogleFirebaseDataConnectService({
    required super.localName,
    required TfArg<String> serviceId,
    required TfArg<String> location,
    TfArg<DataConnectDeletionPolicy>? deletionPolicy,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? annotations,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service_id': serviceId,
           'location': location,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (displayName != null) 'display_name': displayName,
           if (annotations != null) 'annotations': annotations,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaseDataConnectServiceSensitive;

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

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `service_id` -- the stable user-chosen segment
  /// downstream Data Connect resources (schema, connector) reference.
  TfRef<String> get serviceIdRef => TfRef.attribute<String>(this, 'service_id');
}
