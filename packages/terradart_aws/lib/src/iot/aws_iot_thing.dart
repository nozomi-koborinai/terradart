// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iot_thing`.
const Set<String> _awsIotThingSensitive = <String>{};

/// Factory wrapper for `aws_iot_thing`.
final class AwsIotThing extends Resource {
  static const String tfType = 'aws_iot_thing';

  AwsIotThing({
    required super.localName,
    TfArg<Map<String, String>>? attributes,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? thingTypeName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (attributes != null) 'attributes': attributes,
           'name': name,
           if (region != null) 'region': region,
           if (thingTypeName != null) 'thing_type_name': thingTypeName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIotThingSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `default_client_id` attribute.
  TfRef<String> get defaultClientId =>
      TfRef.attribute<String>(this, 'default_client_id');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');
}
