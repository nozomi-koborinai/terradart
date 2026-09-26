// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<String>? vpcId;

  Map<String, Object?> encode() => {
    if (vpcEndpointId != null) 'vpc_endpoint_id': vpcEndpointId!.toTfJson(),
    if (vpcId != null) 'vpc_id': vpcId!.toTfJson(),
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
           if (region != null) 'region': region,
           'service_arn': serviceArn,
           if (tags != null) 'tags': tags,
           'ingress_vpc_configuration': TfArg.literal(
             ingressVpcConfiguration.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApprunnerVpcIngressConnectionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
