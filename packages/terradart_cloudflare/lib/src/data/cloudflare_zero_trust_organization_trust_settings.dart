// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_organization_trust_settings.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_organization_trust_settings`.
const Set<String> _cloudflareZeroTrustOrganizationTrustSettingsSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_organization_trust_settings`.
///
/// Accepted Permissions
///
/// - `Access: Organizations, Identity Providers, and Groups Read` - `Access:
/// Organizations, Identity Providers, and Groups Revoke` - `Access:
/// Organizations, Identity Providers, and Groups Write`
final class DataCloudflareZeroTrustOrganizationTrustSettings extends Data {
  static const String tfType =
      'cloudflare_zero_trust_organization_trust_settings';

  DataCloudflareZeroTrustOrganizationTrustSettings(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustOrganizationTrustSettingsSensitive;

  /// A reference to the `cloudflare_zero_trust_organization_trust_settings` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustOrganizationTrustSettings>`.
  RefTo<CloudflareZeroTrustOrganizationTrustSettings> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `grant_trust_to_all_accounts_in_org` attribute.
  TfRef<bool> get grantTrustToAllAccountsInOrg =>
      TfRef.attribute<bool>(this, 'grant_trust_to_all_accounts_in_org');

  /// Reference to `trusting_accounts` attribute.
  TfRef<List<String>> get trustingAccounts =>
      TfRef.attribute<List<String>>(this, 'trusting_accounts');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');
}
