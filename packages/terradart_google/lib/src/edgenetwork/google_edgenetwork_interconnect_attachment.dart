// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> network,
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'interconnect_attachment_id': interconnectAttachmentId,
           'interconnect': interconnect,
           'network': network,
           'vlan_id': vlanId,
           'location': location,
           'zone': zone,
           if (description != null) 'description': description,
           if (mtu != null) 'mtu': mtu,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleEdgenetworkInterconnectAttachmentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `interconnect_attachment_id` / name segment.
  TfRef<String> get interconnectAttachmentIdRef =>
      TfRef.attribute<String>(this, 'interconnect_attachment_id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
