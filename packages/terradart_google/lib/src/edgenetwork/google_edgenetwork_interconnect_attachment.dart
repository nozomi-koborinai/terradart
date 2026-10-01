// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../edgenetwork/google_edgenetwork_network.dart'
    show GoogleEdgenetworkNetwork;

/// Sensitive field paths for `google_edgenetwork_interconnect_attachment`.
const Set<String> _googleEdgenetworkInterconnectAttachmentSensitive =
    <String>{};

/// Factory wrapper for `google_edgenetwork_interconnect_attachment`.
///
/// A Distributed Cloud Edge interconnect attachment, which connects routers to
/// the northbound network.
///
/// Distributed Cloud Edge **interconnect attachment** — VLAN attachment of
/// an interconnect to a [GoogleEdgenetworkNetwork].
///
/// **Cost / apply:** Same GDCE hardware commitment surface
/// (`8A2D-5CB1-345B`, e.g. Connected Server Gen1 SKU `007E-2D86-E472`
/// **$3600/mo**), plus interconnect prerequisites. Requires physical edge
/// hardware absent on `terradart-validate` — ships without a quickstart
/// (`tool/example_debt.yaml`). **Never** wire into apply-smoke.
///
/// Enable `edgenetwork.googleapis.com` via [GoogleProjectService] before
/// apply. [interconnect] and [network] are parent resource names.
final class GoogleEdgenetworkInterconnectAttachment extends Resource {
  static const String tfType = 'google_edgenetwork_interconnect_attachment';

  GoogleEdgenetworkInterconnectAttachment({
    required super.localName,
    required TfArg<String> interconnectAttachmentId,
    required TfArg<String> interconnect,
    required RefTo<GoogleEdgenetworkNetwork> network,
    required TfArg<num> vlanId,
    required TfArg<String> location,
    required TfArg<String> zone,
    TfArg<String>? description,
    TfArg<num>? mtu,
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
           'interconnect_attachment_id': interconnectAttachmentId,
           'interconnect': interconnect,
           'network': network.encodeAs('name'),
           'vlan_id': vlanId,
           'location': location,
           'zone': zone,
           'description': ?description,
           'mtu': ?mtu,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleEdgenetworkInterconnectAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleEdgenetworkInterconnectAttachment>`.
  RefTo<GoogleEdgenetworkInterconnectAttachment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `interconnect` attribute.
  TfRef<String> get interconnect =>
      TfRef.attribute<String>(this, 'interconnect');

  /// Reference to `interconnect_attachment_id` attribute.
  TfRef<String> get interconnectAttachmentId =>
      TfRef.attribute<String>(this, 'interconnect_attachment_id');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `mtu` attribute.
  TfRef<num> get mtu => TfRef.attribute<num>(this, 'mtu');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `vlan_id` attribute.
  TfRef<num> get vlanId => TfRef.attribute<num>(this, 'vlan_id');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
