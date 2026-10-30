// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../pages/cloudflare_custom_pages.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_custom_pages`.
const Set<String> _cloudflareCustomPagesSensitive = <String>{};

/// Data Custom Pages enum for `identifier`.
extension type const DataCustomPagesIdentifier._(TfArg<String> _)
    implements TfArg<String> {
  DataCustomPagesIdentifier.variable(String name)
    : this._(TfArg.variable(name));
  DataCustomPagesIdentifier.expression(String template)
    : this._(TfArg.expression(template));
  const DataCustomPagesIdentifier.arg(TfArg<String> arg) : this._(arg);

  static const v1000Errors = DataCustomPagesIdentifier._(
    TfArgLiteral('1000_errors'),
  );
  static const v500Errors = DataCustomPagesIdentifier._(
    TfArgLiteral('500_errors'),
  );
  static const basicChallenge = DataCustomPagesIdentifier._(
    TfArgLiteral('basic_challenge'),
  );
  static const countryChallenge = DataCustomPagesIdentifier._(
    TfArgLiteral('country_challenge'),
  );
  static const ipBlock = DataCustomPagesIdentifier._(TfArgLiteral('ip_block'));
  static const managedChallenge = DataCustomPagesIdentifier._(
    TfArgLiteral('managed_challenge'),
  );
  static const ratelimitBlock = DataCustomPagesIdentifier._(
    TfArgLiteral('ratelimit_block'),
  );
  static const underAttack = DataCustomPagesIdentifier._(
    TfArgLiteral('under_attack'),
  );
  static const wafBlock = DataCustomPagesIdentifier._(
    TfArgLiteral('waf_block'),
  );
  static const wafChallenge = DataCustomPagesIdentifier._(
    TfArgLiteral('waf_challenge'),
  );

  static const List<DataCustomPagesIdentifier> values = [
    v1000Errors,
    v500Errors,
    basicChallenge,
    countryChallenge,
    ipBlock,
    managedChallenge,
    ratelimitBlock,
    underAttack,
    wafBlock,
    wafChallenge,
  ];
}

/// Factory wrapper for `cloudflare_custom_pages`.
///
/// Accepted Permissions
///
/// - `Account Custom Pages Read` - `Account Custom Pages Write` - `Account
/// Settings Read` - `Account Settings Write` - `Zero Trust: PII Read`
final class DataCloudflareCustomPages extends Data {
  static const String tfType = 'cloudflare_custom_pages';

  DataCloudflareCustomPages(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    required DataCustomPagesIdentifier identifier,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'identifier': identifier,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCustomPagesSensitive;

  /// A reference to the `cloudflare_custom_pages` this data source reads, for
  /// arguments typed `RefTo<CloudflareCustomPages>`.
  RefTo<CloudflareCustomPages> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `identifier` attribute.
  TfRef<String> get identifier => TfRef.attribute<String>(this, 'identifier');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
