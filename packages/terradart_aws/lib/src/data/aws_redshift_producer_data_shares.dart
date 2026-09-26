// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_producer_data_shares`.
const Set<String> _awsRedshiftProducerDataSharesSensitive = <String>{};

/// Factory wrapper for `aws_redshift_producer_data_shares`.
final class DataAwsRedshiftProducerDataShares extends Data {
  static const String tfType = 'aws_redshift_producer_data_shares';

  DataAwsRedshiftProducerDataShares({
    required super.localName,
    required TfArg<String> producerArn,
    TfArg<String>? region,
    TfArg<String>? status,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'producer_arn': producerArn,
           if (region != null) 'region': region,
           if (status != null) 'status': status,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftProducerDataSharesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `data_shares` attribute.
  TfRef<List<Map<String, Object?>>> get dataShares =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'data_shares');
}
