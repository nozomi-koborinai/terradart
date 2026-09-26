// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_odb_networks`.
const Set<String> _awsOdbNetworksSensitive = <String>{};

/// Factory wrapper for `aws_odb_networks`.
final class DataAwsOdbNetworks extends Data {
  static const String tfType = 'aws_odb_networks';

  DataAwsOdbNetworks({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsOdbNetworksSensitive;

  /// Reference to `odb_networks` attribute.
  TfRef<List<Map<String, Object?>>> get odbNetworks =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'odb_networks');
}
