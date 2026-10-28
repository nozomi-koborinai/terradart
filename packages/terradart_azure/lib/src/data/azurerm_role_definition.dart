// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../role/azurerm_role_definition.dart';

/// Sensitive field paths for `azurerm_role_definition`.
const Set<String> _azurermRoleDefinitionSensitive = <String>{};

/// Exactly one of `name`, `role_definition_id` on `data.azurerm_role_definition`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class DataRoleDefinitionLookup {
  const DataRoleDefinitionLookup();

  /// Sets `name`.
  const factory DataRoleDefinitionLookup.name(TfArg<String> name) =
      DataRoleDefinitionLookupName;

  /// Sets `role_definition_id`.
  const factory DataRoleDefinitionLookup.roleDefinitionId(
    TfArg<String> roleDefinitionId,
  ) = DataRoleDefinitionLookupRoleDefinitionId;

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

/// The [DataRoleDefinitionLookup.name] choice: sets `name`.
final class DataRoleDefinitionLookupName extends DataRoleDefinitionLookup {
  const DataRoleDefinitionLookupName(this.name);

  final TfArg<String> name;

  @internal
  @override
  String get blockKey => 'name';

  @internal
  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [DataRoleDefinitionLookup.roleDefinitionId] choice: sets `role_definition_id`.
final class DataRoleDefinitionLookupRoleDefinitionId
    extends DataRoleDefinitionLookup {
  const DataRoleDefinitionLookupRoleDefinitionId(this.roleDefinitionId);

  final TfArg<String> roleDefinitionId;

  @internal
  @override
  String get blockKey => 'role_definition_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'role_definition_id': roleDefinitionId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'role_definition_id': roleDefinitionId,
  };
}

/// Factory wrapper for `azurerm_role_definition`.
final class DataAzurermRoleDefinition extends Data {
  static const String tfType = 'azurerm_role_definition';

  DataAzurermRoleDefinition(
    super.localName, {
    required DataRoleDefinitionLookup lookup,
    TfArg<String>? scope,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {...lookup.argMap, 'scope': ?scope},
       );

  @override
  Set<String> get sensitiveFields => _azurermRoleDefinitionSensitive;

  /// A reference to the `azurerm_role_definition` this data source reads, for
  /// arguments typed `RefTo<AzurermRoleDefinition>`.
  RefTo<AzurermRoleDefinition> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `assignable_scopes` attribute.
  TfRef<List<String>> get assignableScopes =>
      TfRef.attribute<List<String>>(this, 'assignable_scopes');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `permissions` attribute.
  TfRef<List<Map<String, Object?>>> get permissions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'permissions');

  /// Reference to `role_definition_resource_id` attribute.
  TfRef<String> get roleDefinitionResourceId =>
      TfRef.attribute<String>(this, 'role_definition_resource_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `role_definition_id` attribute.
  TfRef<String> get roleDefinitionId =>
      TfRef.attribute<String>(this, 'role_definition_id');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');
}
