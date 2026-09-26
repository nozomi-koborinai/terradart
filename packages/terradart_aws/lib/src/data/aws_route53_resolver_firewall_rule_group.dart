// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_resolver_firewall_rule_group`.
const Set<String> _awsRoute53ResolverFirewallRuleGroupSensitive = <String>{};

/// Factory wrapper for `aws_route53_resolver_firewall_rule_group`.
final class DataAwsRoute53ResolverFirewallRuleGroup extends Data {
  static const String tfType = 'aws_route53_resolver_firewall_rule_group';

  DataAwsRoute53ResolverFirewallRuleGroup({
    required super.localName,
    required TfArg<String> firewallRuleGroupId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'firewall_rule_group_id': firewallRuleGroupId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRoute53ResolverFirewallRuleGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `creator_request_id` attribute.
  TfRef<String> get creatorRequestId =>
      TfRef.attribute<String>(this, 'creator_request_id');

  /// Reference to `modification_time` attribute.
  TfRef<String> get modificationTime =>
      TfRef.attribute<String>(this, 'modification_time');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `rule_count` attribute.
  TfRef<num> get ruleCount => TfRef.attribute<num>(this, 'rule_count');

  /// Reference to `share_status` attribute.
  TfRef<String> get shareStatus =>
      TfRef.attribute<String>(this, 'share_status');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_message` attribute.
  TfRef<String> get statusMessage =>
      TfRef.attribute<String>(this, 'status_message');
}
