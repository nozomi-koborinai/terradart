// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_sso_connector`.
const Set<String> _cloudflareSsoConnectorSensitive = <String>{};

/// Factory wrapper for `cloudflare_sso_connector`.
///
/// Accepted Permissions
///
/// - `SSO Connector Read` - `SSO Connector Write`
final class CloudflareSsoConnector extends Resource {
  static const String tfType = 'cloudflare_sso_connector';

  CloudflareSsoConnector({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<bool>? beginVerification,
    required TfArg<String> emailDomain,
    TfArg<bool>? enabled,
    TfArg<bool>? useFedrampLanguage,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'begin_verification': ?beginVerification,
           'email_domain': emailDomain,
           'enabled': ?enabled,
           'use_fedramp_language': ?useFedrampLanguage,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSsoConnectorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareSsoConnector>`.
  RefTo<CloudflareSsoConnector> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `updated_on` attribute.
  TfRef<String> get updatedOn => TfRef.attribute<String>(this, 'updated_on');
}
