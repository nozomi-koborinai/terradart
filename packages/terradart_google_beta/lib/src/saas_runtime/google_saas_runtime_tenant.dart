// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_saas_runtime_tenant`.
const Set<String> _googleSaasRuntimeTenantSensitive = <String>{};

/// Factory wrapper for `google_saas_runtime_tenant`.
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
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
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
}
