// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_service_binding`.
const Set<String> _googleNetworkServicesServiceBindingSensitive = <String>{};

/// Factory wrapper for `google_network_services_service_binding`.
///
/// ServiceBinding is the resource that defines a Service Directory Service to
/// be used in a BackendService resource.
///
/// Cloud Service Mesh **service binding** — registers a Service
/// Directory service (`projects/*/locations/*/namespaces/*/services/*`)
/// for use as a BackendService target.
///
/// Upstream is deprecated: creating new bindings is being disabled
/// (Service Directory integration sunset). Prefer BackendService
/// destinations on Http/Grpc/Tcp/Tls routes. Debt-only on
/// `terradart-validate`.
final class GoogleNetworkServicesServiceBinding extends Resource {
  static const String tfType = 'google_network_services_service_binding';

  GoogleNetworkServicesServiceBinding({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> service,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'service': service,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkServicesServiceBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
