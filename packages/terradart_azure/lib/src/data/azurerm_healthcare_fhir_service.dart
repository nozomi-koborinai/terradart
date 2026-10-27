// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../healthcare/azurerm_healthcare_fhir_service.dart';

/// Sensitive field paths for `azurerm_healthcare_fhir_service`.
const Set<String> _azurermHealthcareFhirServiceSensitive = <String>{};

/// Factory wrapper for `azurerm_healthcare_fhir_service`.
final class DataAzurermHealthcareFhirService extends Data {
  static const String tfType = 'azurerm_healthcare_fhir_service';

  DataAzurermHealthcareFhirService(
    super.localName, {
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> workspaceId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'tags': ?tags, 'workspace_id': workspaceId},
       );

  @override
  Set<String> get sensitiveFields => _azurermHealthcareFhirServiceSensitive;

  /// A reference to the `azurerm_healthcare_fhir_service` this data source reads, for
  /// arguments typed `RefTo<AzurermHealthcareFhirService>`.
  RefTo<AzurermHealthcareFhirService> get ref =>
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

  /// Reference to `authentication` attribute.
  TfRef<List<Map<String, Object?>>> get authentication =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'authentication');

  /// Reference to `configuration_export_storage_account_name` attribute.
  TfRef<String> get configurationExportStorageAccountName =>
      TfRef.attribute<String>(
        this,
        'configuration_export_storage_account_name',
      );

  /// Reference to `container_registry_login_server_url` attribute.
  TfRef<List<String>> get containerRegistryLoginServerUrl =>
      TfRef.attribute<List<String>>(
        this,
        'container_registry_login_server_url',
      );

  /// Reference to `cors` attribute.
  TfRef<List<Map<String, Object?>>> get cors =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cors');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
