// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_pinpointsmsvoicev2_phone_number`.
const Set<String> _awsPinpointsmsvoicev2PhoneNumberSensitive = <String>{};

/// Pinpointsmsvoicev2 Phone Number Message enum for `message_type`.
enum Pinpointsmsvoicev2PhoneNumberMessageType implements TerraformEnum {
  transactional('TRANSACTIONAL'),
  promotional('PROMOTIONAL');

  const Pinpointsmsvoicev2PhoneNumberMessageType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Pinpointsmsvoicev2 Phone Number Number enum for `number_capabilities`.
enum Pinpointsmsvoicev2PhoneNumberNumberCapabilities implements TerraformEnum {
  sms('SMS'),
  voice('VOICE'),
  mms('MMS'),
  rcs('RCS');

  const Pinpointsmsvoicev2PhoneNumberNumberCapabilities(this.terraformValue);
  @override
  final String terraformValue;
}

/// Pinpointsmsvoicev2 Phone Number Number enum for `number_type`.
enum Pinpointsmsvoicev2PhoneNumberNumberType implements TerraformEnum {
  longCode('LONG_CODE'),
  tollFree('TOLL_FREE'),
  tenDlc('TEN_DLC'),
  simulator('SIMULATOR');

  const Pinpointsmsvoicev2PhoneNumberNumberType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_pinpointsmsvoicev2_phone_number`.
final class AwsPinpointsmsvoicev2PhoneNumber extends Resource {
  static const String tfType = 'aws_pinpointsmsvoicev2_phone_number';

  AwsPinpointsmsvoicev2PhoneNumber({
    required super.localName,
    TfArg<bool>? deletionProtectionEnabled,
    TfArg<bool>? forceDisassociate,
    required TfArg<String> isoCountryCode,
    required TfArg<Pinpointsmsvoicev2PhoneNumberMessageType> messageType,
    required List<TfArg<Pinpointsmsvoicev2PhoneNumberNumberCapabilities>>
    numberCapabilities,
    required TfArg<Pinpointsmsvoicev2PhoneNumberNumberType> numberType,
    TfArg<String>? optOutListName,
    TfArg<String>? region,
    TfArg<String>? registrationId,
    TfArg<bool>? selfManagedOptOutsEnabled,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? twoWayChannelArn,
    TfArg<bool>? twoWayChannelEnabled,
    TfArg<String>? twoWayChannelRole,
    TfArg<bool>? waitForActive,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionProtectionEnabled != null)
             'deletion_protection_enabled': deletionProtectionEnabled,
           if (forceDisassociate != null)
             'force_disassociate': forceDisassociate,
           'iso_country_code': isoCountryCode,
           'message_type': messageType,
           'number_capabilities': TfArg.literal([
             for (final e in numberCapabilities) e.toTfJson(),
           ]),
           'number_type': numberType,
           if (optOutListName != null) 'opt_out_list_name': optOutListName,
           if (region != null) 'region': region,
           if (registrationId != null) 'registration_id': registrationId,
           if (selfManagedOptOutsEnabled != null)
             'self_managed_opt_outs_enabled': selfManagedOptOutsEnabled,
           if (tags != null) 'tags': tags,
           if (twoWayChannelArn != null)
             'two_way_channel_arn': twoWayChannelArn,
           if (twoWayChannelEnabled != null)
             'two_way_channel_enabled': twoWayChannelEnabled,
           if (twoWayChannelRole != null)
             'two_way_channel_role': twoWayChannelRole,
           if (waitForActive != null) 'wait_for_active': waitForActive,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPinpointsmsvoicev2PhoneNumberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `monthly_leasing_price` attribute.
  TfRef<String> get monthlyLeasingPrice =>
      TfRef.attribute<String>(this, 'monthly_leasing_price');

  /// Reference to `phone_number` attribute.
  TfRef<String> get phoneNumber =>
      TfRef.attribute<String>(this, 'phone_number');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
