// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_ull_mirroring_collector_rule`.
const Set<String> _googleNetworkSecurityUllMirroringCollectorRuleSensitive =
    <String>{};

/// Terraform `deletion_policy` for ULL mirroring collector rules.
enum NetworkSecurityUllMirroringCollectorRuleDeletionPolicy
    implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const NetworkSecurityUllMirroringCollectorRuleDeletionPolicy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Traffic direction for `match.direction`.
enum NetworkSecurityUllMirroringCollectorRuleDirection
    implements TerraformEnum {
  ingress('INGRESS'),
  egress('EGRESS');

  const NetworkSecurityUllMirroringCollectorRuleDirection(this.terraformValue);
  @override
  final String terraformValue;
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
    if (direction != null) 'direction': direction!.terraformValue,
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
/// Set [ullMirroringCollector] to `TfArg.ref(collector.nameRef)`. Requires a
/// [NetworkSecurityUllMirroringCollectorRuleMatch] block.
final class GoogleNetworkSecurityUllMirroringCollectorRule extends Resource {
  static const String tfType =
      'google_network_security_ull_mirroring_collector_rule';

  GoogleNetworkSecurityUllMirroringCollectorRule({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> ullMirroringCollector,
    required TfArg<String> ullMirroringCollectorRuleId,
    required NetworkSecurityUllMirroringCollectorRuleMatch match,
    TfArg<Map<String, String>>? labels,
    TfArg<NetworkSecurityUllMirroringCollectorRuleDeletionPolicy>?
    deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'ull_mirroring_collector': ullMirroringCollector,
           'ull_mirroring_collector_rule_id': ullMirroringCollectorRuleId,
           'match': TfArg.literal([match.toArgMap()]),
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityUllMirroringCollectorRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
