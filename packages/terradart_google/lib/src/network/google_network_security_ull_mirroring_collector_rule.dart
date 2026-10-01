// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../network/google_network_security_ull_mirroring_collector.dart'
    show GoogleNetworkSecurityUllMirroringCollector;

/// Sensitive field paths for `google_network_security_ull_mirroring_collector_rule`.
const Set<String> _googleNetworkSecurityUllMirroringCollectorRuleSensitive =
    <String>{};

/// Terraform `deletion_policy` for ULL mirroring collector rules.
extension type const NetworkSecurityUllMirroringCollectorRuleDeletionPolicy._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkSecurityUllMirroringCollectorRuleDeletionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  NetworkSecurityUllMirroringCollectorRuleDeletionPolicy.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const NetworkSecurityUllMirroringCollectorRuleDeletionPolicy.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const delete =
      NetworkSecurityUllMirroringCollectorRuleDeletionPolicy._(
        TfArgLiteral('DELETE'),
      );
  static const prevent =
      NetworkSecurityUllMirroringCollectorRuleDeletionPolicy._(
        TfArgLiteral('PREVENT'),
      );
  static const abandon =
      NetworkSecurityUllMirroringCollectorRuleDeletionPolicy._(
        TfArgLiteral('ABANDON'),
      );

  static const List<NetworkSecurityUllMirroringCollectorRuleDeletionPolicy>
  values = [delete, prevent, abandon];
}

/// Traffic direction for `match.direction`.
extension type const NetworkSecurityUllMirroringCollectorRuleDirection._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkSecurityUllMirroringCollectorRuleDirection.variable(String name)
    : this._(TfArg.variable(name));
  NetworkSecurityUllMirroringCollectorRuleDirection.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkSecurityUllMirroringCollectorRuleDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const ingress = NetworkSecurityUllMirroringCollectorRuleDirection._(
    TfArgLiteral('INGRESS'),
  );
  static const egress = NetworkSecurityUllMirroringCollectorRuleDirection._(
    TfArgLiteral('EGRESS'),
  );

  static const List<NetworkSecurityUllMirroringCollectorRuleDirection> values =
      [ingress, egress];
}

/// `match` block on a ULL mirroring collector rule.
@immutable
class NetworkSecurityUllMirroringCollectorRuleMatch {
  const NetworkSecurityUllMirroringCollectorRuleMatch({
    this.direction,
    this.srcIpRanges,
    this.dstIpRanges,
    this.ipProtocols,
  });

  final NetworkSecurityUllMirroringCollectorRuleDirection? direction;
  final List<TfArg<String>>? srcIpRanges;
  final List<TfArg<String>>? dstIpRanges;
  final List<TfArg<String>>? ipProtocols;

  Map<String, Object?> toArgMap() => {
    if (direction != null) 'direction': direction!.toTfJson(),
    if (srcIpRanges != null)
      'src_ip_ranges': srcIpRanges!.map((v) => v.toTfJson()).toList(),
    if (dstIpRanges != null)
      'dst_ip_ranges': dstIpRanges!.map((v) => v.toTfJson()).toList(),
    if (ipProtocols != null)
      'ip_protocols': ipProtocols!.map((v) => v.toTfJson()).toList(),
  };
}

/// Factory wrapper for `google_network_security_ull_mirroring_collector_rule`.
///
/// UllMirroringCollectorRule is a resource that defines what traffic should be
/// mirrored.
///
/// ULL mirroring collector rule — traffic match criteria on a collector.
///
/// Set [ullMirroringCollector] to `collector.name`. Requires a
/// [NetworkSecurityUllMirroringCollectorRuleMatch] block.
final class GoogleNetworkSecurityUllMirroringCollectorRule extends Resource {
  static const String tfType =
      'google_network_security_ull_mirroring_collector_rule';

  GoogleNetworkSecurityUllMirroringCollectorRule(
    super.localName, {
    required TfArg<String> location,
    required RefTo<GoogleNetworkSecurityUllMirroringCollector>
    ullMirroringCollector,
    required TfArg<String> ullMirroringCollectorRuleId,
    required NetworkSecurityUllMirroringCollectorRuleMatch match,
    TfArg<Map<String, String>>? labels,
    NetworkSecurityUllMirroringCollectorRuleDeletionPolicy? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'ull_mirroring_collector': ullMirroringCollector.encodeAs('name'),
           'ull_mirroring_collector_rule_id': ullMirroringCollectorRuleId,
           'match': TfArg.literal([match.toArgMap()]),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityUllMirroringCollectorRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkSecurityUllMirroringCollectorRule>`.
  RefTo<GoogleNetworkSecurityUllMirroringCollectorRule> get ref =>
      RefTo.of(this);

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

  /// Reference to `ull_mirroring_collector` attribute.
  TfRef<String> get ullMirroringCollector =>
      TfRef.attribute<String>(this, 'ull_mirroring_collector');

  /// Reference to `ull_mirroring_collector_rule_id` attribute.
  TfRef<String> get ullMirroringCollectorRuleId =>
      TfRef.attribute<String>(this, 'ull_mirroring_collector_rule_id');
}
