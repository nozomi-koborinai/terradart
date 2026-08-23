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
/// - `SSO Connector Read` - `SSO Connector Write`
final class CloudflareSsoConnector extends Resource {
  static const String tfType = 'cloudflare_sso_connector';

  CloudflareSsoConnector({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<bool>? beginVerification,
    required TfArg<String> emailDomain,
    TfArg<bool>? enabled,
    TfArg<bool>? useFedrampLanguage,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (beginVerification != null)
             'begin_verification': beginVerification,
           'email_domain': emailDomain,
           if (enabled != null) 'enabled': enabled,
           if (useFedrampLanguage != null)
             'use_fedramp_language': useFedrampLanguage,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSsoConnectorSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `updated_on` attribute.
  TfRef<String> get updatedOn => TfRef.attribute<String>(this, 'updated_on');
}
