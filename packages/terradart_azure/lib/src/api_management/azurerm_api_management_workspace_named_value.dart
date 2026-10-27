// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_api_management_workspace_named_value`.
const Set<String> _azurermApiManagementWorkspaceNamedValueSensitive = <String>{
  'value',
};

/// Exactly one of `value`, `value_from_key_vault` on `azurerm_api_management_workspace_named_value`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.value(...)`.
sealed class ApiManagementWorkspaceNamedValueOrValueFromKeyVault {
  const ApiManagementWorkspaceNamedValueOrValueFromKeyVault();

  /// Sets `value`.
  const factory ApiManagementWorkspaceNamedValueOrValueFromKeyVault.value(
    Sensitive<String> value,
  ) = ApiManagementWorkspaceNamedValueOrValueFromKeyVaultValue;

  /// Sets `value_from_key_vault`.
  const factory ApiManagementWorkspaceNamedValueOrValueFromKeyVault.valueFromKeyVault(
    ApiManagementWorkspaceNamedValueFromKeyVault valueFromKeyVault,
  ) = ApiManagementWorkspaceNamedValueOrValueFromKeyVaultChoice;

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

/// The [ApiManagementWorkspaceNamedValueOrValueFromKeyVault.value] choice: sets `value`.
final class ApiManagementWorkspaceNamedValueOrValueFromKeyVaultValue
    extends ApiManagementWorkspaceNamedValueOrValueFromKeyVault {
  const ApiManagementWorkspaceNamedValueOrValueFromKeyVaultValue(this.value);

  final Sensitive<String> value;

  @internal
  @override
  String get blockKey => 'value';

  @internal
  @override
  Map<String, Object?> encode() => {'value': value.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'value': value};
}

/// The [ApiManagementWorkspaceNamedValueOrValueFromKeyVault.valueFromKeyVault] choice: sets `value_from_key_vault`.
final class ApiManagementWorkspaceNamedValueOrValueFromKeyVaultChoice
    extends ApiManagementWorkspaceNamedValueOrValueFromKeyVault {
  const ApiManagementWorkspaceNamedValueOrValueFromKeyVaultChoice(
    this.valueFromKeyVault,
  );

  final ApiManagementWorkspaceNamedValueFromKeyVault valueFromKeyVault;

  @internal
  @override
  String get blockKey => 'value_from_key_vault';

  @internal
  @override
  Map<String, Object?> encode() => {
    'value_from_key_vault': valueFromKeyVault.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'value_from_key_vault': TfArg.literal(valueFromKeyVault.encode()),
  };
}

/// Typed helper for the `value_from_key_vault` block of
/// `azurerm_api_management_workspace_named_value` (derived from provider schema).
@immutable
final class ApiManagementWorkspaceNamedValueFromKeyVault {
  const ApiManagementWorkspaceNamedValueFromKeyVault({
    this.identityClientId,
    required this.secretId,
  });

  final TfArg<String>? identityClientId;

  final TfArg<String> secretId;

  @internal
  Map<String, Object?> encode() => {
    'identity_client_id': ?identityClientId?.toTfJson(),
    'secret_id': secretId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_api_management_workspace_named_value`.
final class AzurermApiManagementWorkspaceNamedValue extends Resource {
  static const String tfType = 'azurerm_api_management_workspace_named_value';

  AzurermApiManagementWorkspaceNamedValue(
    super.localName, {
    required TfArg<String> apiManagementWorkspaceId,
    required TfArg<String> displayName,
    required TfArg<String> name,
    TfArg<bool>? secret,
    TfArg<List<String>>? tags,
    required ApiManagementWorkspaceNamedValueOrValueFromKeyVault
    valueOrValueFromKeyVault,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_workspace_id': apiManagementWorkspaceId,
           'display_name': displayName,
           'name': name,
           'secret': ?secret,
           'tags': ?tags,
           ...valueOrValueFromKeyVault.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApiManagementWorkspaceNamedValueSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementWorkspaceNamedValue>`.
  RefTo<AzurermApiManagementWorkspaceNamedValue> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_workspace_id` attribute.
  TfRef<String> get apiManagementWorkspaceId =>
      TfRef.attribute<String>(this, 'api_management_workspace_id');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `secret` attribute.
  TfRef<bool> get secret => TfRef.attribute<bool>(this, 'secret');

  /// Reference to `tags` attribute.
  TfRef<List<String>> get tags => TfRef.attribute<List<String>>(this, 'tags');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}
