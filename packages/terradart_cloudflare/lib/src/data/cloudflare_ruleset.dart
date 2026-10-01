// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../rules/cloudflare_ruleset.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_ruleset`.
const Set<String> _cloudflareRulesetSensitive = <String>{};

/// Factory wrapper for `cloudflare_ruleset`.
final class DataCloudflareRuleset extends Data {
  static const String tfType = 'cloudflare_ruleset';

  DataCloudflareRuleset(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? rulesetId,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'ruleset_id': ?rulesetId,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareRulesetSensitive;

  /// A reference to the `cloudflare_ruleset` this data source reads, for
  /// arguments typed `RefTo<CloudflareRuleset>`.
  RefTo<CloudflareRuleset> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `last_updated` attribute.
  TfRef<String> get lastUpdated =>
      TfRef.attribute<String>(this, 'last_updated');

  /// Reference to `phase` attribute.
  TfRef<String> get phase => TfRef.attribute<String>(this, 'phase');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `ruleset_id` attribute.
  TfRef<String> get rulesetId => TfRef.attribute<String>(this, 'ruleset_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
