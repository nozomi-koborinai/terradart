// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_access_point`.
const Set<String> _awsS3AccessPointSensitive = <String>{};

/// Factory wrapper for `aws_s3_access_point`.
final class DataAwsS3AccessPoint extends Data {
  static const String tfType = 'aws_s3_access_point';

  DataAwsS3AccessPoint({
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
  Set<String> get sensitiveFields => _awsS3AccessPointSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `alias` attribute.
  TfRef<String> get alias => TfRef.attribute<String>(this, 'alias');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `bucket_account_id` attribute.
  TfRef<String> get bucketAccountId =>
      TfRef.attribute<String>(this, 'bucket_account_id');

  /// Reference to `data_source_id` attribute.
  TfRef<String> get dataSourceId =>
      TfRef.attribute<String>(this, 'data_source_id');

  /// Reference to `data_source_type` attribute.
  TfRef<String> get dataSourceType =>
      TfRef.attribute<String>(this, 'data_source_type');

  /// Reference to `endpoints` attribute.
  TfRef<Map<String, String>> get endpoints =>
      TfRef.attribute<Map<String, String>>(this, 'endpoints');

  /// Reference to `network_origin` attribute.
  TfRef<String> get networkOrigin =>
      TfRef.attribute<String>(this, 'network_origin');

  /// Reference to `public_access_block_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get publicAccessBlockConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'public_access_block_configuration',
      );

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vpc_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get vpcConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'vpc_configuration');
}
