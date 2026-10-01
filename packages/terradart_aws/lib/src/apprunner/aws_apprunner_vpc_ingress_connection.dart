// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_apprunner_vpc_ingress_connection`.
const Set<String> _awsApprunnerVpcIngressConnectionSensitive = <String>{};

/// Typed helper for the `ingress_vpc_configuration` block of
/// `aws_apprunner_vpc_ingress_connection` (derived from provider schema).
@immutable
final class ApprunnerVpcIngressConnectionIngressVpcConfiguration {
  const ApprunnerVpcIngressConnectionIngressVpcConfiguration({
    this.vpcEndpointId,
    this.vpcId,
  });

  final TfArg<String>? vpcEndpointId;

  final RefTo<AwsVpc>? vpcId;

  Map<String, Object?> encode() => {
    'vpc_endpoint_id': ?vpcEndpointId?.toTfJson(),
    'vpc_id': ?vpcId?.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_apprunner_vpc_ingress_connection`.
final class AwsApprunnerVpcIngressConnection extends Resource {
  static const String tfType = 'aws_apprunner_vpc_ingress_connection';

  AwsApprunnerVpcIngressConnection({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> serviceArn,
    TfArg<Map<String, String>>? tags,
    required ApprunnerVpcIngressConnectionIngressVpcConfiguration
    ingressVpcConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           'service_arn': serviceArn,
           'tags': ?tags,
           'ingress_vpc_configuration': TfArg.literal(
             ingressVpcConfiguration.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApprunnerVpcIngressConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApprunnerVpcIngressConnection>`.
  RefTo<AwsApprunnerVpcIngressConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `service_arn` attribute.
  TfRef<String> get serviceArn => TfRef.attribute<String>(this, 'service_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
