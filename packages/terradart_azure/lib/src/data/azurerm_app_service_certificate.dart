// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../app_service/azurerm_app_service_certificate.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_app_service_certificate`.
const Set<String> _azurermAppServiceCertificateSensitive = <String>{};

/// Factory wrapper for `azurerm_app_service_certificate`.
final class DataAzurermAppServiceCertificate extends Data {
  static const String tfType = 'azurerm_app_service_certificate';

  DataAzurermAppServiceCertificate(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAppServiceCertificateSensitive;

  /// A reference to the `azurerm_app_service_certificate` this data source reads, for
  /// arguments typed `RefTo<AzurermAppServiceCertificate>`.
  RefTo<AzurermAppServiceCertificate> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `expiration_date` attribute.
  TfRef<String> get expirationDate =>
      TfRef.attribute<String>(this, 'expiration_date');

  /// Reference to `friendly_name` attribute.
  TfRef<String> get friendlyName =>
      TfRef.attribute<String>(this, 'friendly_name');

  /// Reference to `host_names` attribute.
  TfRef<List<String>> get hostNames =>
      TfRef.attribute<List<String>>(this, 'host_names');

  /// Reference to `issue_date` attribute.
  TfRef<String> get issueDate => TfRef.attribute<String>(this, 'issue_date');

  /// Reference to `issuer` attribute.
  TfRef<String> get issuer => TfRef.attribute<String>(this, 'issuer');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `subject_name` attribute.
  TfRef<String> get subjectName =>
      TfRef.attribute<String>(this, 'subject_name');

  /// Reference to `thumbprint` attribute.
  TfRef<String> get thumbprint => TfRef.attribute<String>(this, 'thumbprint');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
