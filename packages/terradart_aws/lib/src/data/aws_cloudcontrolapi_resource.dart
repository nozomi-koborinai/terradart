// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudcontrolapi_resource`.
const Set<String> _awsCloudcontrolapiResourceSensitive = <String>{};

/// Factory wrapper for `aws_cloudcontrolapi_resource`.
final class DataAwsCloudcontrolapiResource extends Data {
  static const String tfType = 'aws_cloudcontrolapi_resource';

  DataAwsCloudcontrolapiResource({
    required super.localName,
    required TfArg<String> identifier,
    TfArg<String>? region,
    TfArg<String>? roleArn,
    required TfArg<String> typeName,
    TfArg<String>? typeVersionId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'identifier': identifier,
           if (region != null) 'region': region,
           if (roleArn != null) 'role_arn': roleArn,
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
