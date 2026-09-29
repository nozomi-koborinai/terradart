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
           if (botFightMode != null) 'bot_fight_mode': botFightMode,
           if (clearanceLevel != null) 'clearance_level': clearanceLevel,
           if (direction != null) 'direction': direction,
           'domains': domains,
           if (ephemeralId != null) 'ephemeral_id': ephemeralId,
           if (filter != null) 'filter': filter,
           'mode': mode,
           'name': name,
           if (offlabel != null) 'offlabel': offlabel,
           if (order != null) 'order': order,
           if (page != null) 'page': page,
           if (perPage != null) 'per_page': perPage,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareTurnstileWidgetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareTurnstileWidget>`.
  RefTo<CloudflareTurnstileWidget> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
