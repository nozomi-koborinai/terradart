// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_globalaccelerator_listener`.
const Set<String> _awsGlobalacceleratorListenerSensitive = <String>{};

/// Typed helper for the `port_range` block of
/// `aws_globalaccelerator_listener` (derived from provider schema).
@immutable
final class GlobalacceleratorListenerPortRange {
  const GlobalacceleratorListenerPortRange({this.fromPort, this.toPort});

  final TfArg<num>? fromPort;

  final TfArg<num>? toPort;

  Map<String, Object?> encode() => {
    if (fromPort != null) 'from_port': fromPort!.toTfJson(),
    if (toPort != null) 'to_port': toPort!.toTfJson(),
  };
}

/// Factory wrapper for `aws_globalaccelerator_listener`.
final class AwsGlobalacceleratorListener extends Resource {
  static const String tfType = 'aws_globalaccelerator_listener';

  AwsGlobalacceleratorListener({
    required super.localName,
    required TfArg<String> acceleratorArn,
    TfArg<String>? clientAffinity,
    required TfArg<String> protocol,
    required List<GlobalacceleratorListenerPortRange> portRange,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'accelerator_arn': acceleratorArn,
           if (clientAffinity != null) 'client_affinity': clientAffinity,
           'protocol': protocol,
           'port_range': TfArg.literal([for (final e in portRange) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlobalacceleratorListenerSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
