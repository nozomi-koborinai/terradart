// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpclattice_listener_rule`.
const Set<String> _awsVpclatticeListenerRuleSensitive = <String>{};

/// Typed helper for the `action` block of
/// `aws_vpclattice_listener_rule` (derived from provider schema).
@immutable
final class VpclatticeListenerRuleAction {
  const VpclatticeListenerRuleAction({this.fixedResponse, this.forward});

  final VpclatticeListenerRuleActionFixedResponse? fixedResponse;

  final VpclatticeListenerRuleActionForward? forward;

  Map<String, Object?> encode() => {
    if (fixedResponse != null) 'fixed_response': fixedResponse!.encode(),
    if (forward != null) 'forward': forward!.encode(),
  };
}

/// Typed helper for the `action.fixed_response` block of
/// `aws_vpclattice_listener_rule` (derived from provider schema).
@immutable
final class VpclatticeListenerRuleActionFixedResponse {
  const VpclatticeListenerRuleActionFixedResponse({required this.statusCode});

  final TfArg<num> statusCode;

  Map<String, Object?> encode() => {'status_code': statusCode.toTfJson()};
}

/// Typed helper for the `action.forward` block of
/// `aws_vpclattice_listener_rule` (derived from provider schema).
@immutable
final class VpclatticeListenerRuleActionForward {
  const VpclatticeListenerRuleActionForward({required this.targetGroups});

  final List<VpclatticeListenerRuleActionForwardTargetGroups> targetGroups;

  Map<String, Object?> encode() => {
    'target_groups': [for (final e in targetGroups) e.encode()],
  };
}

/// Typed helper for the `action.forward.target_groups` block of
/// `aws_vpclattice_listener_rule` (derived from provider schema).
@immutable
final class VpclatticeListenerRuleActionForwardTargetGroups {
  const VpclatticeListenerRuleActionForwardTargetGroups({
    required this.targetGroupIdentifier,
    this.weight,
  });

  final TfArg<String> targetGroupIdentifier;

  final TfArg<num>? weight;

  Map<String, Object?> encode() => {
    'target_group_identifier': targetGroupIdentifier.toTfJson(),
    if (weight != null) 'weight': weight!.toTfJson(),
  };
}

/// Typed helper for the `match` block of
/// `aws_vpclattice_listener_rule` (derived from provider schema).
@immutable
final class VpclatticeListenerRuleMatch {
  const VpclatticeListenerRuleMatch({required this.httpMatch});

  final VpclatticeListenerRuleMatchHttpMatch httpMatch;

  Map<String, Object?> encode() => {'http_match': httpMatch.encode()};
}

/// Typed helper for the `match.http_match` block of
/// `aws_vpclattice_listener_rule` (derived from provider schema).
@immutable
final class VpclatticeListenerRuleMatchHttpMatch {
  const VpclatticeListenerRuleMatchHttpMatch({
    this.method,
    this.headerMatches,
    this.pathMatch,
  });

  final TfArg<String>? method;

  final List<VpclatticeListenerRuleMatchHttpMatchHeaderMatches>? headerMatches;

  final VpclatticeListenerRuleMatchHttpMatchPathMatch? pathMatch;

  Map<String, Object?> encode() => {
    if (method != null) 'method': method!.toTfJson(),
    if (headerMatches != null)
      'header_matches': [for (final e in headerMatches!) e.encode()],
    if (pathMatch != null) 'path_match': pathMatch!.encode(),
  };
}

/// Typed helper for the `match.http_match.header_matches` block of
/// `aws_vpclattice_listener_rule` (derived from provider schema).
@immutable
final class VpclatticeListenerRuleMatchHttpMatchHeaderMatches {
  const VpclatticeListenerRuleMatchHttpMatchHeaderMatches({
    this.caseSensitive,
    required this.name,
    required this.match,
  });

  final TfArg<bool>? caseSensitive;

  final TfArg<String> name;

  final VpclatticeListenerRuleMatchHttpMatchHeaderMatchesMatch match;

  Map<String, Object?> encode() => {
    if (caseSensitive != null) 'case_sensitive': caseSensitive!.toTfJson(),
    'name': name.toTfJson(),
    'match': match.encode(),
  };
}

/// Typed helper for the `match.http_match.header_matches.match` block of
/// `aws_vpclattice_listener_rule` (derived from provider schema).
@immutable
final class VpclatticeListenerRuleMatchHttpMatchHeaderMatchesMatch {
  const VpclatticeListenerRuleMatchHttpMatchHeaderMatchesMatch({
    this.contains,
    this.exact,
    this.prefix,
  });

  final TfArg<String>? contains;

  final TfArg<String>? exact;

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    if (contains != null) 'contains': contains!.toTfJson(),
    if (exact != null) 'exact': exact!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
  };
}

/// Typed helper for the `match.http_match.path_match` block of
/// `aws_vpclattice_listener_rule` (derived from provider schema).
@immutable
final class VpclatticeListenerRuleMatchHttpMatchPathMatch {
  const VpclatticeListenerRuleMatchHttpMatchPathMatch({
    this.caseSensitive,
    required this.match,
  });

  final TfArg<bool>? caseSensitive;

  final VpclatticeListenerRuleMatchHttpMatchPathMatchMatch match;

  Map<String, Object?> encode() => {
    if (caseSensitive != null) 'case_sensitive': caseSensitive!.toTfJson(),
    'match': match.encode(),
  };
}

/// Typed helper for the `match.http_match.path_match.match` block of
/// `aws_vpclattice_listener_rule` (derived from provider schema).
@immutable
final class VpclatticeListenerRuleMatchHttpMatchPathMatchMatch {
  const VpclatticeListenerRuleMatchHttpMatchPathMatchMatch({
    this.exact,
    this.prefix,
  });

  final TfArg<String>? exact;

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    if (exact != null) 'exact': exact!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
  };
}

/// Factory wrapper for `aws_vpclattice_listener_rule`.
final class AwsVpclatticeListenerRule extends Resource {
  static const String tfType = 'aws_vpclattice_listener_rule';

  AwsVpclatticeListenerRule({
    required super.localName,
    required TfArg<String> listenerIdentifier,
    required TfArg<String> name,
    required TfArg<num> priority,
    TfArg<String>? region,
    required TfArg<String> serviceIdentifier,
    TfArg<Map<String, String>>? tags,
    required VpclatticeListenerRuleAction action,
    required VpclatticeListenerRuleMatch match,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'listener_identifier': listenerIdentifier,
           'name': name,
           'priority': priority,
           if (region != null) 'region': region,
           'service_identifier': serviceIdentifier,
           if (tags != null) 'tags': tags,
           'action': TfArg.literal(action.encode()),
           'match': TfArg.literal(match.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpclatticeListenerRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `rule_id` attribute.
  TfRef<String> get ruleId => TfRef.attribute<String>(this, 'rule_id');
}
