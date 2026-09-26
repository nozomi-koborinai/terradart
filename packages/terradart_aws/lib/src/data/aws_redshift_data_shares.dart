// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_data_shares`.
const Set<String> _awsRedshiftDataSharesSensitive = <String>{};

/// Factory wrapper for `aws_redshift_data_shares`.
final class DataAwsRedshiftDataShares extends Data {
  static const String tfType = 'aws_redshift_data_shares';

  DataAwsRedshiftDataShares({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftDataSharesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `data_shares` attribute.
  TfRef<List<Map<String, Object?>>> get dataShares =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'data_shares');
}
