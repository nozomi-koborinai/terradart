// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_netapp_host_group`.
const Set<String> _googleNetappHostGroupSensitive = <String>{};

/// Netapp Host Group Os enum for `os_type`.
enum NetappHostGroupOsType implements TerraformEnum {
  linux('LINUX'),
  windows('WINDOWS'),
  esxi('ESXI');

  const NetappHostGroupOsType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Netapp Host Group enum for `type`.
enum NetappHostGroupType implements TerraformEnum {
  iscsiInitiator('ISCSI_INITIATOR');

  const NetappHostGroupType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_netapp_host_group`.
///
/// Hostgroups define the hosts (aka initiators) that can access the specific
/// Google Cloud Netapp Volumes. Hostgroup is a regional resource and
/// independent of the volumes or any other resource
///
/// NetApp Volumes **host group** (blocklist / allowlist of host addresses).
///
/// **Cost:** gcp-cost: no Cloud Billing Catalog SKU under `FC86-5113-7C81`
/// (list_skus keyword host → 0). billing-behavior: host membership metadata
/// only — deferred with the never_apply NetApp pool Wave (no apply-smoke
/// quickstart).
final class GoogleNetappHostGroup extends Resource {
  static const String tfType = 'google_netapp_host_group';

  GoogleNetappHostGroup({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> type,
    required TfArg<String> osType,
    required TfArg<List<String>> hosts,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
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
           'os_type': osType,
           'hosts': hosts,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetappHostGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
