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

  final FirebaserulesRulesetLanguage? language;

  final List<FirebaserulesRulesetFiles> files;

  Map<String, Object?> encode() => {
    'language': ?language?.toTfJson(),
    'files': [for (final e in files) e.encode()],
  };
}

/// `language` — derived from the provider schema description.
extension type const FirebaserulesRulesetLanguage._(TfArg<String> _)
    implements TfArg<String> {
  FirebaserulesRulesetLanguage.variable(String name)
    : this._(TfArg.variable(name));
  FirebaserulesRulesetLanguage.expression(String template)
    : this._(TfArg.expression(template));
  const FirebaserulesRulesetLanguage.arg(TfArg<String> arg) : this._(arg);

  static const languageUnspecified = FirebaserulesRulesetLanguage._(
    TfArgLiteral('LANGUAGE_UNSPECIFIED'),
  );
  static const firebaseRules = FirebaserulesRulesetLanguage._(
    TfArgLiteral('FIREBASE_RULES'),
  );
  static const eventFlowTriggers = FirebaserulesRulesetLanguage._(
    TfArgLiteral('EVENT_FLOW_TRIGGERS'),
  );

  static const List<FirebaserulesRulesetLanguage> values = [
    languageUnspecified,
    firebaseRules,
    eventFlowTriggers,
  ];
}

/// Typed helper for the `source.files` block of
/// `google_firebaserules_ruleset` (derived from provider schema).
@immutable
final class FirebaserulesRulesetFiles {
  const FirebaserulesRulesetFiles({
    required this.content,
    this.fingerprint,
    required this.name,
  });

  final TfArg<String> content;

  final TfArg<String>? fingerprint;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'content': content.toTfJson(),
    'fingerprint': ?fingerprint?.toTfJson(),
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
///   'deny_all',
///   source: FirebaserulesRulesetSource(
///     files: [
///       .new(
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

  GoogleFirebaserulesRuleset(
    super.localName, {
    required FirebaserulesRulesetSource source,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'source': TfArg.literal(source.encode()),
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaserulesRulesetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFirebaserulesRuleset>`.
  RefTo<GoogleFirebaserulesRuleset> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `metadata` attribute.
  TfRef<List<Map<String, Object?>>> get metadata =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'metadata');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
