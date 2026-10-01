// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../network/google_network_security_ull_mirroring_engine.dart'
    show GoogleNetworkSecurityUllMirroringEngine;

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
    required RefTo<GoogleNetworkSecurityUllMirroringEngine> engine,
    required TfArg<String> forwardingRule,
    TfArg<Map<String, String>>? labels,
    TfArg<NetworkSecurityUllMirroringCollectorDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'ull_mirroring_collector_id': ullMirroringCollectorId,
           'engine': engine.encodeAs('name'),
           'forwarding_rule': forwardingRule,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityUllMirroringCollectorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkSecurityUllMirroringCollector>`.
  RefTo<GoogleNetworkSecurityUllMirroringCollector> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `engine` attribute.
  TfRef<String> get engine => TfRef.attribute<String>(this, 'engine');

  /// Reference to `forwarding_rule` attribute.
  TfRef<String> get forwardingRule =>
      TfRef.attribute<String>(this, 'forwarding_rule');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `ull_mirroring_collector_id` attribute.
  TfRef<String> get ullMirroringCollectorId =>
      TfRef.attribute<String>(this, 'ull_mirroring_collector_id');
}
