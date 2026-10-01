// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_phone_number_contact_flow_association`.
const Set<String> _awsConnectPhoneNumberContactFlowAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_connect_phone_number_contact_flow_association`.
final class AwsConnectPhoneNumberContactFlowAssociation extends Resource {
  static const String tfType =
      'aws_connect_phone_number_contact_flow_association';

  AwsConnectPhoneNumberContactFlowAssociation({
    required super.localName,
    required TfArg<String> contactFlowId,
    required TfArg<String> instanceId,
    required TfArg<String> phoneNumberId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'contact_flow_id': contactFlowId,
           'instance_id': instanceId,
           'phone_number_id': phoneNumberId,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsConnectPhoneNumberContactFlowAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConnectPhoneNumberContactFlowAssociation>`.
  RefTo<AwsConnectPhoneNumberContactFlowAssociation> get ref => RefTo.of(this);

  /// Reference to `contact_flow_id` attribute.
  TfRef<String> get contactFlowId =>
      TfRef.attribute<String>(this, 'contact_flow_id');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceId => TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `phone_number_id` attribute.
  TfRef<String> get phoneNumberId =>
      TfRef.attribute<String>(this, 'phone_number_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
