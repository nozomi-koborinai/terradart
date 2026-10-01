// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_mq_configuration`.
const Set<String> _awsMqConfigurationSensitive = <String>{};

/// Mq Configuration Authentication enum for `authentication_strategy`.
enum MqConfigurationAuthenticationStrategy implements TerraformEnum {
  simple('SIMPLE'),
  ldap('LDAP'),
  configManaged('CONFIG_MANAGED');

  const MqConfigurationAuthenticationStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Mq Configuration Engine enum for `engine_type`.
enum MqConfigurationEngineType implements TerraformEnum {
  activemq('ACTIVEMQ'),
  rabbitmq('RABBITMQ');

  const MqConfigurationEngineType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_mq_configuration`.
final class AwsMqConfiguration extends Resource {
  static const String tfType = 'aws_mq_configuration';

  AwsMqConfiguration({
    required super.localName,
    TfArg<MqConfigurationAuthenticationStrategy>? authenticationStrategy,
    required TfArg<String> data,
    TfArg<String>? description,
    required TfArg<MqConfigurationEngineType> engineType,
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
           'authentication_strategy': ?authenticationStrategy,
           'data': data,
           'description': ?description,
           'engine_type': engineType,
           'engine_version': engineVersion,
           'name': name,
           'region': ?region,
           'skip_destroy': ?skipDestroy,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMqConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMqConfiguration>`.
  RefTo<AwsMqConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `latest_revision` attribute.
  TfRef<num> get latestRevision =>
      TfRef.attribute<num>(this, 'latest_revision');

  /// Reference to `authentication_strategy` attribute.
  TfRef<String> get authenticationStrategy =>
      TfRef.attribute<String>(this, 'authentication_strategy');

  /// Reference to `data` attribute.
  TfRef<String> get data => TfRef.attribute<String>(this, 'data');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `engine_type` attribute.
  TfRef<String> get engineType => TfRef.attribute<String>(this, 'engine_type');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersion =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `skip_destroy` attribute.
  TfRef<bool> get skipDestroy => TfRef.attribute<bool>(this, 'skip_destroy');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
