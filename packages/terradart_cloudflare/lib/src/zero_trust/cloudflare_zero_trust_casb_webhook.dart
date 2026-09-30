// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_casb_webhook`.
const Set<String> _cloudflareZeroTrustCasbWebhookSensitive = <String>{
  'headers.value',
  'signing_secret',
};

/// Zero Trust Casb Webhook Authentication enum for `authentication_type`.
enum ZeroTrustCasbWebhookAuthenticationType implements TerraformEnum {
  basicAuth('Basic Auth'),
  none('None'),
  bearerAuth('Bearer Auth'),
  staticHeaders('Static Headers'),
  hmacSigning('HMAC-Signing');

  const ZeroTrustCasbWebhookAuthenticationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Zero Trust Casb Webhook enum for `status`.
enum ZeroTrustCasbWebhookStatus implements TerraformEnum {
  enabled('enabled'),
  disabled('disabled');

  const ZeroTrustCasbWebhookStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `headers` block of
/// `cloudflare_zero_trust_casb_webhook` (derived from provider schema).
@immutable
final class ZeroTrustCasbWebhookHeaders {
  const ZeroTrustCasbWebhookHeaders({required this.key, this.value});

  final TfArg<String> key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_casb_webhook`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
///
/// CASB webhook: where a `CloudflareZeroTrustCasbPolicy` action sends
/// its data. `signingSecret` is used only with the `HMAC-Signing`
/// authentication type; it and the header values are sensitive.
final class CloudflareZeroTrustCasbWebhook extends Resource {
  static const String tfType = 'cloudflare_zero_trust_casb_webhook';

  CloudflareZeroTrustCasbWebhook({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> label,
    required TfArg<String> destinationUrl,
    required TfArg<ZeroTrustCasbWebhookAuthenticationType> authenticationType,
    TfArg<String>? signingSecret,
    List<ZeroTrustCasbWebhookHeaders>? headers,
    TfArg<ZeroTrustCasbWebhookStatus>? status,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'label': label,
           'destination_url': destinationUrl,
           'authentication_type': authenticationType,
           'signing_secret': ?signingSecret,
           if (headers != null)
             'headers': TfArg.literal([for (final e in headers) e.encode()]),
           'status': ?status,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustCasbWebhookSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustCasbWebhook>`.
  RefTo<CloudflareZeroTrustCasbWebhook> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `authentication_type` attribute.
  TfRef<String> get authenticationTypeRef =>
      TfRef.attribute<String>(this, 'authentication_type');

  /// Reference to `destination_url` attribute.
  TfRef<String> get destinationUrlRef =>
      TfRef.attribute<String>(this, 'destination_url');

  /// Reference to `label` attribute.
  TfRef<String> get labelRef => TfRef.attribute<String>(this, 'label');

  /// Reference to `signing_secret` attribute.
  TfRef<String> get signingSecretRef =>
      TfRef.attribute<String>(this, 'signing_secret');

  /// Reference to `status` attribute.
  TfRef<String> get statusRef => TfRef.attribute<String>(this, 'status');
}
