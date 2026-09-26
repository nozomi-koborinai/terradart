// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_synthetics_runtime_version`.
const Set<String> _awsSyntheticsRuntimeVersionSensitive = <String>{};

/// Factory wrapper for `aws_synthetics_runtime_version`.
final class DataAwsSyntheticsRuntimeVersion extends Data {
  static const String tfType = 'aws_synthetics_runtime_version';

  DataAwsSyntheticsRuntimeVersion({
    required super.localName,
    TfArg<bool>? latest,
    required TfArg<String> prefix,
    TfArg<String>? region,
    TfArg<String>? version,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (latest != null) 'latest': latest,
           'prefix': prefix,
           if (region != null) 'region': region,
           if (version != null) 'version': version,
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
}
