// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_hub`.
const Set<String> _awsSagemakerHubSensitive = <String>{};

/// Typed helper for the `s3_storage_config` block of
/// `aws_sagemaker_hub` (derived from provider schema).
@immutable
final class SagemakerHubS3StorageConfig {
  const SagemakerHubS3StorageConfig({this.s3OutputPath});

  final TfArg<String>? s3OutputPath;

  @internal
  Map<String, Object?> encode() => {
    's3_output_path': ?s3OutputPath?.toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_hub`.
final class AwsSagemakerHub extends Resource {
  static const String tfType = 'aws_sagemaker_hub';

  AwsSagemakerHub(
    super.localName, {
    required TfArg<String> hubDescription,
    TfArg<String>? hubDisplayName,
    required TfArg<String> hubName,
    TfArg<List<String>>? hubSearchKeywords,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    SagemakerHubS3StorageConfig? s3StorageConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hub_description': hubDescription,
           'hub_display_name': ?hubDisplayName,
           'hub_name': hubName,
           'hub_search_keywords': ?hubSearchKeywords,
           'region': ?region,
           'tags': ?tags,
           if (s3StorageConfig != null)
             's3_storage_config': TfArg.literal(s3StorageConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerHubSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerHub>`.
  RefTo<AwsSagemakerHub> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `hub_description` attribute.
  TfRef<String> get hubDescription =>
      TfRef.attribute<String>(this, 'hub_description');

  /// Reference to `hub_display_name` attribute.
  TfRef<String> get hubDisplayName =>
      TfRef.attribute<String>(this, 'hub_display_name');

  /// Reference to `hub_name` attribute.
  TfRef<String> get hubName => TfRef.attribute<String>(this, 'hub_name');

  /// Reference to `hub_search_keywords` attribute.
  TfRef<List<String>> get hubSearchKeywords =>
      TfRef.attribute<List<String>>(this, 'hub_search_keywords');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
