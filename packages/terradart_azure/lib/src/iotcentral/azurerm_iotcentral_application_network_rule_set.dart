// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_iotcentral_application_network_rule_set`.
const Set<String> _azurermIotcentralApplicationNetworkRuleSetSensitive =
    <String>{};

/// Iotcentral Application Network Rule Set Default enum for `default_action`.
extension type const IotcentralApplicationNetworkRuleSetDefaultAction._(
  TfArg<String> _
) implements TfArg<String> {
  IotcentralApplicationNetworkRuleSetDefaultAction.variable(String name)
    : this._(TfArg.variable(name));
  IotcentralApplicationNetworkRuleSetDefaultAction.expression(String template)
    : this._(TfArg.expression(template));
  const IotcentralApplicationNetworkRuleSetDefaultAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = IotcentralApplicationNetworkRuleSetDefaultAction._(
    TfArgLiteral('Allow'),
  );
  static const deny = IotcentralApplicationNetworkRuleSetDefaultAction._(
    TfArgLiteral('Deny'),
  );

  static const List<IotcentralApplicationNetworkRuleSetDefaultAction> values = [
    allow,
    deny,
  ];
}

/// Typed helper for the `ip_rule` block of
/// `azurerm_iotcentral_application_network_rule_set` (derived from provider schema).
@immutable
final class IotcentralApplicationNetworkRuleSetIpRule {
  const IotcentralApplicationNetworkRuleSetIpRule({
    required this.ipMask,
    required this.name,
  });

  final TfArg<String> ipMask;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'ip_mask': ipMask.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_iotcentral_application_network_rule_set`.
final class AzurermIotcentralApplicationNetworkRuleSet extends Resource {
  static const String tfType =
      'azurerm_iotcentral_application_network_rule_set';

  AzurermIotcentralApplicationNetworkRuleSet(
    super.localName, {
    TfArg<bool>? applyToDevice,
    IotcentralApplicationNetworkRuleSetDefaultAction? defaultAction,
    required TfArg<String> iotcentralApplicationId,
    List<IotcentralApplicationNetworkRuleSetIpRule>? ipRule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'apply_to_device': ?applyToDevice,
           'default_action': ?defaultAction,
           'iotcentral_application_id': iotcentralApplicationId,
           if (ipRule != null)
             'ip_rule': TfArg.literal([for (final e in ipRule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermIotcentralApplicationNetworkRuleSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermIotcentralApplicationNetworkRuleSet>`.
  RefTo<AzurermIotcentralApplicationNetworkRuleSet> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `apply_to_device` attribute.
  TfRef<bool> get applyToDevice =>
      TfRef.attribute<bool>(this, 'apply_to_device');

  /// Reference to `default_action` attribute.
  TfRef<String> get defaultAction =>
      TfRef.attribute<String>(this, 'default_action');

  /// Reference to `iotcentral_application_id` attribute.
  TfRef<String> get iotcentralApplicationId =>
      TfRef.attribute<String>(this, 'iotcentral_application_id');
}
