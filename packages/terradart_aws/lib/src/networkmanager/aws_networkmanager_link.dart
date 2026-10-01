// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_link`.
const Set<String> _awsNetworkmanagerLinkSensitive = <String>{};

/// Typed helper for the `bandwidth` block of
/// `aws_networkmanager_link` (derived from provider schema).
@immutable
final class NetworkmanagerLinkBandwidth {
  const NetworkmanagerLinkBandwidth({this.downloadSpeed, this.uploadSpeed});

  final TfArg<num>? downloadSpeed;

  final TfArg<num>? uploadSpeed;

  Map<String, Object?> encode() => {
    'download_speed': ?downloadSpeed?.toTfJson(),
    'upload_speed': ?uploadSpeed?.toTfJson(),
  };
}

/// Factory wrapper for `aws_networkmanager_link`.
final class AwsNetworkmanagerLink extends Resource {
  static const String tfType = 'aws_networkmanager_link';

  AwsNetworkmanagerLink({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> globalNetworkId,
    TfArg<String>? providerName,
    required TfArg<String> siteId,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? type,
    required NetworkmanagerLinkBandwidth bandwidth,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'global_network_id': globalNetworkId,
           'provider_name': ?providerName,
           'site_id': siteId,
           'tags': ?tags,
           'type': ?type,
           'bandwidth': TfArg.literal(bandwidth.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkmanagerLinkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkmanagerLink>`.
  RefTo<AwsNetworkmanagerLink> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `global_network_id` attribute.
  TfRef<String> get globalNetworkId =>
      TfRef.attribute<String>(this, 'global_network_id');

  /// Reference to `provider_name` attribute.
  TfRef<String> get providerName =>
      TfRef.attribute<String>(this, 'provider_name');

  /// Reference to `site_id` attribute.
  TfRef<String> get siteId => TfRef.attribute<String>(this, 'site_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
