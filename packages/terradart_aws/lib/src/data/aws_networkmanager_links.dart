// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_links`.
const Set<String> _awsNetworkmanagerLinksSensitive = <String>{};

/// Factory wrapper for `aws_networkmanager_links`.
final class DataAwsNetworkmanagerLinks extends Data {
  static const String tfType = 'aws_networkmanager_links';

  DataAwsNetworkmanagerLinks({
    required super.localName,
    required TfArg<String> globalNetworkId,
    TfArg<String>? providerName,
    TfArg<String>? siteId,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? type,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'global_network_id': globalNetworkId,
           if (providerName != null) 'provider_name': providerName,
           if (siteId != null) 'site_id': siteId,
           if (tags != null) 'tags': tags,
           if (type != null) 'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkmanagerLinksSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ids` attribute.
  TfRef<List<String>> get ids => TfRef.attribute<List<String>>(this, 'ids');
}
