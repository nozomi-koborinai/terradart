// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_custom_pages`.
const Set<String> _cloudflareCustomPagesSensitive = <String>{};

/// Custom Pages enum for `identifier`.
enum CustomPagesIdentifier implements TerraformEnum {
  v1000Errors('1000_errors'),
  v500Errors('500_errors'),
  basicChallenge('basic_challenge'),
  countryChallenge('country_challenge'),
  ipBlock('ip_block'),
  managedChallenge('managed_challenge'),
  ratelimitBlock('ratelimit_block'),
  underAttack('under_attack'),
  wafBlock('waf_block'),
  wafChallenge('waf_challenge');

  const CustomPagesIdentifier(this.terraformValue);
  @override
  final String terraformValue;
}

/// Custom Pages enum for `state`.
enum CustomPagesState implements TerraformEnum {
  defaultCase('default'),
  customized('customized');

  const CustomPagesState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_custom_pages`.
///
/// Accepted Permissions
///
/// - `Account Custom Pages Read` - `Account Custom Pages Write` - `Account
/// Settings Read` - `Account Settings Write` - `Zero Trust: PII Read`
final class CloudflareCustomPages extends Resource {
  static const String tfType = 'cloudflare_custom_pages';

  CloudflareCustomPages({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    required TfArg<CustomPagesIdentifier> identifier,
    required TfArg<CustomPagesState> state,
    TfArg<String>? url,
    RefTo<CloudflareZone>? zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'identifier': identifier,
           'state': state,
           'url': ?url,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCustomPagesSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareCustomPages>`.
  RefTo<CloudflareCustomPages> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `preview_target` attribute.
  TfRef<String> get previewTarget =>
      TfRef.attribute<String>(this, 'preview_target');

  /// Reference to `required_tokens` attribute.
  TfRef<List<String>> get requiredTokens =>
      TfRef.attribute<List<String>>(this, 'required_tokens');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `identifier` attribute.
  TfRef<String> get identifier => TfRef.attribute<String>(this, 'identifier');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
