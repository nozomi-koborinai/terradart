// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_ull_mirroring_collector`.
const Set<String> _googleNetworkSecurityUllMirroringCollectorSensitive =
    <String>{};

/// Terraform `deletion_policy` for ULL mirroring collectors.
enum NetworkSecurityUllMirroringCollectorDeletionPolicy
    implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const NetworkSecurityUllMirroringCollectorDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_network_security_ull_mirroring_collector`.
///
/// A Mirroring Collector is a logical representation of an appliance that
/// collects mirrored traffic.
///
/// ULL mirroring collector appliance bound to a [GoogleNetworkSecurityUllMirroringEngine].
///
/// Set [engine] to `TfArg.ref(engine.nameRef)` and [forwardingRule] to a regional
/// internal forwarding rule self-link receiving mirrored traffic.
final class GoogleNetworkSecurityUllMirroringCollector extends Resource {
  static const String tfType =
      'google_network_security_ull_mirroring_collector';

  GoogleNetworkSecurityUllMirroringCollector({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> ullMirroringCollectorId,
    required TfArg<String> engine,
    required TfArg<String> forwardingRule,
    TfArg<Map<String, String>>? labels,
    TfArg<NetworkSecurityUllMirroringCollectorDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'ull_mirroring_collector_id': ullMirroringCollectorId,
           'engine': engine,
           'forwarding_rule': forwardingRule,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityUllMirroringCollectorSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
