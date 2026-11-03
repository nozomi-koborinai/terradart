// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_hub_content`.
const Set<String> _awsSagemakerHubContentSensitive = <String>{};

/// Factory wrapper for `aws_sagemaker_hub_content`.
final class DataAwsSagemakerHubContent extends Data {
  static const String tfType = 'aws_sagemaker_hub_content';

  DataAwsSagemakerHubContent(
    super.localName, {
    required TfArg<String> hubContentName,
    required TfArg<String> hubContentType,
    TfArg<String>? hubContentVersion,
    required TfArg<String> hubName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hub_content_name': hubContentName,
           'hub_content_type': hubContentType,
           'hub_content_version': ?hubContentVersion,
           'hub_name': hubName,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerHubContentSensitive;

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `document_schema_version` attribute.
  TfRef<String> get documentSchemaVersion =>
      TfRef.attribute<String>(this, 'document_schema_version');

  /// Reference to `failure_reason` attribute.
  TfRef<String> get failureReason =>
      TfRef.attribute<String>(this, 'failure_reason');

  /// Reference to `hub_arn` attribute.
  TfRef<String> get hubArn => TfRef.attribute<String>(this, 'hub_arn');

  /// Reference to `hub_content_arn` attribute.
  TfRef<String> get hubContentArn =>
      TfRef.attribute<String>(this, 'hub_content_arn');

  /// Reference to `hub_content_dependency` attribute.
  TfRef<List<Map<String, Object?>>> get hubContentDependency =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'hub_content_dependency',
      );

  /// Reference to `hub_content_description` attribute.
  TfRef<String> get hubContentDescription =>
      TfRef.attribute<String>(this, 'hub_content_description');

  /// Reference to `hub_content_display_name` attribute.
  TfRef<String> get hubContentDisplayName =>
      TfRef.attribute<String>(this, 'hub_content_display_name');

  /// Reference to `hub_content_document` attribute.
  TfRef<String> get hubContentDocument =>
      TfRef.attribute<String>(this, 'hub_content_document');

  /// Reference to `hub_content_markdown` attribute.
  TfRef<String> get hubContentMarkdown =>
      TfRef.attribute<String>(this, 'hub_content_markdown');

  /// Reference to `hub_content_search_keywords` attribute.
  TfRef<List<String>> get hubContentSearchKeywords =>
      TfRef.attribute<List<String>>(this, 'hub_content_search_keywords');

  /// Reference to `hub_content_status` attribute.
  TfRef<String> get hubContentStatus =>
      TfRef.attribute<String>(this, 'hub_content_status');

  /// Reference to `last_modified_time` attribute.
  TfRef<String> get lastModifiedTime =>
      TfRef.attribute<String>(this, 'last_modified_time');

  /// Reference to `reference_min_version` attribute.
  TfRef<String> get referenceMinVersion =>
      TfRef.attribute<String>(this, 'reference_min_version');

  /// Reference to `sagemaker_public_hub_content_arn` attribute.
  TfRef<String> get sagemakerPublicHubContentArn =>
      TfRef.attribute<String>(this, 'sagemaker_public_hub_content_arn');

  /// Reference to `support_status` attribute.
  TfRef<String> get supportStatus =>
      TfRef.attribute<String>(this, 'support_status');

  /// Reference to `versioned_hub_content_arn` attribute.
  TfRef<String> get versionedHubContentArn =>
      TfRef.attribute<String>(this, 'versioned_hub_content_arn');

  /// Reference to `hub_content_name` attribute.
  TfRef<String> get hubContentName =>
      TfRef.attribute<String>(this, 'hub_content_name');

  /// Reference to `hub_content_type` attribute.
  TfRef<String> get hubContentType =>
      TfRef.attribute<String>(this, 'hub_content_type');

  /// Reference to `hub_content_version` attribute.
  TfRef<String> get hubContentVersion =>
      TfRef.attribute<String>(this, 'hub_content_version');

  /// Reference to `hub_name` attribute.
  TfRef<String> get hubName => TfRef.attribute<String>(this, 'hub_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
