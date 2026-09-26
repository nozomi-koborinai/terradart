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
    if (downloadSpeed != null) 'download_speed': downloadSpeed!.toTfJson(),
    if (uploadSpeed != null) 'upload_speed': uploadSpeed!.toTfJson(),
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
           if (description != null) 'description': description,
           'global_network_id': globalNetworkId,
           if (providerName != null) 'provider_name': providerName,
           'site_id': siteId,
           if (tags != null) 'tags': tags,
           if (type != null) 'type': type,
           'bandwidth': TfArg.literal(bandwidth.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkmanagerLinkSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
