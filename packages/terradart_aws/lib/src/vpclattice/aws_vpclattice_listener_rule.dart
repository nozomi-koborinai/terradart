// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpclattice_listener_rule`.
const Set<String> _awsVpclatticeListenerRuleSensitive = <String>{};

/// Exactly one of `fixed_response`, `forward` on the `action` block of `aws_vpclattice_listener_rule`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.fixedResponse(...)`.
sealed class VpclatticeListenerRuleAction {
  const VpclatticeListenerRuleAction();

  /// Sets `fixed_response`.
  const factory VpclatticeListenerRuleAction.fixedResponse(
    VpclatticeListenerRuleFixedResponse fixedResponse,
  ) = VpclatticeListenerRuleActionFixedResponse;

  /// Sets `forward`.
  const factory VpclatticeListenerRuleAction.forward(
    VpclatticeListenerRuleForward forward,
  ) = VpclatticeListenerRuleActionForward;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [VpclatticeListenerRuleAction.fixedResponse] choice: sets `fixed_response`.
final class VpclatticeListenerRuleActionFixedResponse
    extends VpclatticeListenerRuleAction {
  const VpclatticeListenerRuleActionFixedResponse(this.fixedResponse);

  final VpclatticeListenerRuleFixedResponse fixedResponse;

  @override
  String get blockKey => 'fixed_response';

  @override
  Map<String, Object?> encode() => {'fixed_response': fixedResponse.encode()};
}

/// The [VpclatticeListenerRuleAction.forward] choice: sets `forward`.
final class VpclatticeListenerRuleActionForward
    extends VpclatticeListenerRuleAction {
  const VpclatticeListenerRuleActionForward(this.forward);

  final VpclatticeListenerRuleForward forward;

  @override
  String get blockKey => 'forward';

  @override
  Map<String, Object?> encode() => {'forward': forward.encode()};
}

/// Typed helper for the `action.fixed_response` block of
/// `aws_vpclattice_listener_rule` (derived from provider schema).
@immutable
final class VpclatticeListenerRuleFixedResponse {
  const VpclatticeListenerRuleFixedResponse({required this.statusCode});

  final TfArg<num> statusCode;

  Map<String, Object?> encode() => {'status_code': statusCode.toTfJson()};
}

/// Typed helper for the `action.forward` block of
/// `aws_vpclattice_listener_rule` (derived from provider schema).
@immutable
final class VpclatticeListenerRuleForward {
  const VpclatticeListenerRuleForward({required this.targetGroups});

  final List<VpclatticeListenerRuleTargetGroups> targetGroups;

  Map<String, Object?> encode() => {
    'target_groups': [for (final e in targetGroups) e.encode()],
  };
}

/// Typed helper for the `action.forward.target_groups` block of
/// `aws_vpclattice_listener_rule` (derived from provider schema).
@immutable
final class VpclatticeListenerRuleTargetGroups {
  const VpclatticeListenerRuleTargetGroups({
    required this.targetGroupIdentifier,
    this.weight,
  });

  final TfArg<String> targetGroupIdentifier;

  final TfArg<num>? weight;

  Map<String, Object?> encode() => {
    'target_group_identifier': targetGroupIdentifier.toTfJson(),
    'weight': ?weight?.toTfJson(),
  };
}

/// Typed helper for the `match` block of
/// `aws_vpclattice_listener_rule` (derived from provider schema).
@immutable
final class VpclatticeListenerRuleMatch {
  const VpclatticeListenerRuleMatch({required this.httpMatch});

  final VpclatticeListenerRuleHttpMatch httpMatch;

  Map<String, Object?> encode() => {'http_match': httpMatch.encode()};
}

/// Typed helper for the `match.http_match` block of
/// `aws_vpclattice_listener_rule` (derived from provider schema).
@immutable
final class VpclatticeListenerRuleHttpMatch {
  const VpclatticeListenerRuleHttpMatch({
    this.method,
    this.headerMatches,
    this.pathMatch,
  });

  final TfArg<String>? method;

  final List<VpclatticeListenerRuleHeaderMatches>? headerMatches;

  final VpclatticeListenerRulePathMatch? pathMatch;

  Map<String, Object?> encode() => {
    'method': ?method?.toTfJson(),
    if (headerMatches != null)
      'header_matches': [for (final e in headerMatches!) e.encode()],
    'path_match': ?pathMatch?.encode(),
  };
}

/// Typed helper for the `match.http_match.header_matches` block of
/// `aws_vpclattice_listener_rule` (derived from provider schema).
@immutable
final class VpclatticeListenerRuleHeaderMatches {
  const VpclatticeListenerRuleHeaderMatches({
    this.caseSensitive,
    required this.name,
    required this.match,
  });

  final TfArg<bool>? caseSensitive;

  final TfArg<String> name;

  final VpclatticeListenerRuleHeaderMatchesMatch match;

  Map<String, Object?> encode() => {
    'case_sensitive': ?caseSensitive?.toTfJson(),
    'name': name.toTfJson(),
    'match': match.encode(),
  };
}

/// Typed helper for the `match.http_match.header_matches.match` block of
/// `aws_vpclattice_listener_rule` (derived from provider schema).
@immutable
final class VpclatticeListenerRuleHeaderMatchesMatch {
  const VpclatticeListenerRuleHeaderMatchesMatch({
    this.contains,
    this.exact,
    this.prefix,
  });

  final TfArg<String>? contains;

  final TfArg<String>? exact;

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    'contains': ?contains?.toTfJson(),
    'exact': ?exact?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
  };
}

/// Typed helper for the `match.http_match.path_match` block of
/// `aws_vpclattice_listener_rule` (derived from provider schema).
@immutable
final class VpclatticeListenerRulePathMatch {
  const VpclatticeListenerRulePathMatch({
    this.caseSensitive,
    required this.match,
  });

  final TfArg<bool>? caseSensitive;

  final VpclatticeListenerRulePathMatchMatch match;

  Map<String, Object?> encode() => {
    'case_sensitive': ?caseSensitive?.toTfJson(),
    'match': match.encode(),
  };
}

/// Typed helper for the `match.http_match.path_match.match` block of
/// `aws_vpclattice_listener_rule` (derived from provider schema).
@immutable
final class VpclatticeListenerRulePathMatchMatch {
  const VpclatticeListenerRulePathMatchMatch({this.exact, this.prefix});

  final TfArg<String>? exact;

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    'exact': ?exact?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
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
           'region': ?region,
           'service_identifier': serviceIdentifier,
           'tags': ?tags,
           'action': TfArg.literal(action.encode()),
           'match': TfArg.literal(match.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpclatticeListenerRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpclatticeListenerRule>`.
  RefTo<AwsVpclatticeListenerRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `rule_id` attribute.
  TfRef<String> get ruleId => TfRef.attribute<String>(this, 'rule_id');

  /// Reference to `listener_identifier` attribute.
  TfRef<String> get listenerIdentifierRef =>
      TfRef.attribute<String>(this, 'listener_identifier');

  /// Reference to `priority` attribute.
  TfRef<num> get priorityRef => TfRef.attribute<num>(this, 'priority');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `service_identifier` attribute.
  TfRef<String> get serviceIdentifierRef =>
      TfRef.attribute<String>(this, 'service_identifier');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
