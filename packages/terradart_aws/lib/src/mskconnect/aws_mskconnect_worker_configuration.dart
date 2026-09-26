// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_mskconnect_worker_configuration`.
const Set<String> _awsMskconnectWorkerConfigurationSensitive = <String>{};

/// Factory wrapper for `aws_mskconnect_worker_configuration`.
final class AwsMskconnectWorkerConfiguration extends Resource {
  static const String tfType = 'aws_mskconnect_worker_configuration';

  AwsMskconnectWorkerConfiguration({
    required super.localName,
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
           if (description != null) 'description': description,
           'name': name,
           'properties_file_content': propertiesFileContent,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMskconnectWorkerConfigurationSensitive;

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
