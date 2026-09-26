// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudcontrolapi_resource`.
const Set<String> _awsCloudcontrolapiResourceSensitive = <String>{'schema'};

/// Factory wrapper for `aws_cloudcontrolapi_resource`.
final class AwsCloudcontrolapiResource extends Resource {
  static const String tfType = 'aws_cloudcontrolapi_resource';

  AwsCloudcontrolapiResource({
    required super.localName,
    required TfArg<String> desiredState,
    TfArg<String>? region,
    TfArg<String>? roleArn,
    TfArg<String>? schema,
    required TfArg<String> typeName,
    TfArg<String>? typeVersionId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'desired_state': desiredState,
           if (region != null) 'region': region,
           if (roleArn != null) 'role_arn': roleArn,
           if (schema != null) 'schema': schema,
           'type_name': typeName,
           if (typeVersionId != null) 'type_version_id': typeVersionId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudcontrolapiResourceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `properties` attribute.
  TfRef<String> get properties => TfRef.attribute<String>(this, 'properties');
}
