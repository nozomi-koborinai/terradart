// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3control_access_grants_instance_resource_policy`.
const Set<String> _awsS3controlAccessGrantsInstanceResourcePolicySensitive =
    <String>{};

/// Factory wrapper for `aws_s3control_access_grants_instance_resource_policy`.
final class AwsS3controlAccessGrantsInstanceResourcePolicy extends Resource {
  static const String tfType =
      'aws_s3control_access_grants_instance_resource_policy';

  AwsS3controlAccessGrantsInstanceResourcePolicy({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> policy,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'policy': policy,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3controlAccessGrantsInstanceResourcePolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
