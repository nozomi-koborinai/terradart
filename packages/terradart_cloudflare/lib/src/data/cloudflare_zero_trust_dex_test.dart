// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_dex_test`.
const Set<String> _cloudflareZeroTrustDexTestSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_dex_test` (derived from provider schema).
@immutable
final class DataZeroTrustDexTestFilter {
  const DataZeroTrustDexTestFilter({this.kind, this.testName});

  final TfArg<String>? kind;

  final TfArg<String>? testName;

  Map<String, Object?> encode() => {
    if (kind != null) 'kind': kind!.toTfJson(),
    if (testName != null) 'test_name': testName!.toTfJson(),
  };
}

/// Typed helper for the `target_policies` block of
/// `cloudflare_zero_trust_dex_test` (derived from provider schema).
@immutable
final class DataZeroTrustDexTestTargetPolicies {
  const DataZeroTrustDexTestTargetPolicies();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `cloudflare_zero_trust_dex_test`.
///
/// Accepted Permissions
///
/// - `Cloudflare DEX Read` - `Cloudflare DEX Write` - `Zero Trust Read` - `Zero
/// Trust Report`
final class DataCloudflareZeroTrustDexTest extends Data {
  static const String tfType = 'cloudflare_zero_trust_dex_test';

  DataCloudflareZeroTrustDexTest({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? dexTestId,
    DataZeroTrustDexTestFilter? filter,
    List<DataZeroTrustDexTestTargetPolicies>? targetPolicies,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (dexTestId != null) 'dex_test_id': dexTestId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
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

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `interval` attribute.
  TfRef<String> get interval => TfRef.attribute<String>(this, 'interval');

  /// Reference to `targeted` attribute.
  TfRef<bool> get targeted => TfRef.attribute<bool>(this, 'targeted');

  /// Reference to `test_id` attribute.
  TfRef<String> get testId => TfRef.attribute<String>(this, 'test_id');

  /// Reference to `updated` attribute.
  TfRef<String> get updated => TfRef.attribute<String>(this, 'updated');
}
