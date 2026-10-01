// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_instance_state`.
const Set<String> _awsEc2InstanceStateSensitive = <String>{};

/// Ec2 Instance enum for `state`.
enum Ec2InstanceState implements TerraformEnum {
  running('running'),
  stopped('stopped');

  const Ec2InstanceState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ec2_instance_state`.
final class AwsEc2InstanceState extends Resource {
  static const String tfType = 'aws_ec2_instance_state';

  AwsEc2InstanceState({
    required super.localName,
    TfArg<bool>? force,
    required TfArg<String> instanceId,
    TfArg<String>? region,
    required TfArg<Ec2InstanceState> state,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'force': ?force,
           'instance_id': instanceId,
           'region': ?region,
           'state': state,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2InstanceStateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2InstanceState>`.
  RefTo<AwsEc2InstanceState> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `force` attribute.
  TfRef<bool> get force => TfRef.attribute<bool>(this, 'force');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceId => TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
