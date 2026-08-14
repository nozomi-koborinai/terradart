// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebaserules_ruleset`.
const Set<String> _googleFirebaserulesRulesetSensitive = <String>{};

/// Typed helper for the `source` block of
/// `google_firebaserules_ruleset` (derived from provider schema).
@immutable
final class FirebaserulesRulesetSource {
  const FirebaserulesRulesetSource({this.language, required this.files});

  final TfArg<FirebaserulesRulesetSourceLanguage>? language;

  final List<FirebaserulesRulesetSourceFiles> files;

  Map<String, Object?> encode() => {
    if (language != null) 'language': language!.toTfJson(),
    'files': [for (final e in files) e.encode()],
  };
}

/// `language` — derived from the provider schema description.
enum FirebaserulesRulesetSourceLanguage implements TerraformEnum {
  languageUnspecified('LANGUAGE_UNSPECIFIED'),
  firebaseRules('FIREBASE_RULES'),
  eventFlowTriggers('EVENT_FLOW_TRIGGERS');

  const FirebaserulesRulesetSourceLanguage(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `source.files` block of
/// `google_firebaserules_ruleset` (derived from provider schema).
@immutable
final class FirebaserulesRulesetSourceFiles {
  const FirebaserulesRulesetSourceFiles({
    required this.content,
    this.fingerprint,
    required this.name,
  });

  final TfArg<String> content;

  final TfArg<String>? fingerprint;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'content': content.toTfJson(),
    if (fingerprint != null) 'fingerprint': fingerprint!.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `google_firebaserules_ruleset`.
///
/// Firebase Security Rules **ruleset** — an immutable source bundle
/// (usually `FIREBASE_RULES` language). Creating a ruleset does not
/// serve it; a `google_firebaserules_release` (uncurated) points a
/// product at a ruleset name.
///
/// [source] needs at least one file (`name` + `content`). This factory
/// does not create a release, so existing Firestore / Storage rules
/// stay unchanged.
///
/// Enable `firebaserules.googleapis.com` via [GoogleProjectService]
/// before apply. Set [deletionPolicy] to `DELETE` so destroy removes
/// the unused ruleset.
///
/// Example:
/// ```dart
/// GoogleFirebaserulesRuleset(
///   localName: 'deny_all',
///   source: FirebaserulesRulesetSource(
///     files: [
///       FirebaserulesRulesetSourceFiles(
///         name: TfArg.literal('firestore.rules'),
///         content: TfArg.literal(
///           'service cloud.firestore {'
///           'match /databases/{database}/documents {'
///           'match /{document=**} { allow read, write: if false; } } }',
///         ),
///       ),
///     ],
///   ),
/// );
/// ```
final class GoogleFirebaserulesRuleset extends Resource {
  static const String tfType = 'google_firebaserules_ruleset';

  GoogleFirebaserulesRuleset({
    required super.localName,
    required FirebaserulesRulesetSource source,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'source': TfArg.literal(source.encode()),
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaserulesRulesetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `metadata` attribute.
  TfRef<List<Map<String, Object?>>> get metadata =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'metadata');
}
