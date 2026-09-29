// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_iot_role_alias`.
const Set<String> _awsIotRoleAliasSensitive = <String>{};

/// Factory wrapper for `aws_iot_role_alias`.
final class AwsIotRoleAlias extends Resource {
  static const String tfType = 'aws_iot_role_alias';

  AwsIotRoleAlias({
    required super.localName,
    required TfArg<String> alias,
    TfArg<num>? credentialDuration,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'alias': alias,
           'credential_duration': ?credentialDuration,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIotRoleAliasSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIotRoleAlias>`.
  RefTo<AwsIotRoleAlias> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
