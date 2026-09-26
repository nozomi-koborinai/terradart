// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_account_region`.
const Set<String> _awsAccountRegionSensitive = <String>{};

/// Factory wrapper for `aws_account_region`.
final class AwsAccountRegion extends Resource {
  static const String tfType = 'aws_account_region';

  AwsAccountRegion({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<bool> enabled,
    required TfArg<String> regionName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'enabled': enabled,
           'region_name': regionName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAccountRegionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `opt_status` attribute.
  TfRef<String> get optStatus => TfRef.attribute<String>(this, 'opt_status');
}
