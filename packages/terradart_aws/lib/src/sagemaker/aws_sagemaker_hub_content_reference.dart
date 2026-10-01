// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_hub_content_reference`.
const Set<String> _awsSagemakerHubContentReferenceSensitive = <String>{};

/// Factory wrapper for `aws_sagemaker_hub_content_reference`.
final class AwsSagemakerHubContentReference extends Resource {
  static const String tfType = 'aws_sagemaker_hub_content_reference';

  AwsSagemakerHubContentReference(
    super.localName, {
    required TfArg<String> hubContentName,
    required TfArg<String> hubName,
    TfArg<String>? minVersion,
    TfArg<String>? region,
    required TfArg<String> sagemakerPublicHubContentArn,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hub_content_name': hubContentName,
           'hub_name': hubName,
           'min_version': ?minVersion,
           'region': ?region,
           'sagemaker_public_hub_content_arn': sagemakerPublicHubContentArn,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerHubContentReferenceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerHubContentReference>`.
  RefTo<AwsSagemakerHubContentReference> get ref => RefTo.of(this);

  /// Reference to `hub_arn` attribute.
  TfRef<String> get hubArn => TfRef.attribute<String>(this, 'hub_arn');

  /// Reference to `hub_content_arn` attribute.
  TfRef<String> get hubContentArn =>
      TfRef.attribute<String>(this, 'hub_content_arn');

  /// Reference to `hub_content_status` attribute.
  TfRef<String> get hubContentStatus =>
      TfRef.attribute<String>(this, 'hub_content_status');

  /// Reference to `hub_content_version` attribute.
  TfRef<String> get hubContentVersion =>
      TfRef.attribute<String>(this, 'hub_content_version');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `hub_content_name` attribute.
  TfRef<String> get hubContentName =>
      TfRef.attribute<String>(this, 'hub_content_name');

  /// Reference to `hub_name` attribute.
  TfRef<String> get hubName => TfRef.attribute<String>(this, 'hub_name');

  /// Reference to `min_version` attribute.
  TfRef<String> get minVersion => TfRef.attribute<String>(this, 'min_version');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `sagemaker_public_hub_content_arn` attribute.
  TfRef<String> get sagemakerPublicHubContentArn =>
      TfRef.attribute<String>(this, 'sagemaker_public_hub_content_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
