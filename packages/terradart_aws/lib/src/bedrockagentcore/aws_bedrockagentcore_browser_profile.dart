// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagentcore_browser_profile`.
const Set<String> _awsBedrockagentcoreBrowserProfileSensitive = <String>{};

/// Factory wrapper for `aws_bedrockagentcore_browser_profile`.
final class AwsBedrockagentcoreBrowserProfile extends Resource {
  static const String tfType = 'aws_bedrockagentcore_browser_profile';

  AwsBedrockagentcoreBrowserProfile(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
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
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsBedrockagentcoreBrowserProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockagentcoreBrowserProfile>`.
  RefTo<AwsBedrockagentcoreBrowserProfile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `profile_arn` attribute.
  TfRef<String> get profileArn => TfRef.attribute<String>(this, 'profile_arn');

  /// Reference to `profile_id` attribute.
  TfRef<String> get profileId => TfRef.attribute<String>(this, 'profile_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
