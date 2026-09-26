// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codeartifact_domain_permissions_policy`.
const Set<String> _awsCodeartifactDomainPermissionsPolicySensitive = <String>{};

/// Factory wrapper for `aws_codeartifact_domain_permissions_policy`.
final class AwsCodeartifactDomainPermissionsPolicy extends Resource {
  static const String tfType = 'aws_codeartifact_domain_permissions_policy';

  AwsCodeartifactDomainPermissionsPolicy({
    required super.localName,
    required TfArg<String> domain,
    TfArg<String>? domainOwner,
    TfArg<String>? policyDocument,
    TfArg<String>? policyRevision,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain': domain,
           if (domainOwner != null) 'domain_owner': domainOwner,
           if (policyDocument != null) 'policy_document': policyDocument,
           if (policyRevision != null) 'policy_revision': policyRevision,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCodeartifactDomainPermissionsPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');
}
