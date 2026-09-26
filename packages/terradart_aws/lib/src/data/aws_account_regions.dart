// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_account_regions`.
const Set<String> _awsAccountRegionsSensitive = <String>{};

/// Factory wrapper for `aws_account_regions`.
final class DataAwsAccountRegions extends Data {
  static const String tfType = 'aws_account_regions';

  DataAwsAccountRegions({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<List<String>>? regionOptStatusContains,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (regionOptStatusContains != null)
             'region_opt_status_contains': regionOptStatusContains,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAccountRegionsSensitive;

  /// Reference to `regions` attribute.
  TfRef<List<Map<String, Object?>>> get regions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'regions');
}
