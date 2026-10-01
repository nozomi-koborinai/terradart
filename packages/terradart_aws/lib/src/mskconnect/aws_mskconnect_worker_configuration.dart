// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_mskconnect_worker_configuration`.
const Set<String> _awsMskconnectWorkerConfigurationSensitive = <String>{};

/// Factory wrapper for `aws_mskconnect_worker_configuration`.
final class AwsMskconnectWorkerConfiguration extends Resource {
  static const String tfType = 'aws_mskconnect_worker_configuration';

  AwsMskconnectWorkerConfiguration(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<String> propertiesFileContent,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'properties_file_content': propertiesFileContent,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMskconnectWorkerConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMskconnectWorkerConfiguration>`.
  RefTo<AwsMskconnectWorkerConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `latest_revision` attribute.
  TfRef<num> get latestRevision =>
      TfRef.attribute<num>(this, 'latest_revision');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `properties_file_content` attribute.
  TfRef<String> get propertiesFileContent =>
      TfRef.attribute<String>(this, 'properties_file_content');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
