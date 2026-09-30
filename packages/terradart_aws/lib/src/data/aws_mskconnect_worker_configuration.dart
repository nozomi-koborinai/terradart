// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../mskconnect/aws_mskconnect_worker_configuration.dart';

/// Sensitive field paths for `aws_mskconnect_worker_configuration`.
const Set<String> _awsMskconnectWorkerConfigurationSensitive = <String>{};

/// Factory wrapper for `aws_mskconnect_worker_configuration`.
final class DataAwsMskconnectWorkerConfiguration extends Data {
  static const String tfType = 'aws_mskconnect_worker_configuration';

  DataAwsMskconnectWorkerConfiguration({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'region': ?region, 'tags': ?tags},
       );

  @override
  Set<String> get sensitiveFields => _awsMskconnectWorkerConfigurationSensitive;

  /// A reference to the `aws_mskconnect_worker_configuration` this data source reads, for
  /// arguments typed `RefTo<AwsMskconnectWorkerConfiguration>`.
  RefTo<AwsMskconnectWorkerConfiguration> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `latest_revision` attribute.
  TfRef<num> get latestRevision =>
      TfRef.attribute<num>(this, 'latest_revision');

  /// Reference to `properties_file_content` attribute.
  TfRef<String> get propertiesFileContent =>
      TfRef.attribute<String>(this, 'properties_file_content');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
