// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_dlp_custom_entry`.
const Set<String> _cloudflareZeroTrustDlpCustomEntrySensitive = <String>{};

/// Typed helper for the `pattern` block of
/// `cloudflare_zero_trust_dlp_custom_entry` (derived from provider schema).
@immutable
final class ZeroTrustDlpCustomEntryPattern {
  const ZeroTrustDlpCustomEntryPattern({required this.regex, this.validation});

  final TfArg<String> regex;

  final TfArg<ZeroTrustDlpCustomEntryValidation>? validation;

  Map<String, Object?> encode() => {
    'regex': regex.toTfJson(),
    'validation': ?validation?.toTfJson(),
  };
}

/// `validation` — derived from the provider schema description.
enum ZeroTrustDlpCustomEntryValidation implements TerraformEnum {
  luhn('luhn');

  const ZeroTrustDlpCustomEntryValidation(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_zero_trust_dlp_custom_entry`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class CloudflareZeroTrustDlpCustomEntry extends Resource {
  static const String tfType = 'cloudflare_zero_trust_dlp_custom_entry';

  CloudflareZeroTrustDlpCustomEntry({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? description,
    required TfArg<bool> enabled,
    required TfArg<String> name,
    TfArg<String>? profileId,
    required ZeroTrustDlpCustomEntryPattern pattern,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'description': ?description,
           'enabled': enabled,
           'name': name,
           'profile_id': ?profileId,
           'pattern': TfArg.literal(pattern.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDlpCustomEntrySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustDlpCustomEntry>`.
  RefTo<CloudflareZeroTrustDlpCustomEntry> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `case_sensitive` attribute.
  TfRef<bool> get caseSensitive =>
      TfRef.attribute<bool>(this, 'case_sensitive');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `deprecated` attribute.
  TfRef<bool> get deprecated => TfRef.attribute<bool>(this, 'deprecated');

  /// Reference to `secret` attribute.
  TfRef<bool> get secret => TfRef.attribute<bool>(this, 'secret');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `upload_status` attribute.
  TfRef<String> get uploadStatus =>
      TfRef.attribute<String>(this, 'upload_status');

  /// Reference to `word_list` attribute.
  TfRef<String> get wordList => TfRef.attribute<String>(this, 'word_list');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabledRef => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `profile_id` attribute.
  TfRef<String> get profileIdRef => TfRef.attribute<String>(this, 'profile_id');
}
