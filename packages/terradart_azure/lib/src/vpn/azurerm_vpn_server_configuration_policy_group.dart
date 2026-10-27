// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_vpn_server_configuration_policy_group`.
const Set<String> _azurermVpnServerConfigurationPolicyGroupSensitive =
    <String>{};

/// Typed helper for the `policy` block of
/// `azurerm_vpn_server_configuration_policy_group` (derived from provider schema).
@immutable
final class VpnServerConfigurationPolicyGroupPolicy {
  const VpnServerConfigurationPolicyGroupPolicy({
    required this.name,
    required this.type,
    required this.value,
  });

  final TfArg<String> name;

  final VpnServerConfigurationPolicyGroupType type;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const VpnServerConfigurationPolicyGroupType._(TfArg<String> _)
    implements TfArg<String> {
  VpnServerConfigurationPolicyGroupType.variable(String name)
    : this._(TfArg.variable(name));
  VpnServerConfigurationPolicyGroupType.expression(String template)
    : this._(TfArg.expression(template));
  const VpnServerConfigurationPolicyGroupType.arg(TfArg<String> arg)
    : this._(arg);

  static const aadgroupid = VpnServerConfigurationPolicyGroupType._(
    TfArgLiteral('AADGroupId'),
  );
  static const certificategroupid = VpnServerConfigurationPolicyGroupType._(
    TfArgLiteral('CertificateGroupId'),
  );
  static const radiusazuregroupid = VpnServerConfigurationPolicyGroupType._(
    TfArgLiteral('RadiusAzureGroupId'),
  );

  static const List<VpnServerConfigurationPolicyGroupType> values = [
    aadgroupid,
    certificategroupid,
    radiusazuregroupid,
  ];
}

/// Factory wrapper for `azurerm_vpn_server_configuration_policy_group`.
final class AzurermVpnServerConfigurationPolicyGroup extends Resource {
  static const String tfType = 'azurerm_vpn_server_configuration_policy_group';

  AzurermVpnServerConfigurationPolicyGroup(
    super.localName, {
    TfArg<bool>? isDefault,
    required TfArg<String> name,
    TfArg<num>? priority,
    required TfArg<String> vpnServerConfigurationId,
    required List<VpnServerConfigurationPolicyGroupPolicy> policy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'is_default': ?isDefault,
           'name': name,
           'priority': ?priority,
           'vpn_server_configuration_id': vpnServerConfigurationId,
           'policy': TfArg.literal([for (final e in policy) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermVpnServerConfigurationPolicyGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVpnServerConfigurationPolicyGroup>`.
  RefTo<AzurermVpnServerConfigurationPolicyGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `is_default` attribute.
  TfRef<bool> get isDefault => TfRef.attribute<bool>(this, 'is_default');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `vpn_server_configuration_id` attribute.
  TfRef<String> get vpnServerConfigurationId =>
      TfRef.attribute<String>(this, 'vpn_server_configuration_id');
}
