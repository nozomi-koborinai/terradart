// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_netapp_host_group`.
const Set<String> _googleNetappHostGroupSensitive = <String>{};

/// Netapp Host Group Os enum for `os_type`.
extension type const NetappHostGroupOsType._(TfArg<String> _)
    implements TfArg<String> {
  NetappHostGroupOsType.variable(String name) : this._(TfArg.variable(name));
  NetappHostGroupOsType.expression(String template)
    : this._(TfArg.expression(template));
  const NetappHostGroupOsType.arg(TfArg<String> arg) : this._(arg);

  static const linux = NetappHostGroupOsType._(TfArgLiteral('LINUX'));
  static const windows = NetappHostGroupOsType._(TfArgLiteral('WINDOWS'));
  static const esxi = NetappHostGroupOsType._(TfArgLiteral('ESXI'));

  static const List<NetappHostGroupOsType> values = [linux, windows, esxi];
}

/// Netapp Host Group enum for `type`.
extension type const NetappHostGroupType._(TfArg<String> _)
    implements TfArg<String> {
  NetappHostGroupType.variable(String name) : this._(TfArg.variable(name));
  NetappHostGroupType.expression(String template)
    : this._(TfArg.expression(template));
  const NetappHostGroupType.arg(TfArg<String> arg) : this._(arg);

  static const iscsiInitiator = NetappHostGroupType._(
    TfArgLiteral('ISCSI_INITIATOR'),
  );

  static const List<NetappHostGroupType> values = [iscsiInitiator];
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

  GoogleNetappHostGroup(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> location,
    required NetappHostGroupType type,
    required NetappHostGroupOsType osType,
    required TfArg<List<String>> hosts,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
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
           'type': type,
           'os_type': osType,
           'hosts': hosts,
           'description': ?description,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetappHostGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetappHostGroup>`.
  RefTo<GoogleNetappHostGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `hosts` attribute.
  TfRef<List<String>> get hosts => TfRef.attribute<List<String>>(this, 'hosts');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `os_type` attribute.
  TfRef<String> get osType => TfRef.attribute<String>(this, 'os_type');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
