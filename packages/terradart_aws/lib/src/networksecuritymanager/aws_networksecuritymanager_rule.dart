// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networksecuritymanager_rule`.
const Set<String> _awsNetworksecuritymanagerRuleSensitive = <String>{};

/// Networksecuritymanager Rule Firewall enum for `firewall_type`.
extension type const NetworksecuritymanagerRuleFirewallType._(TfArg<String> _)
    implements TfArg<String> {
  NetworksecuritymanagerRuleFirewallType.variable(String name)
    : this._(TfArg.variable(name));
  NetworksecuritymanagerRuleFirewallType.expression(String template)
    : this._(TfArg.expression(template));
  const NetworksecuritymanagerRuleFirewallType.arg(TfArg<String> arg)
    : this._(arg);

  static const waf = NetworksecuritymanagerRuleFirewallType._(
    TfArgLiteral('WAF'),
  );

  static const List<NetworksecuritymanagerRuleFirewallType> values = [waf];
}

/// Networksecuritymanager Rule enum for `type`.
extension type const NetworksecuritymanagerRuleType._(TfArg<String> _)
    implements TfArg<String> {
  NetworksecuritymanagerRuleType.variable(String name)
    : this._(TfArg.variable(name));
  NetworksecuritymanagerRuleType.expression(String template)
    : this._(TfArg.expression(template));
  const NetworksecuritymanagerRuleType.arg(TfArg<String> arg) : this._(arg);

  static const configuration = NetworksecuritymanagerRuleType._(
    TfArgLiteral('CONFIGURATION'),
  );
  static const inspection = NetworksecuritymanagerRuleType._(
    TfArgLiteral('INSPECTION'),
  );

  static const List<NetworksecuritymanagerRuleType> values = [
    configuration,
    inspection,
  ];
}

/// Factory wrapper for `aws_networksecuritymanager_rule`.
final class AwsNetworksecuritymanagerRule extends Resource {
  static const String tfType = 'aws_networksecuritymanager_rule';

  AwsNetworksecuritymanagerRule(
    super.localName, {
    required TfArg<String> configuration,
    TfArg<String>? description,
    required NetworksecuritymanagerRuleFirewallType firewallType,
    TfArg<bool>? isPublished,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required NetworksecuritymanagerRuleType type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'configuration': configuration,
           'description': ?description,
           'firewall_type': firewallType,
           'is_published': ?isPublished,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworksecuritymanagerRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworksecuritymanagerRule>`.
  RefTo<AwsNetworksecuritymanagerRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `configuration` attribute.
  TfRef<String> get configuration =>
      TfRef.attribute<String>(this, 'configuration');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `firewall_type` attribute.
  TfRef<String> get firewallType =>
      TfRef.attribute<String>(this, 'firewall_type');

  /// Reference to `is_published` attribute.
  TfRef<bool> get isPublished => TfRef.attribute<bool>(this, 'is_published');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
