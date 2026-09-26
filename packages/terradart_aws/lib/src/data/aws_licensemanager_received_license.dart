// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_licensemanager_received_license`.
const Set<String> _awsLicensemanagerReceivedLicenseSensitive = <String>{};

/// Factory wrapper for `aws_licensemanager_received_license`.
final class DataAwsLicensemanagerReceivedLicense extends Data {
  static const String tfType = 'aws_licensemanager_received_license';

  DataAwsLicensemanagerReceivedLicense({
    required super.localName,
    required TfArg<String> licenseArn,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'license_arn': licenseArn,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLicensemanagerReceivedLicenseSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `beneficiary` attribute.
  TfRef<String> get beneficiary => TfRef.attribute<String>(this, 'beneficiary');

  /// Reference to `consumption_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get consumptionConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'consumption_configuration',
      );

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `entitlements` attribute.
  TfRef<List<Map<String, Object?>>> get entitlements =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'entitlements');

  /// Reference to `home_region` attribute.
  TfRef<String> get homeRegion => TfRef.attribute<String>(this, 'home_region');

  /// Reference to `issuer` attribute.
  TfRef<List<Map<String, Object?>>> get issuer =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'issuer');

  /// Reference to `license_metadata` attribute.
  TfRef<List<Map<String, Object?>>> get licenseMetadata =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'license_metadata');

  /// Reference to `license_name` attribute.
  TfRef<String> get licenseName =>
      TfRef.attribute<String>(this, 'license_name');

  /// Reference to `product_name` attribute.
  TfRef<String> get productName =>
      TfRef.attribute<String>(this, 'product_name');

  /// Reference to `product_sku` attribute.
  TfRef<String> get productSku => TfRef.attribute<String>(this, 'product_sku');

  /// Reference to `received_metadata` attribute.
  TfRef<List<Map<String, Object?>>> get receivedMetadata =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'received_metadata');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `validity` attribute.
  TfRef<List<Map<String, Object?>>> get validity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'validity');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
