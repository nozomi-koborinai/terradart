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

  AwsVpclatticeServiceNetworkResourceAssociation({
    required super.localName,
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
           if (privateDnsEnabled != null)
             'private_dns_enabled': privateDnsEnabled,
           if (region != null) 'region': region,
           'resource_configuration_identifier': resourceConfigurationIdentifier,
           'service_network_identifier': serviceNetworkIdentifier,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVpclatticeServiceNetworkResourceAssociationSensitive;

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
}
