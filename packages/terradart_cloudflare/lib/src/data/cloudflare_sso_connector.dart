// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_sso_connector`.
const Set<String> _cloudflareSsoConnectorSensitive = <String>{};

/// Factory wrapper for `cloudflare_sso_connector`.
///
/// Accepted Permissions
///
/// - `SSO Connector Read`
final class DataCloudflareSsoConnector extends Data {
  static const String tfType = 'cloudflare_sso_connector';

  DataCloudflareSsoConnector({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> ssoConnectorId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'sso_connector_id': ssoConnectorId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSsoConnectorSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `email_domain` attribute.
  TfRef<String> get emailDomain =>
      TfRef.attribute<String>(this, 'email_domain');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `updated_on` attribute.
  TfRef<String> get updatedOn => TfRef.attribute<String>(this, 'updated_on');

  /// Reference to `use_fedramp_language` attribute.
  TfRef<bool> get useFedrampLanguage =>
      TfRef.attribute<bool>(this, 'use_fedramp_language');
}
