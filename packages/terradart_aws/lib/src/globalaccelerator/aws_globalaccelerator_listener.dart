// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_globalaccelerator_listener`.
const Set<String> _awsGlobalacceleratorListenerSensitive = <String>{};

/// Globalaccelerator Listener Client enum for `client_affinity`.
enum GlobalacceleratorListenerClientAffinity implements TerraformEnum {
  none('NONE'),
  sourceIp('SOURCE_IP');

  const GlobalacceleratorListenerClientAffinity(this.terraformValue);
  @override
  final String terraformValue;
}

/// Globalaccelerator Listener enum for `protocol`.
enum GlobalacceleratorListenerProtocol implements TerraformEnum {
  tcp('TCP'),
  udp('UDP');

  const GlobalacceleratorListenerProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `port_range` block of
/// `aws_globalaccelerator_listener` (derived from provider schema).
@immutable
final class GlobalacceleratorListenerPortRange {
  const GlobalacceleratorListenerPortRange({this.fromPort, this.toPort});

  final TfArg<num>? fromPort;

  final TfArg<num>? toPort;

  Map<String, Object?> encode() => {
    'from_port': ?fromPort?.toTfJson(),
    'to_port': ?toPort?.toTfJson(),
  };
}

/// Factory wrapper for `aws_globalaccelerator_listener`.
final class AwsGlobalacceleratorListener extends Resource {
  static const String tfType = 'aws_globalaccelerator_listener';

  AwsGlobalacceleratorListener({
    required super.localName,
    required TfArg<String> acceleratorArn,
    TfArg<GlobalacceleratorListenerClientAffinity>? clientAffinity,
    required TfArg<GlobalacceleratorListenerProtocol> protocol,
    required List<GlobalacceleratorListenerPortRange> portRange,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'accelerator_arn': acceleratorArn,
           'client_affinity': ?clientAffinity,
           'protocol': protocol,
           'port_range': TfArg.literal([for (final e in portRange) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlobalacceleratorListenerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGlobalacceleratorListener>`.
  RefTo<AwsGlobalacceleratorListener> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `accelerator_arn` attribute.
  TfRef<String> get acceleratorArn =>
      TfRef.attribute<String>(this, 'accelerator_arn');

  /// Reference to `client_affinity` attribute.
  TfRef<String> get clientAffinity =>
      TfRef.attribute<String>(this, 'client_affinity');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');
}
