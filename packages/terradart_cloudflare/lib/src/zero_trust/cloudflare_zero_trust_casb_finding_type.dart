// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_casb_finding_type`.
const Set<String> _cloudflareZeroTrustCasbFindingTypeSensitive = <String>{};

/// Zero Trust Casb Finding Type Asset enum for `asset_vendor`.
extension type const ZeroTrustCasbFindingTypeAssetVendor._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustCasbFindingTypeAssetVendor.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustCasbFindingTypeAssetVendor.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustCasbFindingTypeAssetVendor.arg(TfArg<String> arg)
    : this._(arg);

  static const anthropic = ZeroTrustCasbFindingTypeAssetVendor._(
    TfArgLiteral('ANTHROPIC'),
  );
  static const aws = ZeroTrustCasbFindingTypeAssetVendor._(TfArgLiteral('AWS'));
  static const bitbucket = ZeroTrustCasbFindingTypeAssetVendor._(
    TfArgLiteral('BITBUCKET'),
  );
  static const box = ZeroTrustCasbFindingTypeAssetVendor._(TfArgLiteral('BOX'));
  static const confluence = ZeroTrustCasbFindingTypeAssetVendor._(
    TfArgLiteral('CONFLUENCE'),
  );
  static const dropbox = ZeroTrustCasbFindingTypeAssetVendor._(
    TfArgLiteral('DROPBOX'),
  );
  static const github = ZeroTrustCasbFindingTypeAssetVendor._(
    TfArgLiteral('GITHUB'),
  );
  static const googleCloudPlatform = ZeroTrustCasbFindingTypeAssetVendor._(
    TfArgLiteral('GOOGLE_CLOUD_PLATFORM'),
  );
  static const googleWorkspace = ZeroTrustCasbFindingTypeAssetVendor._(
    TfArgLiteral('GOOGLE_WORKSPACE'),
  );
  static const jira = ZeroTrustCasbFindingTypeAssetVendor._(
    TfArgLiteral('JIRA'),
  );
  static const microsoft = ZeroTrustCasbFindingTypeAssetVendor._(
    TfArgLiteral('MICROSOFT'),
  );
  static const openai = ZeroTrustCasbFindingTypeAssetVendor._(
    TfArgLiteral('OPENAI'),
  );
  static const salesforce = ZeroTrustCasbFindingTypeAssetVendor._(
    TfArgLiteral('SALESFORCE'),
  );
  static const servicenow = ZeroTrustCasbFindingTypeAssetVendor._(
    TfArgLiteral('SERVICENOW'),
  );
  static const slack = ZeroTrustCasbFindingTypeAssetVendor._(
    TfArgLiteral('SLACK'),
  );
  static const zoom = ZeroTrustCasbFindingTypeAssetVendor._(
    TfArgLiteral('ZOOM'),
  );

  static const List<ZeroTrustCasbFindingTypeAssetVendor> values = [
    anthropic,
    aws,
    bitbucket,
    box,
    confluence,
    dropbox,
    github,
    googleCloudPlatform,
    googleWorkspace,
    jira,
    microsoft,
    openai,
    salesforce,
    servicenow,
    slack,
    zoom,
  ];
}

/// Zero Trust Casb Finding Type enum for `severity`.
extension type const ZeroTrustCasbFindingTypeSeverity._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustCasbFindingTypeSeverity.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustCasbFindingTypeSeverity.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustCasbFindingTypeSeverity.arg(TfArg<String> arg) : this._(arg);

  static const critical = ZeroTrustCasbFindingTypeSeverity._(
    TfArgLiteral('Critical'),
  );
  static const high = ZeroTrustCasbFindingTypeSeverity._(TfArgLiteral('High'));
  static const medium = ZeroTrustCasbFindingTypeSeverity._(
    TfArgLiteral('Medium'),
  );
  static const low = ZeroTrustCasbFindingTypeSeverity._(TfArgLiteral('Low'));

  static const List<ZeroTrustCasbFindingTypeSeverity> values = [
    critical,
    high,
    medium,
    low,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_casb_finding_type`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class CloudflareZeroTrustCasbFindingType extends Resource {
  static const String tfType = 'cloudflare_zero_trust_casb_finding_type';

  CloudflareZeroTrustCasbFindingType(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<bool> appliesToAllIntegrations,
    required TfArg<String> assetClass,
    required ZeroTrustCasbFindingTypeAssetVendor assetVendor,
    required TfArg<String> description,
    required TfArg<String> expression,
    TfArg<List<String>>? integrationIds,
    required TfArg<String> name,
    required ZeroTrustCasbFindingTypeSeverity severity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'applies_to_all_integrations': appliesToAllIntegrations,
           'asset_class': assetClass,
           'asset_vendor': assetVendor,
           'description': description,
           'expression': expression,
           'integration_ids': ?integrationIds,
           'name': name,
           'severity': severity,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustCasbFindingTypeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustCasbFindingType>`.
  RefTo<CloudflareZeroTrustCasbFindingType> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `match_count` attribute.
  TfRef<num> get matchCount => TfRef.attribute<num>(this, 'match_count');

  /// Reference to `origin` attribute.
  TfRef<String> get origin => TfRef.attribute<String>(this, 'origin');

  /// Reference to `quarantined` attribute.
  TfRef<bool> get quarantined => TfRef.attribute<bool>(this, 'quarantined');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `vendor` attribute.
  TfRef<String> get vendor => TfRef.attribute<String>(this, 'vendor');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `applies_to_all_integrations` attribute.
  TfRef<bool> get appliesToAllIntegrations =>
      TfRef.attribute<bool>(this, 'applies_to_all_integrations');

  /// Reference to `asset_class` attribute.
  TfRef<String> get assetClass => TfRef.attribute<String>(this, 'asset_class');

  /// Reference to `asset_vendor` attribute.
  TfRef<String> get assetVendor =>
      TfRef.attribute<String>(this, 'asset_vendor');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `expression` attribute.
  TfRef<String> get expression => TfRef.attribute<String>(this, 'expression');

  /// Reference to `integration_ids` attribute.
  TfRef<List<String>> get integrationIds =>
      TfRef.attribute<List<String>>(this, 'integration_ids');

  /// Reference to `severity` attribute.
  TfRef<String> get severity => TfRef.attribute<String>(this, 'severity');
}
