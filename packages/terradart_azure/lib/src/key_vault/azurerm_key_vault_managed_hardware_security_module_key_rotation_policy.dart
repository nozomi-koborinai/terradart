// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_key_vault_managed_hardware_security_module_key_rotation_policy`.
const Set<String>
_azurermKeyVaultManagedHardwareSecurityModuleKeyRotationPolicySensitive =
    <String>{};

/// Exactly one of `time_after_creation`, `time_before_expiry` on `azurerm_key_vault_managed_hardware_security_module_key_rotation_policy`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.timeAfterCreation(...)`.
sealed class KeyVaultManagedHardwareSecurityModuleKeyRotationPolicyTime {
  const KeyVaultManagedHardwareSecurityModuleKeyRotationPolicyTime();

  /// Sets `time_after_creation`.
  const factory KeyVaultManagedHardwareSecurityModuleKeyRotationPolicyTime.timeAfterCreation(
    TfArg<String> timeAfterCreation,
  ) = KeyVaultManagedHardwareSecurityModuleKeyRotationPolicyTimeAfterCreation;

  /// Sets `time_before_expiry`.
  const factory KeyVaultManagedHardwareSecurityModuleKeyRotationPolicyTime.timeBeforeExpiry(
    TfArg<String> timeBeforeExpiry,
  ) = KeyVaultManagedHardwareSecurityModuleKeyRotationPolicyTimeBeforeExpiry;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [KeyVaultManagedHardwareSecurityModuleKeyRotationPolicyTime.timeAfterCreation] choice: sets `time_after_creation`.
final class KeyVaultManagedHardwareSecurityModuleKeyRotationPolicyTimeAfterCreation
    extends KeyVaultManagedHardwareSecurityModuleKeyRotationPolicyTime {
  const KeyVaultManagedHardwareSecurityModuleKeyRotationPolicyTimeAfterCreation(
    this.timeAfterCreation,
  );

  final TfArg<String> timeAfterCreation;

  @internal
  @override
  String get blockKey => 'time_after_creation';

  @internal
  @override
  Map<String, Object?> encode() => {
    'time_after_creation': timeAfterCreation.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'time_after_creation': timeAfterCreation,
  };
}

/// The [KeyVaultManagedHardwareSecurityModuleKeyRotationPolicyTime.timeBeforeExpiry] choice: sets `time_before_expiry`.
final class KeyVaultManagedHardwareSecurityModuleKeyRotationPolicyTimeBeforeExpiry
    extends KeyVaultManagedHardwareSecurityModuleKeyRotationPolicyTime {
  const KeyVaultManagedHardwareSecurityModuleKeyRotationPolicyTimeBeforeExpiry(
    this.timeBeforeExpiry,
  );

  final TfArg<String> timeBeforeExpiry;

  @internal
  @override
  String get blockKey => 'time_before_expiry';

  @internal
  @override
  Map<String, Object?> encode() => {
    'time_before_expiry': timeBeforeExpiry.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'time_before_expiry': timeBeforeExpiry,
  };
}

/// Factory wrapper for `azurerm_key_vault_managed_hardware_security_module_key_rotation_policy`.
final class AzurermKeyVaultManagedHardwareSecurityModuleKeyRotationPolicy
    extends Resource {
  static const String tfType =
      'azurerm_key_vault_managed_hardware_security_module_key_rotation_policy';

  AzurermKeyVaultManagedHardwareSecurityModuleKeyRotationPolicy(
    super.localName, {
    required TfArg<String> expireAfter,
    required TfArg<String> managedHsmKeyId,
    required KeyVaultManagedHardwareSecurityModuleKeyRotationPolicyTime time,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'expire_after': expireAfter,
           'managed_hsm_key_id': managedHsmKeyId,
           ...time.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermKeyVaultManagedHardwareSecurityModuleKeyRotationPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKeyVaultManagedHardwareSecurityModuleKeyRotationPolicy>`.
  RefTo<AzurermKeyVaultManagedHardwareSecurityModuleKeyRotationPolicy>
  get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `expire_after` attribute.
  TfRef<String> get expireAfter =>
      TfRef.attribute<String>(this, 'expire_after');

  /// Reference to `managed_hsm_key_id` attribute.
  TfRef<String> get managedHsmKeyId =>
      TfRef.attribute<String>(this, 'managed_hsm_key_id');

  /// Reference to `time_after_creation` attribute.
  TfRef<String> get timeAfterCreation =>
      TfRef.attribute<String>(this, 'time_after_creation');

  /// Reference to `time_before_expiry` attribute.
  TfRef<String> get timeBeforeExpiry =>
      TfRef.attribute<String>(this, 'time_before_expiry');
}
