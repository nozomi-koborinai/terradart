// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_logic_app_integration_account_partner`.
const Set<String> _azurermLogicAppIntegrationAccountPartnerSensitive =
    <String>{};

/// Typed helper for the `business_identity` block of
/// `azurerm_logic_app_integration_account_partner` (derived from provider schema).
@immutable
final class LogicAppIntegrationAccountPartnerBusinessIdentity {
  const LogicAppIntegrationAccountPartnerBusinessIdentity({
    required this.qualifier,
    required this.value,
  });

  final TfArg<String> qualifier;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'qualifier': qualifier.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_logic_app_integration_account_partner`.
final class AzurermLogicAppIntegrationAccountPartner extends Resource {
  static const String tfType = 'azurerm_logic_app_integration_account_partner';

  AzurermLogicAppIntegrationAccountPartner(
    super.localName, {
    required TfArg<String> integrationAccountName,
    TfArg<String>? metadata,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required List<LogicAppIntegrationAccountPartnerBusinessIdentity>
    businessIdentity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'integration_account_name': integrationAccountName,
           'metadata': ?metadata,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'business_identity': TfArg.literal([
             for (final e in businessIdentity) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermLogicAppIntegrationAccountPartnerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogicAppIntegrationAccountPartner>`.
  RefTo<AzurermLogicAppIntegrationAccountPartner> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `integration_account_name` attribute.
  TfRef<String> get integrationAccountName =>
      TfRef.attribute<String>(this, 'integration_account_name');

  /// Reference to `metadata` attribute.
  TfRef<String> get metadata => TfRef.attribute<String>(this, 'metadata');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
