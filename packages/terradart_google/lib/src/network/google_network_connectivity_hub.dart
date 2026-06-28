// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_connectivity_hub`.
const Set<String> _googleNetworkConnectivityHubSensitive = <String>{};

/// Factory wrapper for `google_network_connectivity_hub`.
final class GoogleNetworkConnectivityHub extends Resource {
  static const String tfType = 'google_network_connectivity_hub';

  GoogleNetworkConnectivityHub({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? description,
    TfArg<String>? policyMode,
    TfArg<String>? presetTopology,
    TfArg<bool>? exportPsc,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (description != null) 'description': description,
           if (policyMode != null) 'policy_mode': policyMode,
           if (presetTopology != null) 'preset_topology': presetTopology,
           if (exportPsc != null) 'export_psc': exportPsc,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetworkConnectivityHubSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `routing_vpcs` attribute.
  TfRef<List<Map<String, Object?>>> get routingVpcs =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'routing_vpcs');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `unique_id` attribute.
  TfRef<String> get uniqueId => TfRef.attribute<String>(this, 'unique_id');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
