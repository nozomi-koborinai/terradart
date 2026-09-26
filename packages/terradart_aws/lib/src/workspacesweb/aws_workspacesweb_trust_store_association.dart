// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspacesweb_trust_store_association`.
const Set<String> _awsWorkspaceswebTrustStoreAssociationSensitive = <String>{};

/// Factory wrapper for `aws_workspacesweb_trust_store_association`.
final class AwsWorkspaceswebTrustStoreAssociation extends Resource {
  static const String tfType = 'aws_workspacesweb_trust_store_association';

  AwsWorkspaceswebTrustStoreAssociation({
    required super.localName,
    required TfArg<String> portalArn,
    TfArg<String>? region,
    required TfArg<String> trustStoreArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'portal_arn': portalArn,
           if (region != null) 'region': region,
           'trust_store_arn': trustStoreArn,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsWorkspaceswebTrustStoreAssociationSensitive;
}
