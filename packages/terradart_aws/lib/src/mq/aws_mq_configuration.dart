// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_mq_configuration`.
const Set<String> _awsMqConfigurationSensitive = <String>{};

/// Factory wrapper for `aws_mq_configuration`.
final class AwsMqConfiguration extends Resource {
  static const String tfType = 'aws_mq_configuration';

  AwsMqConfiguration({
    required super.localName,
    TfArg<String>? authenticationStrategy,
    required TfArg<String> data,
    TfArg<String>? description,
    required TfArg<String> engineType,
    required TfArg<String> engineVersion,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<bool>? skipDestroy,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (authenticationStrategy != null)
             'authentication_strategy': authenticationStrategy,
           'data': data,
           if (description != null) 'description': description,
           'engine_type': engineType,
           'engine_version': engineVersion,
           'name': name,
           if (region != null) 'region': region,
           if (skipDestroy != null) 'skip_destroy': skipDestroy,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMqConfigurationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `latest_revision` attribute.
  TfRef<num> get latestRevision =>
      TfRef.attribute<num>(this, 'latest_revision');
}
