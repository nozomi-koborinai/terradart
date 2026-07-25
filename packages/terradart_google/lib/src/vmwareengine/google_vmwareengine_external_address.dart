// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vmwareengine_external_address`.
const Set<String> _googleVmwareengineExternalAddressSensitive = <String>{};

/// Factory wrapper for `google_vmwareengine_external_address`.
///
/// An allocated external IP address and its corresponding internal IP address
/// in a private cloud.
///
/// Google Cloud VMware Engine **external address** — public IP mapped to an
/// internal IP on a private cloud / network policy parent.
///
/// **Cost / apply:** No dedicated external-address SKU on VMware Engine
/// `C079-64FE-9109` after MCP `list_skus` (keyword External → 0). Requires
/// never_apply private-cloud family (node hours, e.g. SKU `00C9-4870-5751`
/// **$15.11/h**). Debt-only — **never** wire into apply-smoke.
///
/// Enable `vmwareengine.googleapis.com` via [GoogleProjectService] before
/// apply.
final class GoogleVmwareengineExternalAddress extends Resource {
  static const String tfType = 'google_vmwareengine_external_address';

  GoogleVmwareengineExternalAddress({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> parent,
    required TfArg<String> internalIp,
    TfArg<String>? description,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'parent': parent,
           'internal_ip': internalIp,
           if (description != null) 'description': description,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVmwareengineExternalAddressSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `external_ip` attribute.
  TfRef<String> get externalIp => TfRef.attribute<String>(this, 'external_ip');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
