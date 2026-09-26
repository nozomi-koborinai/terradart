// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_instance_state`.
const Set<String> _awsEc2InstanceStateSensitive = <String>{};

/// Factory wrapper for `aws_ec2_instance_state`.
final class AwsEc2InstanceState extends Resource {
  static const String tfType = 'aws_ec2_instance_state';

  AwsEc2InstanceState({
    required super.localName,
    TfArg<bool>? force,
    required TfArg<String> instanceId,
    TfArg<String>? region,
    required TfArg<String> state,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (force != null) 'force': force,
           'instance_id': instanceId,
           if (region != null) 'region': region,
           'state': state,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2InstanceStateSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
