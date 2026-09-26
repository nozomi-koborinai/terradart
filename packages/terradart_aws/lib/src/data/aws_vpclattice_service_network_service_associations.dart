// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpclattice_service_network_service_associations`.
const Set<String> _awsVpclatticeServiceNetworkServiceAssociationsSensitive =
    <String>{};

/// Factory wrapper for `aws_vpclattice_service_network_service_associations`.
final class DataAwsVpclatticeServiceNetworkServiceAssociations extends Data {
  static const String tfType =
      'aws_vpclattice_service_network_service_associations';

  DataAwsVpclatticeServiceNetworkServiceAssociations({
    required super.localName,
    TfArg<String>? region,
    TfArg<String>? serviceIdentifier,
    TfArg<String>? serviceNetworkIdentifier,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (serviceIdentifier != null)
             'service_identifier': serviceIdentifier,
           if (serviceNetworkIdentifier != null)
             'service_network_identifier': serviceNetworkIdentifier,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVpclatticeServiceNetworkServiceAssociationsSensitive;

  /// Reference to `items` attribute.
  TfRef<List<Map<String, Object?>>> get items =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'items');
}
