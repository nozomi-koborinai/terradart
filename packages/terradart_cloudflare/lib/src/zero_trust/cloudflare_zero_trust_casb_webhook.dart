// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_casb_webhook`.
const Set<String> _cloudflareZeroTrustCasbWebhookSensitive = <String>{
  'headers.value',
  'signing_secret',
};

/// Typed helper for the `headers` block of
/// `cloudflare_zero_trust_casb_webhook` (derived from provider schema).
@immutable
final class ZeroTrustCasbWebhookHeaders {
  const ZeroTrustCasbWebhookHeaders({required this.key, this.value});

  final TfArg<String> key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_casb_webhook`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class CloudflareZeroTrustCasbWebhook extends Resource {
  static const String tfType = 'cloudflare_zero_trust_casb_webhook';

  CloudflareZeroTrustCasbWebhook({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> authenticationType,
    required TfArg<String> destinationUrl,
    required TfArg<String> label,
    TfArg<String>? signingSecret,
    TfArg<String>? status,
    List<ZeroTrustCasbWebhookHeaders>? headers,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'authentication_type': authenticationType,
           'destination_url': destinationUrl,
           'label': label,
           if (signingSecret != null) 'signing_secret': signingSecret,
           if (status != null) 'status': status,
           if (headers != null)
             'headers': TfArg.literal([for (final e in headers) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustCasbWebhookSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');
}
