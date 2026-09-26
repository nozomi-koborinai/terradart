// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpclattice_listener`.
const Set<String> _awsVpclatticeListenerSensitive = <String>{};

/// Typed helper for the `default_action` block of
/// `aws_vpclattice_listener` (derived from provider schema).
@immutable
final class VpclatticeListenerDefaultAction {
  const VpclatticeListenerDefaultAction({this.fixedResponse, this.forward});

  final VpclatticeListenerDefaultActionFixedResponse? fixedResponse;

  final List<VpclatticeListenerDefaultActionForward>? forward;

  Map<String, Object?> encode() => {
    if (fixedResponse != null) 'fixed_response': fixedResponse!.encode(),
    if (forward != null) 'forward': [for (final e in forward!) e.encode()],
  };
}

/// Typed helper for the `default_action.fixed_response` block of
/// `aws_vpclattice_listener` (derived from provider schema).
@immutable
final class VpclatticeListenerDefaultActionFixedResponse {
  const VpclatticeListenerDefaultActionFixedResponse({
    required this.statusCode,
  });

  final TfArg<num> statusCode;

  Map<String, Object?> encode() => {'status_code': statusCode.toTfJson()};
}

/// Typed helper for the `default_action.forward` block of
/// `aws_vpclattice_listener` (derived from provider schema).
@immutable
final class VpclatticeListenerDefaultActionForward {
  const VpclatticeListenerDefaultActionForward({this.targetGroups});

  final List<VpclatticeListenerDefaultActionForwardTargetGroups>? targetGroups;

  Map<String, Object?> encode() => {
    if (targetGroups != null)
      'target_groups': [for (final e in targetGroups!) e.encode()],
  };
}

/// Typed helper for the `default_action.forward.target_groups` block of
/// `aws_vpclattice_listener` (derived from provider schema).
@immutable
final class VpclatticeListenerDefaultActionForwardTargetGroups {
  const VpclatticeListenerDefaultActionForwardTargetGroups({
    this.targetGroupIdentifier,
    this.weight,
  });

  final TfArg<String>? targetGroupIdentifier;

  final TfArg<num>? weight;

  Map<String, Object?> encode() => {
    if (targetGroupIdentifier != null)
      'target_group_identifier': targetGroupIdentifier!.toTfJson(),
    if (weight != null) 'weight': weight!.toTfJson(),
  };
}

/// Factory wrapper for `aws_vpclattice_listener`.
final class AwsVpclatticeListener extends Resource {
  static const String tfType = 'aws_vpclattice_listener';

  AwsVpclatticeListener({
    required super.localName,
    required TfArg<String> name,
    TfArg<num>? port,
    required TfArg<String> protocol,
    TfArg<String>? region,
    TfArg<String>? serviceArn,
    TfArg<String>? serviceIdentifier,
    TfArg<Map<String, String>>? tags,
    required VpclatticeListenerDefaultAction defaultAction,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (port != null) 'port': port,
           'protocol': protocol,
           if (region != null) 'region': region,
           if (serviceArn != null) 'service_arn': serviceArn,
           if (serviceIdentifier != null)
             'service_identifier': serviceIdentifier,
           if (tags != null) 'tags': tags,
           'default_action': TfArg.literal(defaultAction.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpclatticeListenerSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `last_updated_at` attribute.
  TfRef<String> get lastUpdatedAt =>
      TfRef.attribute<String>(this, 'last_updated_at');

  /// Reference to `listener_id` attribute.
  TfRef<String> get listenerId => TfRef.attribute<String>(this, 'listener_id');
}
