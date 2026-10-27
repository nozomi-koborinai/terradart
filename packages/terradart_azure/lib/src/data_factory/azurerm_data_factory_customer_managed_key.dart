// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_customer_managed_key`.
const Set<String> _azurermDataFactoryCustomerManagedKeySensitive = <String>{};

/// Factory wrapper for `azurerm_data_factory_customer_managed_key`.
final class AzurermDataFactoryCustomerManagedKey extends Resource {
  static const String tfType = 'azurerm_data_factory_customer_managed_key';

  AzurermDataFactoryCustomerManagedKey(
    super.localName, {
    required TfArg<String> customerManagedKeyId,
    required TfArg<String> dataFactoryId,
    TfArg<String>? userAssignedIdentityId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'customer_managed_key_id': customerManagedKeyId,
           'data_factory_id': dataFactoryId,
           'user_assigned_identity_id': ?userAssignedIdentityId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryCustomerManagedKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryCustomerManagedKey>`.
  RefTo<AzurermDataFactoryCustomerManagedKey> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `customer_managed_key_id` attribute.
  TfRef<String> get customerManagedKeyId =>
      TfRef.attribute<String>(this, 'customer_managed_key_id');

  /// Reference to `data_factory_id` attribute.
  TfRef<String> get dataFactoryId =>
      TfRef.attribute<String>(this, 'data_factory_id');

  /// Reference to `user_assigned_identity_id` attribute.
  TfRef<String> get userAssignedIdentityId =>
      TfRef.attribute<String>(this, 'user_assigned_identity_id');
}
