// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_saas_runtime_tenant`.
const Set<String> _googleSaasRuntimeTenantSensitive = <String>{};

/// Factory wrapper for `google_saas_runtime_tenant`.
///
/// The Tenant resource represents the service producer's view of a service
/// instance created for a consumer. It enables the association between the
/// service producer's managed resources and the end consumer.
final class GoogleSaasRuntimeTenant extends Resource {
  static const String tfType = 'google_saas_runtime_tenant';

  GoogleSaasRuntimeTenant({
    required super.localName,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? consumerResource,
    TfArg<String>? deletionPolicy,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> saas,
    required TfArg<String> tenantId,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           if (annotations != null) 'annotations': annotations,
           if (consumerResource != null) 'consumer_resource': consumerResource,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (labels != null) 'labels': labels,
           'location': location,
           if (project != null) 'project': project,
           'saas': saas,
           'tenant_id': tenantId,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSaasRuntimeTenantSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSaasRuntimeTenant>`.
  RefTo<GoogleSaasRuntimeTenant> get ref => RefTo.of(this);

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

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
