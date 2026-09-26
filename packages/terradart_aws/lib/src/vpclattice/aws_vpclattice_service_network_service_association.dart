// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpclattice_service_network_service_association`.
const Set<String> _awsVpclatticeServiceNetworkServiceAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_vpclattice_service_network_service_association`.
final class AwsVpclatticeServiceNetworkServiceAssociation extends Resource {
  static const String tfType =
      'aws_vpclattice_service_network_service_association';

  AwsVpclatticeServiceNetworkServiceAssociation({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> serviceIdentifier,
    required TfArg<String> serviceNetworkIdentifier,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'service_identifier': serviceIdentifier,
           'service_network_identifier': serviceNetworkIdentifier,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVpclatticeServiceNetworkServiceAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_by` attribute.
  TfRef<String> get createdBy => TfRef.attribute<String>(this, 'created_by');

  /// Reference to `custom_domain_name` attribute.
  TfRef<String> get customDomainName =>
      TfRef.attribute<String>(this, 'custom_domain_name');

  /// Reference to `dns_entry` attribute.
  TfRef<List<Map<String, Object?>>> get dnsEntry =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'dns_entry');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
