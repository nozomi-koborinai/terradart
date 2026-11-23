// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_dlp_proximity_validator`.
const Set<String> _cloudflareZeroTrustDlpProximityValidatorSensitive =
    <String>{};

/// Typed helper for the `words` block of
/// `cloudflare_zero_trust_dlp_proximity_validator` (derived from provider schema).
@immutable
final class ZeroTrustDlpProximityValidatorWords {
  const ZeroTrustDlpProximityValidatorWords({
    required this.weight,
    required this.word,
  });

  final ZeroTrustDlpProximityValidatorWeight weight;

  final TfArg<String> word;

  @internal
  Map<String, Object?> encode() => {
    'weight': weight.toTfJson(),
    'word': word.toTfJson(),
  };
}

/// `weight` — derived from the provider schema description.
extension type const ZeroTrustDlpProximityValidatorWeight._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustDlpProximityValidatorWeight.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustDlpProximityValidatorWeight.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustDlpProximityValidatorWeight.arg(TfArg<String> arg)
    : this._(arg);

  static const strong = ZeroTrustDlpProximityValidatorWeight._(
    TfArgLiteral('strong'),
  );
  static const moderate = ZeroTrustDlpProximityValidatorWeight._(
    TfArgLiteral('moderate'),
  );
  static const weak = ZeroTrustDlpProximityValidatorWeight._(
    TfArgLiteral('weak'),
  );

  static const List<ZeroTrustDlpProximityValidatorWeight> values = [
    strong,
    moderate,
    weak,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_dlp_proximity_validator`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class CloudflareZeroTrustDlpProximityValidator extends Resource {
  static const String tfType = 'cloudflare_zero_trust_dlp_proximity_validator';

  CloudflareZeroTrustDlpProximityValidator(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> name,
    required List<ZeroTrustDlpProximityValidatorWords> words,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'name': name,
           'words': TfArg.literal([for (final e in words) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDlpProximityValidatorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustDlpProximityValidator>`.
  RefTo<CloudflareZeroTrustDlpProximityValidator> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');
}
