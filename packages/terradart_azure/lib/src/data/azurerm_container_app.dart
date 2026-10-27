// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../container_app/azurerm_container_app.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_container_app`.
const Set<String> _azurermContainerAppSensitive = <String>{
  'custom_domain_verification_id',
  'secret',
};

/// Factory wrapper for `azurerm_container_app`.
final class DataAzurermContainerApp extends Data {
  static const String tfType = 'azurerm_container_app';

  DataAzurermContainerApp(
    super.localName, {
    required TfArg<String> name,
    TfArg<bool>? readSecrets,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'read_secrets': ?readSecrets,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermContainerAppSensitive;

  /// A reference to the `azurerm_container_app` this data source reads, for
  /// arguments typed `RefTo<AzurermContainerApp>`.
  RefTo<AzurermContainerApp> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `container_app_environment_id` attribute.
  TfRef<String> get containerAppEnvironmentId =>
      TfRef.attribute<String>(this, 'container_app_environment_id');

  /// Reference to `custom_domain_verification_id` attribute.
  TfRef<String> get customDomainVerificationId =>
      TfRef.attribute<String>(this, 'custom_domain_verification_id');

  /// Reference to `dapr` attribute.
  TfRef<List<Map<String, Object?>>> get dapr =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'dapr');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `ingress` attribute.
  TfRef<List<Map<String, Object?>>> get ingress =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ingress');

  /// Reference to `latest_revision_fqdn` attribute.
  TfRef<String> get latestRevisionFqdn =>
      TfRef.attribute<String>(this, 'latest_revision_fqdn');

  /// Reference to `latest_revision_name` attribute.
  TfRef<String> get latestRevisionName =>
      TfRef.attribute<String>(this, 'latest_revision_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `max_inactive_revisions` attribute.
  TfRef<num> get maxInactiveRevisions =>
      TfRef.attribute<num>(this, 'max_inactive_revisions');

  /// Reference to `outbound_ip_addresses` attribute.
  TfRef<List<String>> get outboundIpAddresses =>
      TfRef.attribute<List<String>>(this, 'outbound_ip_addresses');

  /// Reference to `registry` attribute.
  TfRef<List<Map<String, Object?>>> get registry =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'registry');

  /// Reference to `revision_mode` attribute.
  TfRef<String> get revisionMode =>
      TfRef.attribute<String>(this, 'revision_mode');

  /// Reference to `secret` attribute.
  TfRef<List<Map<String, Object?>>> get secret =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'secret');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `template` attribute.
  TfRef<List<Map<String, Object?>>> get template =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'template');

  /// Reference to `workload_profile_name` attribute.
  TfRef<String> get workloadProfileName =>
      TfRef.attribute<String>(this, 'workload_profile_name');

  /// Reference to `read_secrets` attribute.
  TfRef<bool> get readSecrets => TfRef.attribute<bool>(this, 'read_secrets');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
