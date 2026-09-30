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
           'description': ?description,
           'kafka_versions': ?kafkaVersions,
           'name': name,
           'region': ?region,
           'server_properties': serverProperties,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMskConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMskConfiguration>`.
  RefTo<AwsMskConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `latest_revision` attribute.
  TfRef<num> get latestRevision =>
      TfRef.attribute<num>(this, 'latest_revision');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `kafka_versions` attribute.
  TfRef<List<String>> get kafkaVersionsRef =>
      TfRef.attribute<List<String>>(this, 'kafka_versions');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `server_properties` attribute.
  TfRef<String> get serverPropertiesRef =>
      TfRef.attribute<String>(this, 'server_properties');
}
