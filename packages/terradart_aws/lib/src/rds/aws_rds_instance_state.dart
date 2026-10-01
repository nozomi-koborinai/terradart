// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rds_instance_state`.
const Set<String> _awsRdsInstanceStateSensitive = <String>{};

/// Rds Instance enum for `state`.
extension type const RdsInstanceState._(TfArg<String> _)
    implements TfArg<String> {
  RdsInstanceState.variable(String name) : this._(TfArg.variable(name));
  RdsInstanceState.expression(String template)
    : this._(TfArg.expression(template));
  const RdsInstanceState.arg(TfArg<String> arg) : this._(arg);

  static const available = RdsInstanceState._(TfArgLiteral('available'));
  static const stopped = RdsInstanceState._(TfArgLiteral('stopped'));

  static const List<RdsInstanceState> values = [available, stopped];
}

/// Factory wrapper for `aws_rds_instance_state`.
final class AwsRdsInstanceState extends Resource {
  static const String tfType = 'aws_rds_instance_state';

  AwsRdsInstanceState(
    super.localName, {
    required TfArg<String> identifier,
    TfArg<String>? region,
    required RdsInstanceState state,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'identifier': identifier, 'region': ?region, 'state': state},
       );

  @override
  Set<String> get sensitiveFields => _awsRdsInstanceStateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRdsInstanceState>`.
  RefTo<AwsRdsInstanceState> get ref => RefTo.of(this);

  /// Reference to `identifier` attribute.
  TfRef<String> get identifier => TfRef.attribute<String>(this, 'identifier');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
