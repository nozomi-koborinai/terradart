// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_managed_application_definition`.
const Set<String> _azurermManagedApplicationDefinitionSensitive = <String>{};

/// Managed Application Definition Lock enum for `lock_level`.
extension type const ManagedApplicationDefinitionLockLevel._(TfArg<String> _)
    implements TfArg<String> {
  ManagedApplicationDefinitionLockLevel.variable(String name)
    : this._(TfArg.variable(name));
  ManagedApplicationDefinitionLockLevel.expression(String template)
    : this._(TfArg.expression(template));
  const ManagedApplicationDefinitionLockLevel.arg(TfArg<String> arg)
    : this._(arg);

  static const cannotdelete = ManagedApplicationDefinitionLockLevel._(
    TfArgLiteral('CanNotDelete'),
  );
  static const none = ManagedApplicationDefinitionLockLevel._(
    TfArgLiteral('None'),
  );
  static const readonly = ManagedApplicationDefinitionLockLevel._(
    TfArgLiteral('ReadOnly'),
  );

  static const List<ManagedApplicationDefinitionLockLevel> values = [
    cannotdelete,
    none,
    readonly,
  ];
}

/// Typed helper for the `authorization` block of
/// `azurerm_managed_application_definition` (derived from provider schema).
@immutable
final class ManagedApplicationDefinitionAuthorization {
  const ManagedApplicationDefinitionAuthorization({
    required this.roleDefinitionId,
    required this.servicePrincipalId,
  });

  final TfArg<String> roleDefinitionId;

  final TfArg<String> servicePrincipalId;

  @internal
  Map<String, Object?> encode() => {
    'role_definition_id': roleDefinitionId.toTfJson(),
    'service_principal_id': servicePrincipalId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_managed_application_definition`.
final class AzurermManagedApplicationDefinition extends Resource {
  static const String tfType = 'azurerm_managed_application_definition';

  AzurermManagedApplicationDefinition(
    super.localName, {
    TfArg<String>? createUiDefinition,
    TfArg<String>? description,
    required TfArg<String> displayName,
    required TfArg<String> location,
    required ManagedApplicationDefinitionLockLevel lockLevel,
    TfArg<String>? mainTemplate,
    required TfArg<String> name,
    TfArg<bool>? packageEnabled,
    TfArg<String>? packageFileUri,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    List<ManagedApplicationDefinitionAuthorization>? authorization,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'create_ui_definition': ?createUiDefinition,
           'description': ?description,
           'display_name': displayName,
           'location': location,
           'lock_level': lockLevel,
           'main_template': ?mainTemplate,
           'name': name,
           'package_enabled': ?packageEnabled,
           'package_file_uri': ?packageFileUri,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (authorization != null)
             'authorization': TfArg.literal([
               for (final e in authorization) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermManagedApplicationDefinitionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermManagedApplicationDefinition>`.
  RefTo<AzurermManagedApplicationDefinition> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_ui_definition` attribute.
  TfRef<String> get createUiDefinition =>
      TfRef.attribute<String>(this, 'create_ui_definition');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `lock_level` attribute.
  TfRef<String> get lockLevel => TfRef.attribute<String>(this, 'lock_level');

  /// Reference to `main_template` attribute.
  TfRef<String> get mainTemplate =>
      TfRef.attribute<String>(this, 'main_template');

  /// Reference to `package_enabled` attribute.
  TfRef<bool> get packageEnabled =>
      TfRef.attribute<bool>(this, 'package_enabled');

  /// Reference to `package_file_uri` attribute.
  TfRef<String> get packageFileUri =>
      TfRef.attribute<String>(this, 'package_file_uri');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
