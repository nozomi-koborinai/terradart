// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_named_value`.
const Set<String> _azurermApiManagementNamedValueSensitive = <String>{'value'};

/// Exactly one of `value`, `value_from_key_vault` on `azurerm_api_management_named_value`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.value(...)`.
sealed class ApiManagementNamedValueSource {
  const ApiManagementNamedValueSource();

  /// Sets `value`.
  const factory ApiManagementNamedValueSource.value(Sensitive<String> value) =
      ApiManagementNamedValueSourceValue;

  /// Sets `value_from_key_vault`.
  const factory ApiManagementNamedValueSource.valueFromKeyVault(
    ApiManagementNamedValueFromKeyVault valueFromKeyVault,
  ) = ApiManagementNamedValueSourceValueFromKeyVault;

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

/// The [ApiManagementNamedValueSource.value] choice: sets `value`.
final class ApiManagementNamedValueSourceValue
    extends ApiManagementNamedValueSource {
  const ApiManagementNamedValueSourceValue(this.value);

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

/// The [ApiManagementNamedValueSource.valueFromKeyVault] choice: sets `value_from_key_vault`.
final class ApiManagementNamedValueSourceValueFromKeyVault
    extends ApiManagementNamedValueSource {
  const ApiManagementNamedValueSourceValueFromKeyVault(this.valueFromKeyVault);

  final ApiManagementNamedValueFromKeyVault valueFromKeyVault;

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
/// `azurerm_api_management_named_value` (derived from provider schema).
@immutable
final class ApiManagementNamedValueFromKeyVault {
  const ApiManagementNamedValueFromKeyVault({
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

/// Factory wrapper for `azurerm_api_management_named_value`.
final class AzurermApiManagementNamedValue extends Resource {
  static const String tfType = 'azurerm_api_management_named_value';

  AzurermApiManagementNamedValue(
    super.localName, {
    required TfArg<String> apiManagementName,
    required TfArg<String> displayName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? secret,
    TfArg<List<String>>? tags,
    required ApiManagementNamedValueSource source,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_name': apiManagementName,
           'display_name': displayName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'secret': ?secret,
           'tags': ?tags,
           ...source.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementNamedValueSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementNamedValue>`.
  RefTo<AzurermApiManagementNamedValue> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `secret` attribute.
  TfRef<bool> get secret => TfRef.attribute<bool>(this, 'secret');

  /// Reference to `tags` attribute.
  TfRef<List<String>> get tags => TfRef.attribute<List<String>>(this, 'tags');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}
