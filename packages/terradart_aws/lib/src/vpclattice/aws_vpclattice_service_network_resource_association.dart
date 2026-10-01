// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpclattice_service_network_resource_association`.
const Set<String> _awsVpclatticeServiceNetworkResourceAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_vpclattice_service_network_resource_association`.
final class AwsVpclatticeServiceNetworkResourceAssociation extends Resource {
  static const String tfType =
      'aws_vpclattice_service_network_resource_association';

  AwsVpclatticeServiceNetworkResourceAssociation(
    super.localName, {
    TfArg<bool>? privateDnsEnabled,
    TfArg<String>? region,
    required TfArg<String> resourceConfigurationIdentifier,
    required TfArg<String> serviceNetworkIdentifier,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'private_dns_enabled': ?privateDnsEnabled,
           'region': ?region,
           'resource_configuration_identifier': resourceConfigurationIdentifier,
           'service_network_identifier': serviceNetworkIdentifier,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVpclatticeServiceNetworkResourceAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpclatticeServiceNetworkResourceAssociation>`.
  RefTo<AwsVpclatticeServiceNetworkResourceAssociation> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `dns_entry` attribute.
  TfRef<List<Map<String, Object?>>> get dnsEntry =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'dns_entry');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `private_dns_enabled` attribute.
  TfRef<bool> get privateDnsEnabled =>
      TfRef.attribute<bool>(this, 'private_dns_enabled');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_configuration_identifier` attribute.
  TfRef<String> get resourceConfigurationIdentifier =>
      TfRef.attribute<String>(this, 'resource_configuration_identifier');

  /// Reference to `service_network_identifier` attribute.
  TfRef<String> get serviceNetworkIdentifier =>
      TfRef.attribute<String>(this, 'service_network_identifier');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
