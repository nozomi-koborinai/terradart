// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkflowmonitor_scope`.
const Set<String> _awsNetworkflowmonitorScopeSensitive = <String>{};

/// Typed helper for the `target` block of
/// `aws_networkflowmonitor_scope` (derived from provider schema).
@immutable
final class NetworkflowmonitorScopeTarget {
  const NetworkflowmonitorScopeTarget({
    required this.region,
    this.targetIdentifier,
  });

  final TfArg<String> region;

  final List<NetworkflowmonitorScopeTargetTargetIdentifier>? targetIdentifier;

  Map<String, Object?> encode() => {
    'region': region.toTfJson(),
    if (targetIdentifier != null)
      'target_identifier': [for (final e in targetIdentifier!) e.encode()],
  };
}

/// Typed helper for the `target.target_identifier` block of
/// `aws_networkflowmonitor_scope` (derived from provider schema).
@immutable
final class NetworkflowmonitorScopeTargetTargetIdentifier {
  const NetworkflowmonitorScopeTargetTargetIdentifier({
    required this.targetType,
    this.targetId,
  });

  final TfArg<String> targetType;

  final List<NetworkflowmonitorScopeTargetTargetIdentifierTargetId>? targetId;

  Map<String, Object?> encode() => {
    'target_type': targetType.toTfJson(),
    if (targetId != null) 'target_id': [for (final e in targetId!) e.encode()],
  };
}

/// Typed helper for the `target.target_identifier.target_id` block of
/// `aws_networkflowmonitor_scope` (derived from provider schema).
@immutable
final class NetworkflowmonitorScopeTargetTargetIdentifierTargetId {
  const NetworkflowmonitorScopeTargetTargetIdentifierTargetId({
    required this.accountId,
  });

  final TfArg<String> accountId;

  Map<String, Object?> encode() => {'account_id': accountId.toTfJson()};
}

/// Factory wrapper for `aws_networkflowmonitor_scope`.
final class AwsNetworkflowmonitorScope extends Resource {
  static const String tfType = 'aws_networkflowmonitor_scope';

  AwsNetworkflowmonitorScope({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<NetworkflowmonitorScopeTarget>? target,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (target != null)
             'target': TfArg.literal([for (final e in target) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkflowmonitorScopeSensitive;

  /// Reference to `scope_arn` attribute.
  TfRef<String> get scopeArn => TfRef.attribute<String>(this, 'scope_arn');

  /// Reference to `scope_id` attribute.
  TfRef<String> get scopeId => TfRef.attribute<String>(this, 'scope_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
