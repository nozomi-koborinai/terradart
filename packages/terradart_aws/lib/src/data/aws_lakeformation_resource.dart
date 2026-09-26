// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lakeformation_resource`.
const Set<String> _awsLakeformationResourceSensitive = <String>{};

/// Factory wrapper for `aws_lakeformation_resource`.
final class DataAwsLakeformationResource extends Data {
  static const String tfType = 'aws_lakeformation_resource';

  DataAwsLakeformationResource({
    required super.localName,
    required TfArg<String> arn,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'arn': arn, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsLakeformationResourceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `hybrid_access_enabled` attribute.
  TfRef<bool> get hybridAccessEnabled =>
      TfRef.attribute<bool>(this, 'hybrid_access_enabled');

  /// Reference to `last_modified` attribute.
  TfRef<String> get lastModified =>
      TfRef.attribute<String>(this, 'last_modified');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `with_federation` attribute.
  TfRef<bool> get withFederation =>
      TfRef.attribute<bool>(this, 'with_federation');

  /// Reference to `with_privileged_access` attribute.
  TfRef<bool> get withPrivilegedAccess =>
      TfRef.attribute<bool>(this, 'with_privileged_access');
}
