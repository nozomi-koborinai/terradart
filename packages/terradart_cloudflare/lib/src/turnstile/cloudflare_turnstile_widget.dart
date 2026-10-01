// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_turnstile_widget`.
const Set<String> _cloudflareTurnstileWidgetSensitive = <String>{'secret'};

/// Turnstile Widget Clearance enum for `clearance_level`.
enum TurnstileWidgetClearanceLevel implements TerraformEnum {
  noClearance('no_clearance'),
  jschallenge('jschallenge'),
  managed('managed'),
  interactive('interactive');

  const TurnstileWidgetClearanceLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Turnstile Widget enum for `direction`.
enum TurnstileWidgetDirection implements TerraformEnum {
  asc('asc'),
  desc('desc');

  const TurnstileWidgetDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// Turnstile Widget enum for `mode`.
enum TurnstileWidgetMode implements TerraformEnum {
  nonInteractive('non-interactive'),
  invisible('invisible'),
  managed('managed');

  const TurnstileWidgetMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Turnstile Widget enum for `order`.
enum TurnstileWidgetOrder implements TerraformEnum {
  id('id'),
  sitekey('sitekey'),
  name('name'),
  createdOn('created_on'),
  modifiedOn('modified_on');

  const TurnstileWidgetOrder(this.terraformValue);
  @override
  final String terraformValue;
}

/// Turnstile Widget enum for `region`.
enum TurnstileWidgetRegion implements TerraformEnum {
  world('world'),
  china('china');

  const TurnstileWidgetRegion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_turnstile_widget`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write` - `Turnstile Sites
/// Read` - `Turnstile Sites Write`
final class CloudflareTurnstileWidget extends Resource {
  static const String tfType = 'cloudflare_turnstile_widget';

  CloudflareTurnstileWidget({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<bool>? botFightMode,
    TfArg<TurnstileWidgetClearanceLevel>? clearanceLevel,
    TfArg<TurnstileWidgetDirection>? direction,
    required TfArg<List<String>> domains,
    TfArg<bool>? ephemeralId,
    TfArg<String>? filter,
    required TfArg<TurnstileWidgetMode> mode,
    required TfArg<String> name,
    TfArg<bool>? offlabel,
    TfArg<TurnstileWidgetOrder>? order,
    TfArg<num>? page,
    TfArg<num>? perPage,
    TfArg<TurnstileWidgetRegion>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'bot_fight_mode': ?botFightMode,
           'clearance_level': ?clearanceLevel,
           'direction': ?direction,
           'domains': domains,
           'ephemeral_id': ?ephemeralId,
           'filter': ?filter,
           'mode': mode,
           'name': name,
           'offlabel': ?offlabel,
           'order': ?order,
           'page': ?page,
           'per_page': ?perPage,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareTurnstileWidgetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareTurnstileWidget>`.
  RefTo<CloudflareTurnstileWidget> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `deployed_via` attribute.
  TfRef<String> get deployedVia =>
      TfRef.attribute<String>(this, 'deployed_via');

  /// Reference to `last_modified_via` attribute.
  TfRef<String> get lastModifiedVia =>
      TfRef.attribute<String>(this, 'last_modified_via');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `secret` attribute.
  TfRef<String> get secret => TfRef.attribute<String>(this, 'secret');

  /// Reference to `sitekey` attribute.
  TfRef<String> get sitekey => TfRef.attribute<String>(this, 'sitekey');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `bot_fight_mode` attribute.
  TfRef<bool> get botFightMode => TfRef.attribute<bool>(this, 'bot_fight_mode');

  /// Reference to `clearance_level` attribute.
  TfRef<String> get clearanceLevel =>
      TfRef.attribute<String>(this, 'clearance_level');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `domains` attribute.
  TfRef<List<String>> get domains =>
      TfRef.attribute<List<String>>(this, 'domains');

  /// Reference to `ephemeral_id` attribute.
  TfRef<bool> get ephemeralId => TfRef.attribute<bool>(this, 'ephemeral_id');

  /// Reference to `filter` attribute.
  TfRef<String> get filter => TfRef.attribute<String>(this, 'filter');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `offlabel` attribute.
  TfRef<bool> get offlabel => TfRef.attribute<bool>(this, 'offlabel');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');

  /// Reference to `page` attribute.
  TfRef<num> get page => TfRef.attribute<num>(this, 'page');

  /// Reference to `per_page` attribute.
  TfRef<num> get perPage => TfRef.attribute<num>(this, 'per_page');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
