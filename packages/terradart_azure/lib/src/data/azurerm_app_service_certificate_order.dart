// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../app_service/azurerm_app_service_certificate_order.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_app_service_certificate_order`.
const Set<String> _azurermAppServiceCertificateOrderSensitive = <String>{};

/// Factory wrapper for `azurerm_app_service_certificate_order`.
final class DataAzurermAppServiceCertificateOrder extends Data {
  static const String tfType = 'azurerm_app_service_certificate_order';

  DataAzurermAppServiceCertificateOrder(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermAppServiceCertificateOrderSensitive;

  /// A reference to the `azurerm_app_service_certificate_order` this data source reads, for
  /// arguments typed `RefTo<AzurermAppServiceCertificateOrder>`.
  RefTo<AzurermAppServiceCertificateOrder> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_service_certificate_not_renewable_reasons` attribute.
  TfRef<List<String>> get appServiceCertificateNotRenewableReasons =>
      TfRef.attribute<List<String>>(
        this,
        'app_service_certificate_not_renewable_reasons',
      );

  /// Reference to `auto_renew` attribute.
  TfRef<bool> get autoRenew => TfRef.attribute<bool>(this, 'auto_renew');

  /// Reference to `certificates` attribute.
  TfRef<List<Map<String, Object?>>> get certificates =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'certificates');

  /// Reference to `csr` attribute.
  TfRef<String> get csr => TfRef.attribute<String>(this, 'csr');

  /// Reference to `distinguished_name` attribute.
  TfRef<String> get distinguishedName =>
      TfRef.attribute<String>(this, 'distinguished_name');

  /// Reference to `domain_verification_token` attribute.
  TfRef<String> get domainVerificationToken =>
      TfRef.attribute<String>(this, 'domain_verification_token');

  /// Reference to `expiration_time` attribute.
  TfRef<String> get expirationTime =>
      TfRef.attribute<String>(this, 'expiration_time');

  /// Reference to `intermediate_thumbprint` attribute.
  TfRef<String> get intermediateThumbprint =>
      TfRef.attribute<String>(this, 'intermediate_thumbprint');

  /// Reference to `is_private_key_external` attribute.
  TfRef<bool> get isPrivateKeyExternal =>
      TfRef.attribute<bool>(this, 'is_private_key_external');

  /// Reference to `key_size` attribute.
  TfRef<num> get keySize => TfRef.attribute<num>(this, 'key_size');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `product_type` attribute.
  TfRef<String> get productType =>
      TfRef.attribute<String>(this, 'product_type');

  /// Reference to `root_thumbprint` attribute.
  TfRef<String> get rootThumbprint =>
      TfRef.attribute<String>(this, 'root_thumbprint');

  /// Reference to `signed_certificate_thumbprint` attribute.
  TfRef<String> get signedCertificateThumbprint =>
      TfRef.attribute<String>(this, 'signed_certificate_thumbprint');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `validity_in_years` attribute.
  TfRef<num> get validityInYears =>
      TfRef.attribute<num>(this, 'validity_in_years');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
