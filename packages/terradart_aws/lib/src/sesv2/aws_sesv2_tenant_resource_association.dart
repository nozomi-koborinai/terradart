// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sesv2_tenant_resource_association`.
const Set<String> _awsSesv2TenantResourceAssociationSensitive = <String>{};

/// Factory wrapper for `aws_sesv2_tenant_resource_association`.
final class AwsSesv2TenantResourceAssociation extends Resource {
  static const String tfType = 'aws_sesv2_tenant_resource_association';

  AwsSesv2TenantResourceAssociation({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    required TfArg<String> tenantName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'resource_arn': resourceArn,
           'tenant_name': tenantName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSesv2TenantResourceAssociationSensitive;
}
