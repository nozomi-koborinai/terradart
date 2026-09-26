// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_site`.
const Set<String> _awsNetworkmanagerSiteSensitive = <String>{};

/// Factory wrapper for `aws_networkmanager_site`.
final class DataAwsNetworkmanagerSite extends Data {
  static const String tfType = 'aws_networkmanager_site';

  DataAwsNetworkmanagerSite({
    required super.localName,
    required TfArg<String> globalNetworkId,
    required TfArg<String> siteId,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'global_network_id': globalNetworkId,
           'site_id': siteId,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkmanagerSiteSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location` attribute.
  TfRef<List<Map<String, Object?>>> get location =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'location');
}
