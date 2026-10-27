// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_redis_firewall_rule`.
const Set<String> _azurermRedisFirewallRuleSensitive = <String>{};

/// Factory wrapper for `azurerm_redis_firewall_rule`.
final class AzurermRedisFirewallRule extends Resource {
  static const String tfType = 'azurerm_redis_firewall_rule';

  AzurermRedisFirewallRule(
    super.localName, {
    required TfArg<String> endIp,
    required TfArg<String> name,
    required TfArg<String> redisCacheName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> startIp,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'end_ip': endIp,
           'name': name,
           'redis_cache_name': redisCacheName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'start_ip': startIp,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermRedisFirewallRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermRedisFirewallRule>`.
  RefTo<AzurermRedisFirewallRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `end_ip` attribute.
  TfRef<String> get endIp => TfRef.attribute<String>(this, 'end_ip');

  /// Reference to `redis_cache_name` attribute.
  TfRef<String> get redisCacheName =>
      TfRef.attribute<String>(this, 'redis_cache_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `start_ip` attribute.
  TfRef<String> get startIp => TfRef.attribute<String>(this, 'start_ip');
}
