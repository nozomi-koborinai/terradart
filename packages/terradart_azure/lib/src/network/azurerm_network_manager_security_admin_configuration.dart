// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_network_manager_security_admin_configuration`.
const Set<String> _azurermNetworkManagerSecurityAdminConfigurationSensitive =
    <String>{};

/// Network Manager Security Admin Configuration Apply On Network Intent Policy Based enum for `apply_on_network_intent_policy_based_services`.
extension type const NetworkManagerSecurityAdminConfigurationApplyOnNetworkIntentPolicyBasedServices._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkManagerSecurityAdminConfigurationApplyOnNetworkIntentPolicyBasedServices.variable(
    String name,
  ) : this._(TfArg.variable(name));
  NetworkManagerSecurityAdminConfigurationApplyOnNetworkIntentPolicyBasedServices.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const NetworkManagerSecurityAdminConfigurationApplyOnNetworkIntentPolicyBasedServices.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const all =
      NetworkManagerSecurityAdminConfigurationApplyOnNetworkIntentPolicyBasedServices._(
        TfArgLiteral('All'),
      );
  static const allowrulesonly =
      NetworkManagerSecurityAdminConfigurationApplyOnNetworkIntentPolicyBasedServices._(
        TfArgLiteral('AllowRulesOnly'),
      );
  static const none =
      NetworkManagerSecurityAdminConfigurationApplyOnNetworkIntentPolicyBasedServices._(
        TfArgLiteral('None'),
      );

  static const List<
    NetworkManagerSecurityAdminConfigurationApplyOnNetworkIntentPolicyBasedServices
  >
  values = [all, allowrulesonly, none];
}

/// Factory wrapper for `azurerm_network_manager_security_admin_configuration`.
final class AzurermNetworkManagerSecurityAdminConfiguration extends Resource {
  static const String tfType =
      'azurerm_network_manager_security_admin_configuration';

  AzurermNetworkManagerSecurityAdminConfiguration(
    super.localName, {
    List<
      NetworkManagerSecurityAdminConfigurationApplyOnNetworkIntentPolicyBasedServices
    >?
    applyOnNetworkIntentPolicyBasedServices,
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<String> networkManagerId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (applyOnNetworkIntentPolicyBasedServices != null)
             'apply_on_network_intent_policy_based_services': TfArg.literal([
               for (final e in applyOnNetworkIntentPolicyBasedServices)
                 e.toTfJson(),
             ]),
           'description': ?description,
           'name': name,
           'network_manager_id': networkManagerId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermNetworkManagerSecurityAdminConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkManagerSecurityAdminConfiguration>`.
  RefTo<AzurermNetworkManagerSecurityAdminConfiguration> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `apply_on_network_intent_policy_based_services` attribute.
  TfRef<List<String>> get applyOnNetworkIntentPolicyBasedServices =>
      TfRef.attribute<List<String>>(
        this,
        'apply_on_network_intent_policy_based_services',
      );

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `network_manager_id` attribute.
  TfRef<String> get networkManagerId =>
      TfRef.attribute<String>(this, 'network_manager_id');
}
