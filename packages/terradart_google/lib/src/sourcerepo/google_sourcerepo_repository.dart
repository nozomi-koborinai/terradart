// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<SourcerepoRepositoryPubsubConfigsMessageFormat> messageFormat;

  final TfArg<String>? serviceAccountEmail;

  final TfArg<String> topic;

  Map<String, Object?> encode() => {
    'message_format': messageFormat.toTfJson(),
    if (serviceAccountEmail != null)
      'service_account_email': serviceAccountEmail!.toTfJson(),
    'topic': topic.toTfJson(),
  };
}

/// `message_format` — derived from the provider schema description.
enum SourcerepoRepositoryPubsubConfigsMessageFormat implements TerraformEnum {
  protobuf('PROTOBUF'),
  json('JSON');

  const SourcerepoRepositoryPubsubConfigsMessageFormat(this.terraformValue);
  @override
  final String terraformValue;
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

  GoogleSourcerepoRepository({
    required super.localName,
    required TfArg<String> name,
    TfArg<bool>? createIgnoreAlreadyExists,
    List<SourcerepoRepositoryPubsubConfigs>? pubsubConfigs,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (createIgnoreAlreadyExists != null)
             'create_ignore_already_exists': createIgnoreAlreadyExists,
           if (pubsubConfigs != null)
             'pubsub_configs': TfArg.literal([
               for (final e in pubsubConfigs) e.encode(),
             ]),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSourcerepoRepositorySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `size` attribute.
  TfRef<num> get size => TfRef.attribute<num>(this, 'size');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');
}
