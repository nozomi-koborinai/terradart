// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_pinpointsmsvoicev2_configuration_set`.
const Set<String> _awsPinpointsmsvoicev2ConfigurationSetSensitive = <String>{};

/// Factory wrapper for `aws_pinpointsmsvoicev2_configuration_set`.
final class AwsPinpointsmsvoicev2ConfigurationSet extends Resource {
  static const String tfType = 'aws_pinpointsmsvoicev2_configuration_set';

  AwsPinpointsmsvoicev2ConfigurationSet({
    required super.localName,
    TfArg<String>? defaultMessageType,
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
           if (defaultMessageType != null)
             'default_message_type': defaultMessageType,
           if (defaultSenderId != null) 'default_sender_id': defaultSenderId,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsPinpointsmsvoicev2ConfigurationSetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
