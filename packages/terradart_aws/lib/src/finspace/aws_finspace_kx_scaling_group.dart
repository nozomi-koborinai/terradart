// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_finspace_kx_scaling_group`.
const Set<String> _awsFinspaceKxScalingGroupSensitive = <String>{};

/// Factory wrapper for `aws_finspace_kx_scaling_group`.
final class AwsFinspaceKxScalingGroup extends Resource {
  static const String tfType = 'aws_finspace_kx_scaling_group';

  AwsFinspaceKxScalingGroup({
    required super.localName,
    required TfArg<String> availabilityZoneId,
    required TfArg<String> environmentId,
    required TfArg<String> hostType,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'availability_zone_id': availabilityZoneId,
           'environment_id': environmentId,
           'host_type': hostType,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFinspaceKxScalingGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `clusters` attribute.
  TfRef<List<String>> get clusters =>
      TfRef.attribute<List<String>>(this, 'clusters');

  /// Reference to `created_timestamp` attribute.
  TfRef<String> get createdTimestamp =>
      TfRef.attribute<String>(this, 'created_timestamp');

  /// Reference to `last_modified_timestamp` attribute.
  TfRef<String> get lastModifiedTimestamp =>
      TfRef.attribute<String>(this, 'last_modified_timestamp');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');
}
