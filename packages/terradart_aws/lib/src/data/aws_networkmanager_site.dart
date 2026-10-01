// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../networkmanager/aws_networkmanager_site.dart';

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
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkmanagerSiteSensitive;

  /// A reference to the `aws_networkmanager_site` this data source reads, for
  /// arguments typed `RefTo<AwsNetworkmanagerSite>`.
  RefTo<AwsNetworkmanagerSite> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location` attribute.
  TfRef<List<Map<String, Object?>>> get location =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'location');

  /// Reference to `global_network_id` attribute.
  TfRef<String> get globalNetworkId =>
      TfRef.attribute<String>(this, 'global_network_id');

  /// Reference to `site_id` attribute.
  TfRef<String> get siteId => TfRef.attribute<String>(this, 'site_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
