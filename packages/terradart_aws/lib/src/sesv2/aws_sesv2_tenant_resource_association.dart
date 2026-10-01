// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sesv2_tenant_resource_association`.
const Set<String> _awsSesv2TenantResourceAssociationSensitive = <String>{};

/// Factory wrapper for `aws_sesv2_tenant_resource_association`.
final class AwsSesv2TenantResourceAssociation extends Resource {
  static const String tfType = 'aws_sesv2_tenant_resource_association';

  AwsSesv2TenantResourceAssociation(
    super.localName, {
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
           'region': ?region,
           'resource_arn': resourceArn,
           'tenant_name': tenantName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSesv2TenantResourceAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSesv2TenantResourceAssociation>`.
  RefTo<AwsSesv2TenantResourceAssociation> get ref => RefTo.of(this);

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');

  /// Reference to `tenant_name` attribute.
  TfRef<String> get tenantName => TfRef.attribute<String>(this, 'tenant_name');
}
