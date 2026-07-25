// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vmwareengine_external_access_rule`.
const Set<String> _googleVmwareengineExternalAccessRuleSensitive = <String>{};

/// Vmwareengine External Access Rule enum for `action`.
enum VmwareengineExternalAccessRuleAction implements TerraformEnum {
  allow('ALLOW'),
  deny('DENY');

  const VmwareengineExternalAccessRuleAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `destination_ip_ranges` block of
/// `google_vmwareengine_external_access_rule` (derived from provider schema).
@immutable
final class VmwareengineExternalAccessRuleDestinationIpRanges {
  const VmwareengineExternalAccessRuleDestinationIpRanges({
    this.externalAddress,
    this.ipAddressRange,
  });

  final TfArg<String>? externalAddress;

  final TfArg<String>? ipAddressRange;

  Map<String, Object?> encode() => {
    if (externalAddress != null)
      'external_address': externalAddress!.toTfJson(),
    if (ipAddressRange != null) 'ip_address_range': ipAddressRange!.toTfJson(),
  };
}

/// Typed helper for the `source_ip_ranges` block of
/// `google_vmwareengine_external_access_rule` (derived from provider schema).
@immutable
final class VmwareengineExternalAccessRuleSourceIpRanges {
  const VmwareengineExternalAccessRuleSourceIpRanges({
    this.ipAddress,
    this.ipAddressRange,
  });

  final TfArg<String>? ipAddress;

  final TfArg<String>? ipAddressRange;

  Map<String, Object?> encode() => {
    if (ipAddress != null) 'ip_address': ipAddress!.toTfJson(),
    if (ipAddressRange != null) 'ip_address_range': ipAddressRange!.toTfJson(),
  };
}

/// Factory wrapper for `google_vmwareengine_external_access_rule`.
///
/// External access firewall rules for filtering incoming traffic destined to
/// `ExternalAddress` resources.
///
/// Google Cloud VMware Engine **external access rule** — firewall-style
/// ALLOW/DENY rule on a network policy (`parent`).
///
/// **Cost / apply:** No dedicated rule SKU on VMware Engine
/// `C079-64FE-9109` after MCP lookup. Requires network policy / network /
/// never_apply private cloud (node hours, e.g. SKU `00C9-4870-5751`
/// **$15.11/h**). Debt-only — **never** wire into apply-smoke.
///
/// Enable `vmwareengine.googleapis.com` via [GoogleProjectService] before
/// apply.
final class GoogleVmwareengineExternalAccessRule extends Resource {
  static const String tfType = 'google_vmwareengine_external_access_rule';

  GoogleVmwareengineExternalAccessRule({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> parent,
    required TfArg<VmwareengineExternalAccessRuleAction> action,
    required TfArg<String> ipProtocol,
    required TfArg<num> priority,
    required TfArg<List<String>> sourcePorts,
    required TfArg<List<String>> destinationPorts,
    required List<VmwareengineExternalAccessRuleSourceIpRanges> sourceIpRanges,
    required List<VmwareengineExternalAccessRuleDestinationIpRanges>
    destinationIpRanges,
    TfArg<String>? description,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'parent': parent,
           'action': action,
           'ip_protocol': ipProtocol,
           'priority': priority,
           'source_ports': sourcePorts,
           'destination_ports': destinationPorts,
           'source_ip_ranges': TfArg.literal([
             for (final e in sourceIpRanges) e.encode(),
           ]),
           'destination_ip_ranges': TfArg.literal([
             for (final e in destinationIpRanges) e.encode(),
           ]),
           if (description != null) 'description': description,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVmwareengineExternalAccessRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

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
