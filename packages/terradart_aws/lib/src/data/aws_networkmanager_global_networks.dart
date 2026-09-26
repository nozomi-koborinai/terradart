// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_global_networks`.
const Set<String> _awsNetworkmanagerGlobalNetworksSensitive = <String>{};

/// Factory wrapper for `aws_networkmanager_global_networks`.
final class DataAwsNetworkmanagerGlobalNetworks extends Data {
  static const String tfType = 'aws_networkmanager_global_networks';

  DataAwsNetworkmanagerGlobalNetworks({
    required super.localName,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {if (tags != null) 'tags': tags});

  @override
  Set<String> get sensitiveFields => _awsNetworkmanagerGlobalNetworksSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ids` attribute.
  TfRef<List<String>> get ids => TfRef.attribute<List<String>>(this, 'ids');
}
