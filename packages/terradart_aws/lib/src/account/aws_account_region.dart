// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_account_region`.
const Set<String> _awsAccountRegionSensitive = <String>{};

/// Factory wrapper for `aws_account_region`.
final class AwsAccountRegion extends Resource {
  static const String tfType = 'aws_account_region';

  AwsAccountRegion(
    super.localName, {
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
           'account_id': ?accountId,
           'enabled': enabled,
           'region_name': regionName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAccountRegionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAccountRegion>`.
  RefTo<AwsAccountRegion> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `opt_status` attribute.
  TfRef<String> get optStatus => TfRef.attribute<String>(this, 'opt_status');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `region_name` attribute.
  TfRef<String> get regionName => TfRef.attribute<String>(this, 'region_name');
}
