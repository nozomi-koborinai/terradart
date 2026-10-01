// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_url_lists`.
const Set<String> _googleNetworkSecurityUrlListsSensitive = <String>{};

/// Factory wrapper for `google_network_security_url_lists`.
///
/// UrlList proto helps users to set reusable, independently manageable lists of
/// hosts, host patterns, URLs, URL patterns.
final class GoogleNetworkSecurityUrlLists extends Resource {
  static const String tfType = 'google_network_security_url_lists';

  GoogleNetworkSecurityUrlLists(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<List<String>> values,
    TfArg<String>? description,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'values': values,
           'description': ?description,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetworkSecurityUrlListsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkSecurityUrlLists>`.
  RefTo<GoogleNetworkSecurityUrlLists> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `values` attribute.
  TfRef<List<String>> get values =>
      TfRef.attribute<List<String>>(this, 'values');
}
