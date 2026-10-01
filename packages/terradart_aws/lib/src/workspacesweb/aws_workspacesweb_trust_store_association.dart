// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspacesweb_trust_store_association`.
const Set<String> _awsWorkspaceswebTrustStoreAssociationSensitive = <String>{};

/// Factory wrapper for `aws_workspacesweb_trust_store_association`.
final class AwsWorkspaceswebTrustStoreAssociation extends Resource {
  static const String tfType = 'aws_workspacesweb_trust_store_association';

  AwsWorkspaceswebTrustStoreAssociation(
    super.localName, {
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
           'region': ?region,
           'trust_store_arn': trustStoreArn,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsWorkspaceswebTrustStoreAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWorkspaceswebTrustStoreAssociation>`.
  RefTo<AwsWorkspaceswebTrustStoreAssociation> get ref => RefTo.of(this);

  /// Reference to `portal_arn` attribute.
  TfRef<String> get portalArn => TfRef.attribute<String>(this, 'portal_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `trust_store_arn` attribute.
  TfRef<String> get trustStoreArn =>
      TfRef.attribute<String>(this, 'trust_store_arn');
}
