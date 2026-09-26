// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3control_multi_region_access_point`.
const Set<String> _awsS3controlMultiRegionAccessPointSensitive = <String>{};

/// Factory wrapper for `aws_s3control_multi_region_access_point`.
final class DataAwsS3controlMultiRegionAccessPoint extends Data {
  static const String tfType = 'aws_s3control_multi_region_access_point';

  DataAwsS3controlMultiRegionAccessPoint({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'name': name,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3controlMultiRegionAccessPointSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `alias` attribute.
  TfRef<String> get alias => TfRef.attribute<String>(this, 'alias');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `public_access_block` attribute.
  TfRef<List<Map<String, Object?>>> get publicAccessBlock =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'public_access_block');

  /// Reference to `regions` attribute.
  TfRef<List<Map<String, Object?>>> get regions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'regions');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
