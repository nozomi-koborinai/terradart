// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_sourcerepo_repository`.
const Set<String> _googleSourcerepoRepositorySensitive = <String>{};

/// Factory wrapper for `google_sourcerepo_repository`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleSourcerepoRepository extends Data {
  static const String tfType = 'google_sourcerepo_repository';

  DataGoogleSourcerepoRepository({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, if (project != null) 'project': project},
       );

  @override
  Set<String> get sensitiveFields => _googleSourcerepoRepositorySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_ignore_already_exists` attribute.
  TfRef<bool> get createIgnoreAlreadyExists =>
      TfRef.attribute<bool>(this, 'create_ignore_already_exists');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `pubsub_configs` attribute.
  TfRef<List<Map<String, Object?>>> get pubsubConfigs =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'pubsub_configs');

  /// Reference to `size` attribute.
  TfRef<num> get size => TfRef.attribute<num>(this, 'size');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');
}
