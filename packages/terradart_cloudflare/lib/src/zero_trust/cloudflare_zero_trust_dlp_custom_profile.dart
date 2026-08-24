// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_dlp_custom_profile`.
const Set<String> _cloudflareZeroTrustDlpCustomProfileSensitive = <String>{};

/// Typed helper for the `context_awareness` block of
/// `cloudflare_zero_trust_dlp_custom_profile` (derived from provider schema).
@immutable
final class ZeroTrustDlpCustomProfileContextAwareness {
  const ZeroTrustDlpCustomProfileContextAwareness({this.enabled, this.skip});

  final TfArg<bool>? enabled;

  final ZeroTrustDlpCustomProfileContextAwarenessSkip? skip;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (skip != null) 'skip': skip!.encode(),
  };
}

/// Typed helper for the `context_awareness.skip` block of
/// `cloudflare_zero_trust_dlp_custom_profile` (derived from provider schema).
@immutable
final class ZeroTrustDlpCustomProfileContextAwarenessSkip {
  const ZeroTrustDlpCustomProfileContextAwarenessSkip({this.files});

  final TfArg<bool>? files;

  Map<String, Object?> encode() => {
    if (files != null) 'files': files!.toTfJson(),
  };
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

  final ZeroTrustDlpCustomProfileEntriesPattern pattern;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'enabled': enabled.toTfJson(),
    if (entryId != null) 'entry_id': entryId!.toTfJson(),
    'name': name.toTfJson(),
    'pattern': pattern.encode(),
  };
}

/// Typed helper for the `entries.pattern` block of
/// `cloudflare_zero_trust_dlp_custom_profile` (derived from provider schema).
@immutable
final class ZeroTrustDlpCustomProfileEntriesPattern {
  const ZeroTrustDlpCustomProfileEntriesPattern({
    required this.regex,
    this.validation,
  });

  final TfArg<String> regex;

  final TfArg<String>? validation;

  Map<String, Object?> encode() => {
    'regex': regex.toTfJson(),
    if (validation != null) 'validation': validation!.toTfJson(),
  };
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

  final TfArg<String> entryType;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'entry_id': entryId.toTfJson(),
    'entry_type': entryType.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_dlp_custom_profile`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class CloudflareZeroTrustDlpCustomProfile extends Resource {
  static const String tfType = 'cloudflare_zero_trust_dlp_custom_profile';

  CloudflareZeroTrustDlpCustomProfile({
    required super.localName,
    required TfArg<String> accountId,
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (aiContextEnabled != null) 'ai_context_enabled': aiContextEnabled,
           if (allowedMatchCount != null)
             'allowed_match_count': allowedMatchCount,
           if (confidenceThreshold != null)
             'confidence_threshold': confidenceThreshold,
           if (dataClasses != null) 'data_classes': dataClasses,
           if (dataTags != null) 'data_tags': dataTags,
           if (description != null) 'description': description,
           'name': name,
           if (ocrEnabled != null) 'ocr_enabled': ocrEnabled,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `open_access` attribute.
  TfRef<bool> get openAccess => TfRef.attribute<bool>(this, 'open_access');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
