// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;

/// Sensitive field paths for `google_sourcerepo_repository`.
const Set<String> _googleSourcerepoRepositorySensitive = <String>{};

/// Typed helper for the `pubsub_configs` block of
/// `google_sourcerepo_repository` (derived from provider schema).
@immutable
final class SourcerepoRepositoryPubsubConfigs {
  const SourcerepoRepositoryPubsubConfigs({
    required this.messageFormat,
    this.serviceAccountEmail,
    required this.topic,
  });

  final SourcerepoRepositoryMessageFormat messageFormat;

  final RefTo<GoogleServiceAccount>? serviceAccountEmail;

  final RefTo<GooglePubsubTopic> topic;

  Map<String, Object?> encode() => {
    'message_format': messageFormat.toTfJson(),
    'service_account_email': ?serviceAccountEmail?.encodeAs('email').toTfJson(),
    'topic': topic.encodeAs('id').toTfJson(),
  };
}

/// `message_format` — derived from the provider schema description.
extension type const SourcerepoRepositoryMessageFormat._(TfArg<String> _)
    implements TfArg<String> {
  SourcerepoRepositoryMessageFormat.variable(String name)
    : this._(TfArg.variable(name));
  SourcerepoRepositoryMessageFormat.expression(String template)
    : this._(TfArg.expression(template));
  const SourcerepoRepositoryMessageFormat.arg(TfArg<String> arg) : this._(arg);

  static const protobuf = SourcerepoRepositoryMessageFormat._(
    TfArgLiteral('PROTOBUF'),
  );
  static const json = SourcerepoRepositoryMessageFormat._(TfArgLiteral('JSON'));

  static const List<SourcerepoRepositoryMessageFormat> values = [
    protobuf,
    json,
  ];
}

/// Factory wrapper for `google_sourcerepo_repository`.
///
/// A repository (or repo) is a Git repository storing versioned source content.
///
/// Cloud Source Repositories Git repository.
///
/// Enable `sourcerepo.googleapis.com` via [GoogleProjectService] before
/// apply. Optional [pubsubConfigs] publish push notifications on repo
/// changes (each entry needs a Pub/Sub topic + [messageFormat]).
final class GoogleSourcerepoRepository extends Resource {
  static const String tfType = 'google_sourcerepo_repository';

  GoogleSourcerepoRepository(
    super.localName, {
    required TfArg<String> name,
    TfArg<bool>? createIgnoreAlreadyExists,
    List<SourcerepoRepositoryPubsubConfigs>? pubsubConfigs,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'create_ignore_already_exists': ?createIgnoreAlreadyExists,
           if (pubsubConfigs != null)
             'pubsub_configs': TfArg.literal([
               for (final e in pubsubConfigs) e.encode(),
             ]),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSourcerepoRepositorySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSourcerepoRepository>`.
  RefTo<GoogleSourcerepoRepository> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `size` attribute.
  TfRef<num> get size => TfRef.attribute<num>(this, 'size');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `create_ignore_already_exists` attribute.
  TfRef<bool> get createIgnoreAlreadyExists =>
      TfRef.attribute<bool>(this, 'create_ignore_already_exists');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
