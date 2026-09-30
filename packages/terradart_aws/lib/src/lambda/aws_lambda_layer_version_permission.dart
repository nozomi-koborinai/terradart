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
           'organization_id': ?organizationId,
           'principal': principal,
           'region': ?region,
           'skip_destroy': ?skipDestroy,
           'statement_id': statementId,
           'version_number': versionNumber,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaLayerVersionPermissionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLambdaLayerVersionPermission>`.
  RefTo<AwsLambdaLayerVersionPermission> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `revision_id` attribute.
  TfRef<String> get revisionId => TfRef.attribute<String>(this, 'revision_id');

  /// Reference to `action` attribute.
  TfRef<String> get actionRef => TfRef.attribute<String>(this, 'action');

  /// Reference to `layer_name` attribute.
  TfRef<String> get layerNameRef => TfRef.attribute<String>(this, 'layer_name');

  /// Reference to `organization_id` attribute.
  TfRef<String> get organizationIdRef =>
      TfRef.attribute<String>(this, 'organization_id');

  /// Reference to `principal` attribute.
  TfRef<String> get principalRef => TfRef.attribute<String>(this, 'principal');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `skip_destroy` attribute.
  TfRef<bool> get skipDestroyRef => TfRef.attribute<bool>(this, 'skip_destroy');

  /// Reference to `statement_id` attribute.
  TfRef<String> get statementIdRef =>
      TfRef.attribute<String>(this, 'statement_id');

  /// Reference to `version_number` attribute.
  TfRef<num> get versionNumberRef =>
      TfRef.attribute<num>(this, 'version_number');
}
