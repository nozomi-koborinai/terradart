// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_automation_connection_type`.
const Set<String> _azurermAutomationConnectionTypeSensitive = <String>{};

/// Typed helper for the `field` block of
/// `azurerm_automation_connection_type` (derived from provider schema).
@immutable
final class AutomationConnectionTypeField {
  const AutomationConnectionTypeField({
    this.isEncrypted,
    this.isOptional,
    required this.name,
    required this.type,
  });

  final TfArg<bool>? isEncrypted;

  final TfArg<bool>? isOptional;

  final TfArg<String> name;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'is_encrypted': ?isEncrypted?.toTfJson(),
    'is_optional': ?isOptional?.toTfJson(),
    'name': name.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_automation_connection_type`.
final class AzurermAutomationConnectionType extends Resource {
  static const String tfType = 'azurerm_automation_connection_type';

  AzurermAutomationConnectionType(
    super.localName, {
    required TfArg<String> automationAccountName,
    TfArg<bool>? isGlobal,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required List<AutomationConnectionTypeField> field,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'automation_account_name': automationAccountName,
           'is_global': ?isGlobal,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'field': TfArg.literal([for (final e in field) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAutomationConnectionTypeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAutomationConnectionType>`.
  RefTo<AzurermAutomationConnectionType> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `automation_account_name` attribute.
  TfRef<String> get automationAccountName =>
      TfRef.attribute<String>(this, 'automation_account_name');

  /// Reference to `is_global` attribute.
  TfRef<bool> get isGlobal => TfRef.attribute<bool>(this, 'is_global');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
