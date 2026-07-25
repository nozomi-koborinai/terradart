// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vmwareengine_network`.
const Set<String> _googleVmwareengineNetworkSensitive = <String>{};

/// Vmwareengine Network enum for `state`.
enum VmwareengineNetworkState implements TerraformEnum {
  creating('CREATING'),
  active('ACTIVE'),
  updating('UPDATING'),
  deleting('DELETING');

  const VmwareengineNetworkState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Vmwareengine Network enum for `type`.
enum VmwareengineNetworkType implements TerraformEnum {
  legacy('LEGACY'),
  standard('STANDARD');

  const VmwareengineNetworkType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_vmwareengine_network`.
///
/// Provides connectivity for VMware Engine private clouds.
///
/// Google Cloud VMware Engine **network** — project/location network that
/// private clouds attach to (`LEGACY` or `STANDARD`).
///
/// **Cost / apply:** No dedicated network SKU on VMware Engine
/// `C079-64FE-9109` after MCP `list_skus` (keyword network/External/
/// Internet/Peering → 0). Node/host hours bill on attached private clouds
/// (e.g. Gen 2 Standard 112 VCPU Node us-west2 SKU `00C9-4870-5751`
/// **$15.11/h**). No meaningful applyable quickstart without that
/// never_apply private-cloud path — ships as debt-only
/// (`tool/example_debt.yaml`). **Never** wire into apply-smoke.
///
/// Enable `vmwareengine.googleapis.com` via [GoogleProjectService] before
/// apply. [type] is required (`LEGACY` or `STANDARD`).
final class GoogleVmwareengineNetwork extends Resource {
  static const String tfType = 'google_vmwareengine_network';

  GoogleVmwareengineNetwork({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<VmwareengineNetworkType> type,
    TfArg<String>? description,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'type': type,
           if (description != null) 'description': description,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVmwareengineNetworkSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `vpc_networks` attribute.
  TfRef<List<Map<String, Object?>>> get vpcNetworks =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'vpc_networks');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
