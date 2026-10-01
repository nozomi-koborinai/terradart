// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_codeconnections_host`.
const Set<String> _awsCodeconnectionsHostSensitive = <String>{};

/// Codeconnections Host Provider enum for `provider_type`.
enum CodeconnectionsHostProviderType implements TerraformEnum {
  bitbucket('Bitbucket'),
  github('GitHub'),
  githubenterpriseserver('GitHubEnterpriseServer'),
  gitlab('GitLab'),
  gitlabselfmanaged('GitLabSelfManaged'),
  azuredevops('AzureDevOps');

  const CodeconnectionsHostProviderType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `vpc_configuration` block of
/// `aws_codeconnections_host` (derived from provider schema).
@immutable
final class CodeconnectionsHostVpcConfiguration {
  const CodeconnectionsHostVpcConfiguration({
    required this.securityGroupIds,
    required this.subnetIds,
    this.tlsCertificate,
    required this.vpcId,
  });

  final TfArg<List<RefTo<AwsSecurityGroup>>> securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnetIds;

  final TfArg<String>? tlsCertificate;

  final RefTo<AwsVpc> vpcId;

  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.encodeAs('id').toTfJson(),
    'subnet_ids': subnetIds.encodeAs('id').toTfJson(),
    'tls_certificate': ?tlsCertificate?.toTfJson(),
    'vpc_id': vpcId.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_codeconnections_host`.
final class AwsCodeconnectionsHost extends Resource {
  static const String tfType = 'aws_codeconnections_host';

  AwsCodeconnectionsHost(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> providerEndpoint,
    required TfArg<CodeconnectionsHostProviderType> providerType,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<CodeconnectionsHostVpcConfiguration>? vpcConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'provider_endpoint': providerEndpoint,
           'provider_type': providerType,
           'region': ?region,
           'tags': ?tags,
           if (vpcConfiguration != null)
             'vpc_configuration': TfArg.literal([
               for (final e in vpcConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodeconnectionsHostSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCodeconnectionsHost>`.
  RefTo<AwsCodeconnectionsHost> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `provider_endpoint` attribute.
  TfRef<String> get providerEndpoint =>
      TfRef.attribute<String>(this, 'provider_endpoint');

  /// Reference to `provider_type` attribute.
  TfRef<String> get providerType =>
      TfRef.attribute<String>(this, 'provider_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
