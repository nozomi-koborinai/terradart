// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lambda_layer_version_permission`.
const Set<String> _awsLambdaLayerVersionPermissionSensitive = <String>{};

/// Factory wrapper for `aws_lambda_layer_version_permission`.
final class AwsLambdaLayerVersionPermission extends Resource {
  static const String tfType = 'aws_lambda_layer_version_permission';

  AwsLambdaLayerVersionPermission({
    required super.localName,
    required TfArg<String> action,
    required TfArg<String> layerName,
    TfArg<String>? organizationId,
    required TfArg<String> principal,
    TfArg<String>? region,
    TfArg<bool>? skipDestroy,
    required TfArg<String> statementId,
    required TfArg<num> versionNumber,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': action,
           'layer_name': layerName,
           if (organizationId != null) 'organization_id': organizationId,
           'principal': principal,
           if (region != null) 'region': region,
           if (skipDestroy != null) 'skip_destroy': skipDestroy,
           'statement_id': statementId,
           'version_number': versionNumber,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaLayerVersionPermissionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `revision_id` attribute.
  TfRef<String> get revisionId => TfRef.attribute<String>(this, 'revision_id');
}
