// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rds_instance_state`.
const Set<String> _awsRdsInstanceStateSensitive = <String>{};

/// Rds Instance State enum for `state`.
enum RdsInstanceStateState implements TerraformEnum {
  available('available'),
  stopped('stopped');

  const RdsInstanceStateState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_rds_instance_state`.
final class AwsRdsInstanceState extends Resource {
  static const String tfType = 'aws_rds_instance_state';

  AwsRdsInstanceState({
    required super.localName,
    required TfArg<String> identifier,
    TfArg<String>? region,
    required TfArg<RdsInstanceStateState> state,
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
  TfRef<String> get identifierRef =>
      TfRef.attribute<String>(this, 'identifier');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `state` attribute.
  TfRef<String> get stateRef => TfRef.attribute<String>(this, 'state');
}
