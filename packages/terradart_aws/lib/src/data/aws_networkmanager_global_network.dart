// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_global_network`.
const Set<String> _awsNetworkmanagerGlobalNetworkSensitive = <String>{};

/// Factory wrapper for `aws_networkmanager_global_network`.
final class DataAwsNetworkmanagerGlobalNetwork extends Data {
  static const String tfType = 'aws_networkmanager_global_network';

  DataAwsNetworkmanagerGlobalNetwork({
    required super.localName,
    required TfArg<String> globalNetworkId,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'global_network_id': globalNetworkId,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkmanagerGlobalNetworkSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');
}
