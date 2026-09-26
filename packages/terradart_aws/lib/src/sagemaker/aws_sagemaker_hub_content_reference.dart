// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_hub_content_reference`.
const Set<String> _awsSagemakerHubContentReferenceSensitive = <String>{};

/// Factory wrapper for `aws_sagemaker_hub_content_reference`.
final class AwsSagemakerHubContentReference extends Resource {
  static const String tfType = 'aws_sagemaker_hub_content_reference';

  AwsSagemakerHubContentReference({
    required super.localName,
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
           if (minVersion != null) 'min_version': minVersion,
           if (region != null) 'region': region,
           'sagemaker_public_hub_content_arn': sagemakerPublicHubContentArn,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerHubContentReferenceSensitive;

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
}
