// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_dlp_custom_profile`.
const Set<String> _cloudflareZeroTrustDlpCustomProfileSensitive = <String>{};

/// Typed helper for the `context_awareness` block of
/// `cloudflare_zero_trust_dlp_custom_profile` (derived from provider schema).
@immutable
final class ZeroTrustDlpCustomProfileContextAwareness {
  const ZeroTrustDlpCustomProfileContextAwareness({this.enabled, this.skip});

  final TfArg<bool>? enabled;

  final ZeroTrustDlpCustomProfileSkip? skip;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'skip': ?skip?.encode(),
  };
}

/// Typed helper for the `context_awareness.skip` block of
/// `cloudflare_zero_trust_dlp_custom_profile` (derived from provider schema).
@immutable
final class ZeroTrustDlpCustomProfileSkip {
  const ZeroTrustDlpCustomProfileSkip({this.files});

  final TfArg<bool>? files;

  Map<String, Object?> encode() => {'files': ?files?.toTfJson()};
}

/// Typed helper for the `entries` block of
/// `cloudflare_zero_trust_dlp_custom_profile` (derived from provider schema).
@immutable
final class ZeroTrustDlpCustomProfileEntries {
  const ZeroTrustDlpCustomProfileEntries({
    this.description,
    required this.enabled,
    this.entryId,
    required this.name,
    required this.pattern,
  });

  final TfArg<String>? description;

  final TfArg<bool> enabled;

  final TfArg<String>? entryId;

  final TfArg<String> name;

  final ZeroTrustDlpCustomProfilePattern pattern;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'enabled': enabled.toTfJson(),
    'entry_id': ?entryId?.toTfJson(),
    'name': name.toTfJson(),
    'pattern': pattern.encode(),
  };
}

/// Typed helper for the `entries.pattern` block of
/// `cloudflare_zero_trust_dlp_custom_profile` (derived from provider schema).
@immutable
final class ZeroTrustDlpCustomProfilePattern {
  const ZeroTrustDlpCustomProfilePattern({
    required this.regex,
    this.validation,
  });

  final TfArg<String> regex;

  final ZeroTrustDlpCustomProfileValidation? validation;

  Map<String, Object?> encode() => {
    'regex': regex.toTfJson(),
    'validation': ?validation?.toTfJson(),
  };
}

/// `validation` — derived from the provider schema description.
extension type const ZeroTrustDlpCustomProfileValidation._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustDlpCustomProfileValidation.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustDlpCustomProfileValidation.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustDlpCustomProfileValidation.arg(TfArg<String> arg)
    : this._(arg);

  static const luhn = ZeroTrustDlpCustomProfileValidation._(
    TfArgLiteral('luhn'),
  );

  static const List<ZeroTrustDlpCustomProfileValidation> values = [luhn];
}

/// Typed helper for the `sensitivity_levels` block of
/// `cloudflare_zero_trust_dlp_custom_profile` (derived from provider schema).
@immutable
final class ZeroTrustDlpCustomProfileSensitivityLevels {
  const ZeroTrustDlpCustomProfileSensitivityLevels({
    required this.groupId,
    required this.levelId,
  });

  final TfArg<String> groupId;

  final TfArg<String> levelId;

  Map<String, Object?> encode() => {
    'group_id': groupId.toTfJson(),
    'level_id': levelId.toTfJson(),
  };
}

/// Typed helper for the `shared_entries` block of
/// `cloudflare_zero_trust_dlp_custom_profile` (derived from provider schema).
@immutable
final class ZeroTrustDlpCustomProfileSharedEntries {
  const ZeroTrustDlpCustomProfileSharedEntries({
    required this.enabled,
    required this.entryId,
    required this.entryType,
  });

  final TfArg<bool> enabled;

  final TfArg<String> entryId;

  final ZeroTrustDlpCustomProfileEntryType entryType;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'entry_id': entryId.toTfJson(),
    'entry_type': entryType.toTfJson(),
  };
}

/// `entry_type` — derived from the provider schema description.
extension type const ZeroTrustDlpCustomProfileEntryType._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustDlpCustomProfileEntryType.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustDlpCustomProfileEntryType.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustDlpCustomProfileEntryType.arg(TfArg<String> arg) : this._(arg);

  static const custom = ZeroTrustDlpCustomProfileEntryType._(
    TfArgLiteral('custom'),
  );
  static const predefined = ZeroTrustDlpCustomProfileEntryType._(
    TfArgLiteral('predefined'),
  );
  static const integration = ZeroTrustDlpCustomProfileEntryType._(
    TfArgLiteral('integration'),
  );
  static const exactData = ZeroTrustDlpCustomProfileEntryType._(
    TfArgLiteral('exact_data'),
  );
  static const documentFingerprint = ZeroTrustDlpCustomProfileEntryType._(
    TfArgLiteral('document_fingerprint'),
  );

  static const List<ZeroTrustDlpCustomProfileEntryType> values = [
    custom,
    predefined,
    integration,
    exactData,
    documentFingerprint,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_dlp_custom_profile`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class CloudflareZeroTrustDlpCustomProfile extends Resource {
  static const String tfType = 'cloudflare_zero_trust_dlp_custom_profile';

  CloudflareZeroTrustDlpCustomProfile(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<bool>? aiContextEnabled,
    TfArg<num>? allowedMatchCount,
    TfArg<String>? confidenceThreshold,
    TfArg<List<String>>? dataClasses,
    TfArg<List<String>>? dataTags,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<bool>? ocrEnabled,
    ZeroTrustDlpCustomProfileContextAwareness? contextAwareness,
    List<ZeroTrustDlpCustomProfileEntries>? entries,
    List<ZeroTrustDlpCustomProfileSensitivityLevels>? sensitivityLevels,
    List<ZeroTrustDlpCustomProfileSharedEntries>? sharedEntries,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'ai_context_enabled': ?aiContextEnabled,
           'allowed_match_count': ?allowedMatchCount,
           'confidence_threshold': ?confidenceThreshold,
           'data_classes': ?dataClasses,
           'data_tags': ?dataTags,
           'description': ?description,
           'name': name,
           'ocr_enabled': ?ocrEnabled,
           if (contextAwareness != null)
             'context_awareness': TfArg.literal(contextAwareness.encode()),
           if (entries != null)
             'entries': TfArg.literal([for (final e in entries) e.encode()]),
           if (sensitivityLevels != null)
             'sensitivity_levels': TfArg.literal([
               for (final e in sensitivityLevels) e.encode(),
             ]),
           if (sharedEntries != null)
             'shared_entries': TfArg.literal([
               for (final e in sharedEntries) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDlpCustomProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustDlpCustomProfile>`.
  RefTo<CloudflareZeroTrustDlpCustomProfile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `integration_id` attribute.
  TfRef<String> get integrationId =>
      TfRef.attribute<String>(this, 'integration_id');

  /// Reference to `open_access` attribute.
  TfRef<bool> get openAccess => TfRef.attribute<bool>(this, 'open_access');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `ai_context_enabled` attribute.
  TfRef<bool> get aiContextEnabled =>
      TfRef.attribute<bool>(this, 'ai_context_enabled');

  /// Reference to `allowed_match_count` attribute.
  TfRef<num> get allowedMatchCount =>
      TfRef.attribute<num>(this, 'allowed_match_count');

  /// Reference to `confidence_threshold` attribute.
  TfRef<String> get confidenceThreshold =>
      TfRef.attribute<String>(this, 'confidence_threshold');

  /// Reference to `data_classes` attribute.
  TfRef<List<String>> get dataClasses =>
      TfRef.attribute<List<String>>(this, 'data_classes');

  /// Reference to `data_tags` attribute.
  TfRef<List<String>> get dataTags =>
      TfRef.attribute<List<String>>(this, 'data_tags');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `ocr_enabled` attribute.
  TfRef<bool> get ocrEnabled => TfRef.attribute<bool>(this, 'ocr_enabled');
}
