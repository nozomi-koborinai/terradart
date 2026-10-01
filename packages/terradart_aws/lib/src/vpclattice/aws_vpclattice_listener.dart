// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpclattice_listener`.
const Set<String> _awsVpclatticeListenerSensitive = <String>{};

/// Vpclattice Listener enum for `protocol`.
enum VpclatticeListenerProtocol implements TerraformEnum {
  http('HTTP'),
  https('HTTPS'),
  tlsPassthrough('TLS_PASSTHROUGH');

  const VpclatticeListenerProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `default_action` block of
/// `aws_vpclattice_listener` (derived from provider schema).
@immutable
final class VpclatticeListenerDefaultAction {
  const VpclatticeListenerDefaultAction({this.fixedResponse, this.forward});

  final VpclatticeListenerFixedResponse? fixedResponse;

  final List<VpclatticeListenerForward>? forward;

  Map<String, Object?> encode() => {
    'fixed_response': ?fixedResponse?.encode(),
    if (forward != null) 'forward': [for (final e in forward!) e.encode()],
  };
}

/// Typed helper for the `default_action.fixed_response` block of
/// `aws_vpclattice_listener` (derived from provider schema).
@immutable
final class VpclatticeListenerFixedResponse {
  const VpclatticeListenerFixedResponse({required this.statusCode});

  final TfArg<num> statusCode;

  Map<String, Object?> encode() => {'status_code': statusCode.toTfJson()};
}

/// Typed helper for the `default_action.forward` block of
/// `aws_vpclattice_listener` (derived from provider schema).
@immutable
final class VpclatticeListenerForward {
  const VpclatticeListenerForward({this.targetGroups});

  final List<VpclatticeListenerTargetGroups>? targetGroups;

  Map<String, Object?> encode() => {
    if (targetGroups != null)
      'target_groups': [for (final e in targetGroups!) e.encode()],
  };
}

/// Typed helper for the `default_action.forward.target_groups` block of
/// `aws_vpclattice_listener` (derived from provider schema).
@immutable
final class VpclatticeListenerTargetGroups {
  const VpclatticeListenerTargetGroups({
    this.targetGroupIdentifier,
    this.weight,
  });

  final TfArg<String>? targetGroupIdentifier;

  final TfArg<num>? weight;

  Map<String, Object?> encode() => {
    'target_group_identifier': ?targetGroupIdentifier?.toTfJson(),
    'weight': ?weight?.toTfJson(),
  };
}

/// Factory wrapper for `aws_vpclattice_listener`.
final class AwsVpclatticeListener extends Resource {
  static const String tfType = 'aws_vpclattice_listener';

  AwsVpclatticeListener({
    required super.localName,
    required TfArg<String> name,
    TfArg<num>? port,
    required TfArg<VpclatticeListenerProtocol> protocol,
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
           'port': ?port,
           'protocol': protocol,
           'region': ?region,
           'service_arn': ?serviceArn,
           'service_identifier': ?serviceIdentifier,
           'tags': ?tags,
           'default_action': TfArg.literal(defaultAction.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpclatticeListenerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpclatticeListener>`.
  RefTo<AwsVpclatticeListener> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `service_arn` attribute.
  TfRef<String> get serviceArn => TfRef.attribute<String>(this, 'service_arn');

  /// Reference to `service_identifier` attribute.
  TfRef<String> get serviceIdentifier =>
      TfRef.attribute<String>(this, 'service_identifier');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
