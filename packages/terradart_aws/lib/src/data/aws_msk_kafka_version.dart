// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_msk_kafka_version`.
const Set<String> _awsMskKafkaVersionSensitive = <String>{};

/// Factory wrapper for `aws_msk_kafka_version`.
final class DataAwsMskKafkaVersion extends Data {
  static const String tfType = 'aws_msk_kafka_version';

  DataAwsMskKafkaVersion({
    required super.localName,
    TfArg<List<String>>? preferredVersions,
    TfArg<String>? region,
    TfArg<String>? version,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'preferred_versions': ?preferredVersions,
           'region': ?region,
           'version': ?version,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMskKafkaVersionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `preferred_versions` attribute.
  TfRef<List<String>> get preferredVersions =>
      TfRef.attribute<List<String>>(this, 'preferred_versions');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
