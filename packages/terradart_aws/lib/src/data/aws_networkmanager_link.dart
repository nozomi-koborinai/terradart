// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_link`.
const Set<String> _awsNetworkmanagerLinkSensitive = <String>{};

/// Factory wrapper for `aws_networkmanager_link`.
final class DataAwsNetworkmanagerLink extends Data {
  static const String tfType = 'aws_networkmanager_link';

  DataAwsNetworkmanagerLink({
    required super.localName,
    required TfArg<String> globalNetworkId,
    required TfArg<String> linkId,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'global_network_id': globalNetworkId,
           'link_id': linkId,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkmanagerLinkSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `bandwidth` attribute.
  TfRef<List<Map<String, Object?>>> get bandwidth =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'bandwidth');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `provider_name` attribute.
  TfRef<String> get providerName =>
      TfRef.attribute<String>(this, 'provider_name');

  /// Reference to `site_id` attribute.
  TfRef<String> get siteId => TfRef.attribute<String>(this, 'site_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
