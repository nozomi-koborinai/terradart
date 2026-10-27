// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatchomni_access_profile`.
const Set<String> _awsCloudwatchomniAccessProfileSensitive = <String>{};

/// Factory wrapper for `aws_cloudwatchomni_access_profile`.
final class AwsCloudwatchomniAccessProfile extends Resource {
  static const String tfType = 'aws_cloudwatchomni_access_profile';

  AwsCloudwatchomniAccessProfile(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> spaceId,
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
           'space_id': spaceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchomniAccessProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchomniAccessProfile>`.
  RefTo<AwsCloudwatchomniAccessProfile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `assume_status` attribute.
  TfRef<String> get assumeStatus =>
      TfRef.attribute<String>(this, 'assume_status');

  /// Reference to `profile_id` attribute.
  TfRef<String> get profileId => TfRef.attribute<String>(this, 'profile_id');

  /// Reference to `profile_type` attribute.
  TfRef<String> get profileType =>
      TfRef.attribute<String>(this, 'profile_type');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `space_id` attribute.
  TfRef<String> get spaceId => TfRef.attribute<String>(this, 'space_id');
}
