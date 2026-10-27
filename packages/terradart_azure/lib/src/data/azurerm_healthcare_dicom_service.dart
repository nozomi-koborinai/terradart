// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../healthcare/azurerm_healthcare_dicom_service.dart';

/// Sensitive field paths for `azurerm_healthcare_dicom_service`.
const Set<String> _azurermHealthcareDicomServiceSensitive = <String>{};

/// Factory wrapper for `azurerm_healthcare_dicom_service`.
final class DataAzurermHealthcareDicomService extends Data {
  static const String tfType = 'azurerm_healthcare_dicom_service';

  DataAzurermHealthcareDicomService(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> workspaceId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'workspace_id': workspaceId},
       );

  @override
  Set<String> get sensitiveFields => _azurermHealthcareDicomServiceSensitive;

  /// A reference to the `azurerm_healthcare_dicom_service` this data source reads, for
  /// arguments typed `RefTo<AzurermHealthcareDicomService>`.
  RefTo<AzurermHealthcareDicomService> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authentication` attribute.
  TfRef<List<Map<String, Object?>>> get authentication =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'authentication');

  /// Reference to `cors` attribute.
  TfRef<List<Map<String, Object?>>> get cors =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cors');

  /// Reference to `data_partitions_enabled` attribute.
  TfRef<bool> get dataPartitionsEnabled =>
      TfRef.attribute<bool>(this, 'data_partitions_enabled');

  /// Reference to `encryption_key_url` attribute.
  TfRef<String> get encryptionKeyUrl =>
      TfRef.attribute<String>(this, 'encryption_key_url');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `private_endpoint` attribute.
  TfRef<List<Map<String, Object?>>> get privateEndpoint =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'private_endpoint');

  /// Reference to `service_url` attribute.
  TfRef<String> get serviceUrl => TfRef.attribute<String>(this, 'service_url');

  /// Reference to `storage` attribute.
  TfRef<List<Map<String, Object?>>> get storage =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'storage');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
