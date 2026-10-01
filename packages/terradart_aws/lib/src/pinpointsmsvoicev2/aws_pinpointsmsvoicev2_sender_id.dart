// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_pinpointsmsvoicev2_sender_id`.
const Set<String> _awsPinpointsmsvoicev2SenderIdSensitive = <String>{};

/// Pinpointsmsvoicev2 Sender Id Message enum for `message_types`.
extension type const Pinpointsmsvoicev2SenderIdMessageTypes._(TfArg<String> _)
    implements TfArg<String> {
  Pinpointsmsvoicev2SenderIdMessageTypes.variable(String name)
    : this._(TfArg.variable(name));
  Pinpointsmsvoicev2SenderIdMessageTypes.expression(String template)
    : this._(TfArg.expression(template));
  const Pinpointsmsvoicev2SenderIdMessageTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const transactional = Pinpointsmsvoicev2SenderIdMessageTypes._(
    TfArgLiteral('TRANSACTIONAL'),
  );
  static const promotional = Pinpointsmsvoicev2SenderIdMessageTypes._(
    TfArgLiteral('PROMOTIONAL'),
  );

  static const List<Pinpointsmsvoicev2SenderIdMessageTypes> values = [
    transactional,
    promotional,
  ];
}

/// Factory wrapper for `aws_pinpointsmsvoicev2_sender_id`.
final class AwsPinpointsmsvoicev2SenderId extends Resource {
  static const String tfType = 'aws_pinpointsmsvoicev2_sender_id';

  AwsPinpointsmsvoicev2SenderId(
    super.localName, {
    TfArg<bool>? deletionProtectionEnabled,
    required TfArg<String> isoCountryCode,
    List<Pinpointsmsvoicev2SenderIdMessageTypes>? messageTypes,
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
           'deletion_protection_enabled': ?deletionProtectionEnabled,
           'iso_country_code': isoCountryCode,
           if (messageTypes != null)
             'message_types': TfArg.literal([
               for (final e in messageTypes) e.toTfJson(),
             ]),
           'region': ?region,
           'sender_id': senderId,
           'tags': ?tags,
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

  /// Reference to `deletion_protection_enabled` attribute.
  TfRef<bool> get deletionProtectionEnabled =>
      TfRef.attribute<bool>(this, 'deletion_protection_enabled');

  /// Reference to `iso_country_code` attribute.
  TfRef<String> get isoCountryCode =>
      TfRef.attribute<String>(this, 'iso_country_code');

  /// Reference to `message_types` attribute.
  TfRef<List<String>> get messageTypes =>
      TfRef.attribute<List<String>>(this, 'message_types');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `sender_id` attribute.
  TfRef<String> get senderId => TfRef.attribute<String>(this, 'sender_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
