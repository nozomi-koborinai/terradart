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
           'deletion_protection_enabled': ?deletionProtectionEnabled,
           'force_disassociate': ?forceDisassociate,
           'iso_country_code': isoCountryCode,
           'message_type': messageType,
           'number_capabilities': TfArg.literal([
             for (final e in numberCapabilities) e.toTfJson(),
           ]),
           'number_type': numberType,
           'opt_out_list_name': ?optOutListName,
           'region': ?region,
           'registration_id': ?registrationId,
           'self_managed_opt_outs_enabled': ?selfManagedOptOutsEnabled,
           'tags': ?tags,
           'two_way_channel_arn': ?twoWayChannelArn,
           'two_way_channel_enabled': ?twoWayChannelEnabled,
           'two_way_channel_role': ?twoWayChannelRole,
           'wait_for_active': ?waitForActive,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPinpointsmsvoicev2PhoneNumberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPinpointsmsvoicev2PhoneNumber>`.
  RefTo<AwsPinpointsmsvoicev2PhoneNumber> get ref => RefTo.of(this);

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

  /// Reference to `deletion_protection_enabled` attribute.
  TfRef<bool> get deletionProtectionEnabledRef =>
      TfRef.attribute<bool>(this, 'deletion_protection_enabled');

  /// Reference to `force_disassociate` attribute.
  TfRef<bool> get forceDisassociateRef =>
      TfRef.attribute<bool>(this, 'force_disassociate');

  /// Reference to `iso_country_code` attribute.
  TfRef<String> get isoCountryCodeRef =>
      TfRef.attribute<String>(this, 'iso_country_code');

  /// Reference to `message_type` attribute.
  TfRef<String> get messageTypeRef =>
      TfRef.attribute<String>(this, 'message_type');

  /// Reference to `number_capabilities` attribute.
  TfRef<List<String>> get numberCapabilitiesRef =>
      TfRef.attribute<List<String>>(this, 'number_capabilities');

  /// Reference to `number_type` attribute.
  TfRef<String> get numberTypeRef =>
      TfRef.attribute<String>(this, 'number_type');

  /// Reference to `opt_out_list_name` attribute.
  TfRef<String> get optOutListNameRef =>
      TfRef.attribute<String>(this, 'opt_out_list_name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `registration_id` attribute.
  TfRef<String> get registrationIdRef =>
      TfRef.attribute<String>(this, 'registration_id');

  /// Reference to `self_managed_opt_outs_enabled` attribute.
  TfRef<bool> get selfManagedOptOutsEnabledRef =>
      TfRef.attribute<bool>(this, 'self_managed_opt_outs_enabled');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `two_way_channel_arn` attribute.
  TfRef<String> get twoWayChannelArnRef =>
      TfRef.attribute<String>(this, 'two_way_channel_arn');

  /// Reference to `two_way_channel_enabled` attribute.
  TfRef<bool> get twoWayChannelEnabledRef =>
      TfRef.attribute<bool>(this, 'two_way_channel_enabled');

  /// Reference to `two_way_channel_role` attribute.
  TfRef<String> get twoWayChannelRoleRef =>
      TfRef.attribute<String>(this, 'two_way_channel_role');

  /// Reference to `wait_for_active` attribute.
  TfRef<bool> get waitForActiveRef =>
      TfRef.attribute<bool>(this, 'wait_for_active');
}
