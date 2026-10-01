// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_globalaccelerator_listener`.
const Set<String> _awsGlobalacceleratorListenerSensitive = <String>{};

/// Globalaccelerator Listener Client enum for `client_affinity`.
extension type const GlobalacceleratorListenerClientAffinity._(TfArg<String> _)
    implements TfArg<String> {
  GlobalacceleratorListenerClientAffinity.variable(String name)
    : this._(TfArg.variable(name));
  GlobalacceleratorListenerClientAffinity.expression(String template)
    : this._(TfArg.expression(template));
  const GlobalacceleratorListenerClientAffinity.arg(TfArg<String> arg)
    : this._(arg);

  static const none = GlobalacceleratorListenerClientAffinity._(
    TfArgLiteral('NONE'),
  );
  static const sourceIp = GlobalacceleratorListenerClientAffinity._(
    TfArgLiteral('SOURCE_IP'),
  );

  static const List<GlobalacceleratorListenerClientAffinity> values = [
    none,
    sourceIp,
  ];
}

/// Globalaccelerator Listener enum for `protocol`.
extension type const GlobalacceleratorListenerProtocol._(TfArg<String> _)
    implements TfArg<String> {
  GlobalacceleratorListenerProtocol.variable(String name)
    : this._(TfArg.variable(name));
  GlobalacceleratorListenerProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const GlobalacceleratorListenerProtocol.arg(TfArg<String> arg) : this._(arg);

  static const tcp = GlobalacceleratorListenerProtocol._(TfArgLiteral('TCP'));
  static const udp = GlobalacceleratorListenerProtocol._(TfArgLiteral('UDP'));

  static const List<GlobalacceleratorListenerProtocol> values = [tcp, udp];
}

/// Typed helper for the `port_range` block of
/// `aws_globalaccelerator_listener` (derived from provider schema).
@immutable
final class GlobalacceleratorListenerPortRange {
  const GlobalacceleratorListenerPortRange({this.fromPort, this.toPort});

  final TfArg<num>? fromPort;

  final TfArg<num>? toPort;

  @internal
  Map<String, Object?> encode() => {
    'from_port': ?fromPort?.toTfJson(),
    'to_port': ?toPort?.toTfJson(),
  };
}

/// Factory wrapper for `aws_globalaccelerator_listener`.
final class AwsGlobalacceleratorListener extends Resource {
  static const String tfType = 'aws_globalaccelerator_listener';

  AwsGlobalacceleratorListener(
    super.localName, {
    required TfArg<String> acceleratorArn,
    GlobalacceleratorListenerClientAffinity? clientAffinity,
    required GlobalacceleratorListenerProtocol protocol,
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
