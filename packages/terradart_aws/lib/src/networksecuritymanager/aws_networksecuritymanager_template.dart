// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networksecuritymanager_template`.
const Set<String> _awsNetworksecuritymanagerTemplateSensitive = <String>{};

/// Networksecuritymanager Template Firewall enum for `firewall_type`.
extension type const NetworksecuritymanagerTemplateFirewallType._(
  TfArg<String> _
)
    implements TfArg<String> {
  NetworksecuritymanagerTemplateFirewallType.variable(String name)
    : this._(TfArg.variable(name));
  NetworksecuritymanagerTemplateFirewallType.expression(String template)
    : this._(TfArg.expression(template));
  const NetworksecuritymanagerTemplateFirewallType.arg(TfArg<String> arg)
    : this._(arg);

  static const waf = NetworksecuritymanagerTemplateFirewallType._(
    TfArgLiteral('WAF'),
  );

  static const List<NetworksecuritymanagerTemplateFirewallType> values = [waf];
}

/// Factory wrapper for `aws_networksecuritymanager_template`.
final class AwsNetworksecuritymanagerTemplate extends Resource {
  static const String tfType = 'aws_networksecuritymanager_template';

  AwsNetworksecuritymanagerTemplate(
    super.localName, {
    TfArg<String>? description,
    required NetworksecuritymanagerTemplateFirewallType firewallType,
    TfArg<bool>? isPublished,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<List<String>> ruleArns,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'firewall_type': firewallType,
           'is_published': ?isPublished,
           'name': name,
           'region': ?region,
           'rule_arns': ruleArns,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNetworksecuritymanagerTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworksecuritymanagerTemplate>`.
  RefTo<AwsNetworksecuritymanagerTemplate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `firewall_type` attribute.
  TfRef<String> get firewallType =>
      TfRef.attribute<String>(this, 'firewall_type');

  /// Reference to `is_published` attribute.
  TfRef<bool> get isPublished => TfRef.attribute<bool>(this, 'is_published');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `rule_arns` attribute.
  TfRef<List<String>> get ruleArns =>
      TfRef.attribute<List<String>>(this, 'rule_arns');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
