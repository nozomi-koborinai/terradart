// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_synthetics_runtime_version`.
const Set<String> _awsSyntheticsRuntimeVersionSensitive = <String>{};

/// Factory wrapper for `aws_synthetics_runtime_version`.
final class DataAwsSyntheticsRuntimeVersion extends Data {
  static const String tfType = 'aws_synthetics_runtime_version';

  DataAwsSyntheticsRuntimeVersion(
    super.localName, {
    TfArg<bool>? latest,
    required TfArg<String> prefix,
    TfArg<String>? region,
    TfArg<String>? version,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'latest': ?latest,
           'prefix': prefix,
           'region': ?region,
           'version': ?version,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSyntheticsRuntimeVersionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deprecation_date` attribute.
  TfRef<String> get deprecationDate =>
      TfRef.attribute<String>(this, 'deprecation_date');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `release_date` attribute.
  TfRef<String> get releaseDate =>
      TfRef.attribute<String>(this, 'release_date');

  /// Reference to `version_name` attribute.
  TfRef<String> get versionName =>
      TfRef.attribute<String>(this, 'version_name');

  /// Reference to `latest` attribute.
  TfRef<bool> get latest => TfRef.attribute<bool>(this, 'latest');

  /// Reference to `prefix` attribute.
  TfRef<String> get prefix => TfRef.attribute<String>(this, 'prefix');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
