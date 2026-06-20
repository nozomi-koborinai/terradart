// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_url_lists`.
const Set<String> _googleNetworkSecurityUrlListsSensitive = <String>{};

/// Factory wrapper for `google_network_security_url_lists`.
final class GoogleNetworkSecurityUrlLists extends Resource {
  static const String tfType = 'google_network_security_url_lists';

  GoogleNetworkSecurityUrlLists({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<List<String>> values,
    TfArg<String>? description,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'values': values,
           if (description != null) 'description': description,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetworkSecurityUrlListsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
