// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../healthcare/azurerm_healthcare_service.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_healthcare_service`.
const Set<String> _azurermHealthcareServiceSensitive = <String>{};

/// Factory wrapper for `azurerm_healthcare_service`.
final class DataAzurermHealthcareService extends Data {
  static const String tfType = 'azurerm_healthcare_service';

  DataAzurermHealthcareService(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermHealthcareServiceSensitive;

  /// A reference to the `azurerm_healthcare_service` this data source reads, for
  /// arguments typed `RefTo<AzurermHealthcareService>`.
  RefTo<AzurermHealthcareService> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_policy_object_ids` attribute.
  TfRef<List<String>> get accessPolicyObjectIds =>
      TfRef.attribute<List<String>>(this, 'access_policy_object_ids');

  /// Reference to `authentication_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get authenticationConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'authentication_configuration',
      );

  /// Reference to `cors_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get corsConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cors_configuration');

  /// Reference to `cosmosdb_key_vault_key_versionless_id` attribute.
  TfRef<String> get cosmosdbKeyVaultKeyVersionlessId =>
      TfRef.attribute<String>(this, 'cosmosdb_key_vault_key_versionless_id');

  /// Reference to `cosmosdb_throughput` attribute.
  TfRef<num> get cosmosdbThroughput =>
      TfRef.attribute<num>(this, 'cosmosdb_throughput');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
