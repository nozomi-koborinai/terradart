// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_pinpointsmsvoicev2_protect_configuration_association`.
const Set<String>
_awsPinpointsmsvoicev2ProtectConfigurationAssociationSensitive = <String>{};

/// Factory wrapper for `aws_pinpointsmsvoicev2_protect_configuration_association`.
final class AwsPinpointsmsvoicev2ProtectConfigurationAssociation
    extends Resource {
  static const String tfType =
      'aws_pinpointsmsvoicev2_protect_configuration_association';

  AwsPinpointsmsvoicev2ProtectConfigurationAssociation(
    super.localName, {
    required TfArg<String> configurationSetName,
    required TfArg<String> protectConfigurationId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'configuration_set_name': configurationSetName,
           'protect_configuration_id': protectConfigurationId,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsPinpointsmsvoicev2ProtectConfigurationAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPinpointsmsvoicev2ProtectConfigurationAssociation>`.
  RefTo<AwsPinpointsmsvoicev2ProtectConfigurationAssociation> get ref =>
      RefTo.of(this);

  /// Reference to `configuration_set_name` attribute.
  TfRef<String> get configurationSetName =>
      TfRef.attribute<String>(this, 'configuration_set_name');

  /// Reference to `protect_configuration_id` attribute.
  TfRef<String> get protectConfigurationId =>
      TfRef.attribute<String>(this, 'protect_configuration_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
