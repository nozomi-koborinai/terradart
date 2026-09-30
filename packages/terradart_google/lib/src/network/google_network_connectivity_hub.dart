// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_connectivity_hub`.
const Set<String> _googleNetworkConnectivityHubSensitive = <String>{};

/// Factory wrapper for `google_network_connectivity_hub`.
///
/// The NetworkConnectivity Hub resource
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': ?name,
           'description': ?description,
           'policy_mode': ?policyMode,
           'preset_topology': ?presetTopology,
           'export_psc': ?exportPsc,
           'labels': ?labels,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetworkConnectivityHubSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkConnectivityHub>`.
  RefTo<GoogleNetworkConnectivityHub> get ref => RefTo.of(this);

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `export_psc` attribute.
  TfRef<bool> get exportPscRef => TfRef.attribute<bool>(this, 'export_psc');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `policy_mode` attribute.
  TfRef<String> get policyModeRef =>
      TfRef.attribute<String>(this, 'policy_mode');

  /// Reference to `preset_topology` attribute.
  TfRef<String> get presetTopologyRef =>
      TfRef.attribute<String>(this, 'preset_topology');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
