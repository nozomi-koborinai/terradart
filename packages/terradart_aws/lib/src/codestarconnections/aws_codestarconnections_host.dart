// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_codestarconnections_host`.
const Set<String> _awsCodestarconnectionsHostSensitive = <String>{};

/// Codestarconnections Host Provider enum for `provider_type`.
extension type const CodestarconnectionsHostProviderType._(TfArg<String> _)
    implements TfArg<String> {
  CodestarconnectionsHostProviderType.variable(String name)
    : this._(TfArg.variable(name));
  CodestarconnectionsHostProviderType.expression(String template)
    : this._(TfArg.expression(template));
  const CodestarconnectionsHostProviderType.arg(TfArg<String> arg)
    : this._(arg);

  static const bitbucket = CodestarconnectionsHostProviderType._(
    TfArgLiteral('Bitbucket'),
  );
  static const github = CodestarconnectionsHostProviderType._(
    TfArgLiteral('GitHub'),
  );
  static const githubenterpriseserver = CodestarconnectionsHostProviderType._(
    TfArgLiteral('GitHubEnterpriseServer'),
  );
  static const gitlab = CodestarconnectionsHostProviderType._(
    TfArgLiteral('GitLab'),
  );
  static const gitlabselfmanaged = CodestarconnectionsHostProviderType._(
    TfArgLiteral('GitLabSelfManaged'),
  );

  static const List<CodestarconnectionsHostProviderType> values = [
    bitbucket,
    github,
    githubenterpriseserver,
    gitlab,
    gitlabselfmanaged,
  ];
}

/// Typed helper for the `vpc_configuration` block of
/// `aws_codestarconnections_host` (derived from provider schema).
@immutable
final class CodestarconnectionsHostVpcConfiguration {
  const CodestarconnectionsHostVpcConfiguration({
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

/// Factory wrapper for `aws_codestarconnections_host`.
final class AwsCodestarconnectionsHost extends Resource {
  static const String tfType = 'aws_codestarconnections_host';

  AwsCodestarconnectionsHost(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> providerEndpoint,
    required CodestarconnectionsHostProviderType providerType,
    TfArg<String>? region,
    CodestarconnectionsHostVpcConfiguration? vpcConfiguration,
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
           if (vpcConfiguration != null)
             'vpc_configuration': TfArg.literal(vpcConfiguration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodestarconnectionsHostSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCodestarconnectionsHost>`.
  RefTo<AwsCodestarconnectionsHost> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `provider_endpoint` attribute.
  TfRef<String> get providerEndpoint =>
      TfRef.attribute<String>(this, 'provider_endpoint');

  /// Reference to `provider_type` attribute.
  TfRef<String> get providerType =>
      TfRef.attribute<String>(this, 'provider_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
