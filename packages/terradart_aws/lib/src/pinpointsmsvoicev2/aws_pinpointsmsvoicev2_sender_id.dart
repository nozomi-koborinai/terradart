// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_pinpointsmsvoicev2_sender_id`.
const Set<String> _awsPinpointsmsvoicev2SenderIdSensitive = <String>{};

/// Pinpointsmsvoicev2 Sender Id Message enum for `message_types`.
enum Pinpointsmsvoicev2SenderIdMessageTypes implements TerraformEnum {
  transactional('TRANSACTIONAL'),
  promotional('PROMOTIONAL');

  const Pinpointsmsvoicev2SenderIdMessageTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_pinpointsmsvoicev2_sender_id`.
final class AwsPinpointsmsvoicev2SenderId extends Resource {
  static const String tfType = 'aws_pinpointsmsvoicev2_sender_id';

  AwsPinpointsmsvoicev2SenderId({
    required super.localName,
    TfArg<bool>? deletionProtectionEnabled,
    required TfArg<String> isoCountryCode,
    List<TfArg<Pinpointsmsvoicev2SenderIdMessageTypes>>? messageTypes,
    TfArg<String>? region,
    required TfArg<String> senderId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionProtectionEnabled != null)
             'deletion_protection_enabled': deletionProtectionEnabled,
           'iso_country_code': isoCountryCode,
           if (messageTypes != null)
             'message_types': TfArg.literal([
               for (final e in messageTypes) e.toTfJson(),
             ]),
           if (region != null) 'region': region,
           'sender_id': senderId,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPinpointsmsvoicev2SenderIdSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPinpointsmsvoicev2SenderId>`.
  RefTo<AwsPinpointsmsvoicev2SenderId> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `monthly_leasing_price` attribute.
  TfRef<String> get monthlyLeasingPrice =>
      TfRef.attribute<String>(this, 'monthly_leasing_price');

  /// Reference to `registered` attribute.
  TfRef<bool> get registered => TfRef.attribute<bool>(this, 'registered');

  /// Reference to `registration_id` attribute.
  TfRef<String> get registrationId =>
      TfRef.attribute<String>(this, 'registration_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
