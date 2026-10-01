// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_ull_mirroring_engine`.
const Set<String> _googleNetworkSecurityUllMirroringEngineSensitive =
    <String>{};

/// Terraform `deletion_policy` for ULL mirroring engines.
enum NetworkSecurityUllMirroringEngineDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const NetworkSecurityUllMirroringEngineDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_network_security_ull_mirroring_engine`.
///
/// A Mirroring Engine is a logical representation of the underlying
/// infrastructure that is used to manage and monitor the ULL Mirroring setup.
///
/// ULL mirroring engine — logical infrastructure for Ultra Low Latency mirroring.
///
/// Enable `networksecurity.googleapis.com` before apply. Pair with
/// [GoogleNetworkSecurityUllMirroringCollector] in the same [location] zone
/// (e.g. `us-south1-d`).
final class GoogleNetworkSecurityUllMirroringEngine extends Resource {
  static const String tfType = 'google_network_security_ull_mirroring_engine';

  GoogleNetworkSecurityUllMirroringEngine(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> ullMirroringEngineId,
    TfArg<Map<String, String>>? labels,
    TfArg<NetworkSecurityUllMirroringEngineDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'ull_mirroring_engine_id': ullMirroringEngineId,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityUllMirroringEngineSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkSecurityUllMirroringEngine>`.
  RefTo<GoogleNetworkSecurityUllMirroringEngine> get ref => RefTo.of(this);

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

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `ull_mirroring_engine_id` attribute.
  TfRef<String> get ullMirroringEngineId =>
      TfRef.attribute<String>(this, 'ull_mirroring_engine_id');
}
