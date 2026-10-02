// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vmwareengine_external_access_rule`.
const Set<String> _googleVmwareengineExternalAccessRuleSensitive = <String>{};

/// Vmwareengine External Access Rule enum for `action`.
extension type const VmwareengineExternalAccessRuleAction._(TfArg<String> _)
    implements TfArg<String> {
  VmwareengineExternalAccessRuleAction.variable(String name)
    : this._(TfArg.variable(name));
  VmwareengineExternalAccessRuleAction.expression(String template)
    : this._(TfArg.expression(template));
  const VmwareengineExternalAccessRuleAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = VmwareengineExternalAccessRuleAction._(
    TfArgLiteral('ALLOW'),
  );
  static const deny = VmwareengineExternalAccessRuleAction._(
    TfArgLiteral('DENY'),
  );

  static const List<VmwareengineExternalAccessRuleAction> values = [
    allow,
    deny,
  ];
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

  @internal
  Map<String, Object?> encode() => {
    'external_address': ?externalAddress?.toTfJson(),
    'ip_address_range': ?ipAddressRange?.toTfJson(),
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

  @internal
  Map<String, Object?> encode() => {
    'ip_address': ?ipAddress?.toTfJson(),
    'ip_address_range': ?ipAddressRange?.toTfJson(),
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

  GoogleVmwareengineExternalAccessRule(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> parent,
    required VmwareengineExternalAccessRuleAction action,
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
    super.provider,
    super.timeouts,
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
           'description': ?description,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVmwareengineExternalAccessRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVmwareengineExternalAccessRule>`.
  RefTo<GoogleVmwareengineExternalAccessRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `action` attribute.
  TfRef<String> get action => TfRef.attribute<String>(this, 'action');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `destination_ports` attribute.
  TfRef<List<String>> get destinationPorts =>
      TfRef.attribute<List<String>>(this, 'destination_ports');

  /// Reference to `ip_protocol` attribute.
  TfRef<String> get ipProtocol => TfRef.attribute<String>(this, 'ip_protocol');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `source_ports` attribute.
  TfRef<List<String>> get sourcePorts =>
      TfRef.attribute<List<String>>(this, 'source_ports');
}
