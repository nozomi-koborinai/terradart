// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_site`.
const Set<String> _awsNetworkmanagerSiteSensitive = <String>{};

/// Typed helper for the `location` block of
/// `aws_networkmanager_site` (derived from provider schema).
@immutable
final class NetworkmanagerSiteLocation {
  const NetworkmanagerSiteLocation({
    this.address,
    this.latitude,
    this.longitude,
  });

  final TfArg<String>? address;

  final TfArg<String>? latitude;

  final TfArg<String>? longitude;

  Map<String, Object?> encode() => {
    if (address != null) 'address': address!.toTfJson(),
    if (latitude != null) 'latitude': latitude!.toTfJson(),
    if (longitude != null) 'longitude': longitude!.toTfJson(),
  };
}

/// Factory wrapper for `aws_networkmanager_site`.
final class AwsNetworkmanagerSite extends Resource {
  static const String tfType = 'aws_networkmanager_site';

  AwsNetworkmanagerSite({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> globalNetworkId,
    TfArg<Map<String, String>>? tags,
    NetworkmanagerSiteLocation? location,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'global_network_id': globalNetworkId,
           if (tags != null) 'tags': tags,
           if (location != null) 'location': TfArg.literal(location.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkmanagerSiteSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
