// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../vpclattice/aws_vpclattice_service_network.dart';

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
           'region': ?region,
           'service_network_identifier': serviceNetworkIdentifier,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpclatticeServiceNetworkSensitive;

  /// A reference to the `aws_vpclattice_service_network` this data source reads, for
  /// arguments typed `RefTo<AwsVpclatticeServiceNetwork>`.
  RefTo<AwsVpclatticeServiceNetwork> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `service_network_identifier` attribute.
  TfRef<String> get serviceNetworkIdentifierRef =>
      TfRef.attribute<String>(this, 'service_network_identifier');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
