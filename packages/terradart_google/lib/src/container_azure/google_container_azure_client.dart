// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_container_azure_client`.
const Set<String> _googleContainerAzureClientSensitive = <String>{};

/// Factory wrapper for `google_container_azure_client`.
///
/// GKE on Azure **client** — Azure AD application credentials used by
/// subsequent Azure clusters / node pools.
///
/// **Cost / apply:** No client SKU; exists only to create never_apply
/// [GoogleContainerAzureCluster] stacks that bill GKE Enterprise Multicloud
/// (Azure) SKU `688E-3D16-399E` **$0.00822/h** plus Azure VMs. Needs a real
/// Azure tenant — debt-only. **Never** wire into apply-smoke.
final class GoogleContainerAzureClient extends Resource {
  static const String tfType = 'google_container_azure_client';

  GoogleContainerAzureClient({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> applicationId,
    required TfArg<String> tenantId,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'application_id': applicationId,
           'tenant_id': tenantId,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleContainerAzureClientSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate` attribute.
  TfRef<String> get certificate => TfRef.attribute<String>(this, 'certificate');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
