// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_link_association`.
const Set<String> _awsNetworkmanagerLinkAssociationSensitive = <String>{};

/// Factory wrapper for `aws_networkmanager_link_association`.
final class AwsNetworkmanagerLinkAssociation extends Resource {
  static const String tfType = 'aws_networkmanager_link_association';

  AwsNetworkmanagerLinkAssociation({
    required super.localName,
    required TfArg<String> deviceId,
    required TfArg<String> globalNetworkId,
    required TfArg<String> linkId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'device_id': deviceId,
           'global_network_id': globalNetworkId,
           'link_id': linkId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkmanagerLinkAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkmanagerLinkAssociation>`.
  RefTo<AwsNetworkmanagerLinkAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `device_id` attribute.
  TfRef<String> get deviceIdRef => TfRef.attribute<String>(this, 'device_id');

  /// Reference to `global_network_id` attribute.
  TfRef<String> get globalNetworkIdRef =>
      TfRef.attribute<String>(this, 'global_network_id');

  /// Reference to `link_id` attribute.
  TfRef<String> get linkIdRef => TfRef.attribute<String>(this, 'link_id');
}
