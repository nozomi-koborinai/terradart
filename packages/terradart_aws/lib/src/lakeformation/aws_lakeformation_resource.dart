// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lakeformation_resource`.
const Set<String> _awsLakeformationResourceSensitive = <String>{};

/// Factory wrapper for `aws_lakeformation_resource`.
final class AwsLakeformationResource extends Resource {
  static const String tfType = 'aws_lakeformation_resource';

  AwsLakeformationResource({
    required super.localName,
    required TfArg<String> arn,
    TfArg<bool>? hybridAccessEnabled,
    TfArg<String>? region,
    TfArg<String>? roleArn,
    TfArg<bool>? useServiceLinkedRole,
    TfArg<bool>? withFederation,
    TfArg<bool>? withPrivilegedAccess,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arn': arn,
           if (hybridAccessEnabled != null)
             'hybrid_access_enabled': hybridAccessEnabled,
           if (region != null) 'region': region,
           if (roleArn != null) 'role_arn': roleArn,
           if (useServiceLinkedRole != null)
             'use_service_linked_role': useServiceLinkedRole,
           if (withFederation != null) 'with_federation': withFederation,
           if (withPrivilegedAccess != null)
             'with_privileged_access': withPrivilegedAccess,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLakeformationResourceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `last_modified` attribute.
  TfRef<String> get lastModified =>
      TfRef.attribute<String>(this, 'last_modified');
}
