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
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsConnectPhoneNumberContactFlowAssociationSensitive;
}
