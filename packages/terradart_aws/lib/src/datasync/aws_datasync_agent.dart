// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datasync_agent`.
const Set<String> _awsDatasyncAgentSensitive = <String>{};

/// Factory wrapper for `aws_datasync_agent`.
final class AwsDatasyncAgent extends Resource {
  static const String tfType = 'aws_datasync_agent';

  AwsDatasyncAgent({
    required super.localName,
    TfArg<String>? activationKey,
    TfArg<String>? ipAddress,
    TfArg<String>? name,
    TfArg<String>? privateLinkEndpoint,
    TfArg<String>? region,
    TfArg<List<String>>? securityGroupArns,
    TfArg<List<String>>? subnetArns,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? vpcEndpointId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'activation_key': ?activationKey,
           'ip_address': ?ipAddress,
           'name': ?name,
           'private_link_endpoint': ?privateLinkEndpoint,
           'region': ?region,
           'security_group_arns': ?securityGroupArns,
           'subnet_arns': ?subnetArns,
           'tags': ?tags,
           'vpc_endpoint_id': ?vpcEndpointId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatasyncAgentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDatasyncAgent>`.
  RefTo<AwsDatasyncAgent> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `activation_key` attribute.
  TfRef<String> get activationKeyRef =>
      TfRef.attribute<String>(this, 'activation_key');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddressRef => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `private_link_endpoint` attribute.
  TfRef<String> get privateLinkEndpointRef =>
      TfRef.attribute<String>(this, 'private_link_endpoint');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_group_arns` attribute.
  TfRef<List<String>> get securityGroupArnsRef =>
      TfRef.attribute<List<String>>(this, 'security_group_arns');

  /// Reference to `subnet_arns` attribute.
  TfRef<List<String>> get subnetArnsRef =>
      TfRef.attribute<List<String>>(this, 'subnet_arns');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vpc_endpoint_id` attribute.
  TfRef<String> get vpcEndpointIdRef =>
      TfRef.attribute<String>(this, 'vpc_endpoint_id');
}
