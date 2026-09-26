// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpclattice_service_network`.
const Set<String> _awsVpclatticeServiceNetworkSensitive = <String>{};

/// Factory wrapper for `aws_vpclattice_service_network`.
final class DataAwsVpclatticeServiceNetwork extends Data {
  static const String tfType = 'aws_vpclattice_service_network';

  DataAwsVpclatticeServiceNetwork({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> serviceNetworkIdentifier,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'service_network_identifier': serviceNetworkIdentifier,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpclatticeServiceNetworkSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `auth_type` attribute.
  TfRef<String> get authType => TfRef.attribute<String>(this, 'auth_type');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `last_updated_at` attribute.
  TfRef<String> get lastUpdatedAt =>
      TfRef.attribute<String>(this, 'last_updated_at');

  /// Reference to `number_of_associated_services` attribute.
  TfRef<num> get numberOfAssociatedServices =>
      TfRef.attribute<num>(this, 'number_of_associated_services');

  /// Reference to `number_of_associated_vpcs` attribute.
  TfRef<num> get numberOfAssociatedVpcs =>
      TfRef.attribute<num>(this, 'number_of_associated_vpcs');
}
