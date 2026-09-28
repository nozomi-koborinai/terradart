// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_host`.
const Set<String> _awsEc2HostSensitive = <String>{};

/// Ec2 Host Auto enum for `auto_placement`.
enum Ec2HostAutoPlacement implements TerraformEnum {
  on('on'),
  off('off');

  const Ec2HostAutoPlacement(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ec2 Host Host enum for `host_recovery`.
enum Ec2HostHostRecovery implements TerraformEnum {
  on('on'),
  off('off');

  const Ec2HostHostRecovery(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ec2_host`.
final class AwsEc2Host extends Resource {
  static const String tfType = 'aws_ec2_host';

  AwsEc2Host({
    required super.localName,
    TfArg<String>? assetId,
    TfArg<Ec2HostAutoPlacement>? autoPlacement,
    required TfArg<String> availabilityZone,
    TfArg<Ec2HostHostRecovery>? hostRecovery,
    TfArg<String>? instanceFamily,
    TfArg<String>? instanceType,
    TfArg<String>? outpostArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (assetId != null) 'asset_id': assetId,
           if (autoPlacement != null) 'auto_placement': autoPlacement,
           'availability_zone': availabilityZone,
           if (hostRecovery != null) 'host_recovery': hostRecovery,
           if (instanceFamily != null) 'instance_family': instanceFamily,
           if (instanceType != null) 'instance_type': instanceType,
           if (outpostArn != null) 'outpost_arn': outpostArn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2HostSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');
}
