// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_agent_registry_agent`.
const Set<String> _googleAgentRegistryAgentSensitive = <String>{};

/// Factory wrapper for `google_agent_registry_agent`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleAgentRegistryAgent extends Data {
  static const String tfType = 'google_agent_registry_agent';

  DataGoogleAgentRegistryAgent({
    required super.localName,
    TfArg<String>? agentId,
    TfArg<String>? filter,
    required TfArg<String> location,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (agentId != null) 'agent_id': agentId,
           if (filter != null) 'filter': filter,
           'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleAgentRegistryAgentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `attributes` attribute.
  TfRef<Map<String, String>> get attributes =>
      TfRef.attribute<Map<String, String>>(this, 'attributes');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `framework` attribute.
  TfRef<String> get framework => TfRef.attribute<String>(this, 'framework');

  /// Reference to `protocols` attribute.
  TfRef<List<Map<String, Object?>>> get protocols =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'protocols');

  /// Reference to `skills` attribute.
  TfRef<List<Map<String, Object?>>> get skills =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'skills');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `urn` attribute.
  TfRef<String> get urn => TfRef.attribute<String>(this, 'urn');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
