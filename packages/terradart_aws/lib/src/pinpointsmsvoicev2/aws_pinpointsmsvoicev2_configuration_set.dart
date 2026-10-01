// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_pinpointsmsvoicev2_configuration_set`.
const Set<String> _awsPinpointsmsvoicev2ConfigurationSetSensitive = <String>{};

/// Pinpointsmsvoicev2 Configuration Set Default Message enum for `default_message_type`.
extension type const Pinpointsmsvoicev2ConfigurationSetDefaultMessageType._(
  TfArg<String> _
) implements TfArg<String> {
  Pinpointsmsvoicev2ConfigurationSetDefaultMessageType.variable(String name)
    : this._(TfArg.variable(name));
  Pinpointsmsvoicev2ConfigurationSetDefaultMessageType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const Pinpointsmsvoicev2ConfigurationSetDefaultMessageType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const transactional =
      Pinpointsmsvoicev2ConfigurationSetDefaultMessageType._(
        TfArgLiteral('TRANSACTIONAL'),
      );
  static const promotional =
      Pinpointsmsvoicev2ConfigurationSetDefaultMessageType._(
        TfArgLiteral('PROMOTIONAL'),
      );

  static const List<Pinpointsmsvoicev2ConfigurationSetDefaultMessageType>
  values = [transactional, promotional];
}

/// Factory wrapper for `aws_pinpointsmsvoicev2_configuration_set`.
final class AwsPinpointsmsvoicev2ConfigurationSet extends Resource {
  static const String tfType = 'aws_pinpointsmsvoicev2_configuration_set';

  AwsPinpointsmsvoicev2ConfigurationSet(
    super.localName, {
    Pinpointsmsvoicev2ConfigurationSetDefaultMessageType? defaultMessageType,
    TfArg<String>? defaultSenderId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'default_message_type': ?defaultMessageType,
           'default_sender_id': ?defaultSenderId,
           'name': name,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsPinpointsmsvoicev2ConfigurationSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPinpointsmsvoicev2ConfigurationSet>`.
  RefTo<AwsPinpointsmsvoicev2ConfigurationSet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `default_message_type` attribute.
  TfRef<String> get defaultMessageType =>
      TfRef.attribute<String>(this, 'default_message_type');

  /// Reference to `default_sender_id` attribute.
  TfRef<String> get defaultSenderId =>
      TfRef.attribute<String>(this, 'default_sender_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
