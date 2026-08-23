// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_dex_test`.
const Set<String> _cloudflareZeroTrustDexTestSensitive = <String>{};

/// Typed helper for the `data` block of
/// `cloudflare_zero_trust_dex_test` (derived from provider schema).
@immutable
final class ZeroTrustDexTestData {
  const ZeroTrustDexTestData({this.host, this.kind, this.method});

  final TfArg<String>? host;

  final TfArg<String>? kind;

  final TfArg<String>? method;

  Map<String, Object?> encode() => {
    if (host != null) 'host': host!.toTfJson(),
    if (kind != null) 'kind': kind!.toTfJson(),
    if (method != null) 'method': method!.toTfJson(),
  };
}

/// Typed helper for the `target_policies` block of
/// `cloudflare_zero_trust_dex_test` (derived from provider schema).
@immutable
final class ZeroTrustDexTestTargetPolicies {
  const ZeroTrustDexTestTargetPolicies({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Factory wrapper for `cloudflare_zero_trust_dex_test`.
///
/// Accepted Permissions
///
/// - `Cloudflare DEX Read` - `Cloudflare DEX Write` - `Zero Trust Read` - `Zero
/// Trust Report`
final class CloudflareZeroTrustDexTest extends Resource {
  static const String tfType = 'cloudflare_zero_trust_dex_test';

  CloudflareZeroTrustDexTest({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? description,
    required TfArg<bool> enabled,
    required TfArg<String> interval,
    required TfArg<String> name,
    required ZeroTrustDexTestData data,
    List<ZeroTrustDexTestTargetPolicies>? targetPolicies,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (description != null) 'description': description,
           'enabled': enabled,
           'interval': interval,
           'name': name,
           'data': TfArg.literal(data.encode()),
           if (targetPolicies != null)
             'target_policies': TfArg.literal([
               for (final e in targetPolicies) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustDexTestSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `targeted` attribute.
  TfRef<bool> get targeted => TfRef.attribute<bool>(this, 'targeted');

  /// Reference to `test_id` attribute.
  TfRef<String> get testId => TfRef.attribute<String>(this, 'test_id');
}
