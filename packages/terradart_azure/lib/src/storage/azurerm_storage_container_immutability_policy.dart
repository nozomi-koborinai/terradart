// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_storage_container_immutability_policy`.
const Set<String> _azurermStorageContainerImmutabilityPolicySensitive =
    <String>{};

/// Factory wrapper for `azurerm_storage_container_immutability_policy`.
final class AzurermStorageContainerImmutabilityPolicy extends Resource {
  static const String tfType = 'azurerm_storage_container_immutability_policy';

  AzurermStorageContainerImmutabilityPolicy(
    super.localName, {
    required TfArg<num> immutabilityPeriodInDays,
    TfArg<bool>? locked,
    TfArg<bool>? protectedAppendWritesAllEnabled,
    TfArg<bool>? protectedAppendWritesEnabled,
    required TfArg<String> storageContainerResourceManagerId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'immutability_period_in_days': immutabilityPeriodInDays,
           'locked': ?locked,
           'protected_append_writes_all_enabled':
               ?protectedAppendWritesAllEnabled,
           'protected_append_writes_enabled': ?protectedAppendWritesEnabled,
           'storage_container_resource_manager_id':
               storageContainerResourceManagerId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermStorageContainerImmutabilityPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageContainerImmutabilityPolicy>`.
  RefTo<AzurermStorageContainerImmutabilityPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `immutability_period_in_days` attribute.
  TfRef<num> get immutabilityPeriodInDays =>
      TfRef.attribute<num>(this, 'immutability_period_in_days');

  /// Reference to `locked` attribute.
  TfRef<bool> get locked => TfRef.attribute<bool>(this, 'locked');

  /// Reference to `protected_append_writes_all_enabled` attribute.
  TfRef<bool> get protectedAppendWritesAllEnabled =>
      TfRef.attribute<bool>(this, 'protected_append_writes_all_enabled');

  /// Reference to `protected_append_writes_enabled` attribute.
  TfRef<bool> get protectedAppendWritesEnabled =>
      TfRef.attribute<bool>(this, 'protected_append_writes_enabled');

  /// Reference to `storage_container_resource_manager_id` attribute.
  TfRef<String> get storageContainerResourceManagerId =>
      TfRef.attribute<String>(this, 'storage_container_resource_manager_id');
}
