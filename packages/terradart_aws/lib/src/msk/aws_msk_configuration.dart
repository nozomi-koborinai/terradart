// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_msk_configuration`.
const Set<String> _awsMskConfigurationSensitive = <String>{};

/// Factory wrapper for `aws_msk_configuration`.
final class AwsMskConfiguration extends Resource {
  static const String tfType = 'aws_msk_configuration';

  AwsMskConfiguration({
    required super.localName,
    TfArg<String>? description,
    TfArg<List<String>>? kafkaVersions,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> serverProperties,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (kafkaVersions != null) 'kafka_versions': kafkaVersions,
           'name': name,
           if (region != null) 'region': region,
           'server_properties': serverProperties,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMskConfigurationSensitive;

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
