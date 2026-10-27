// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatchomni_view`.
const Set<String> _awsCloudwatchomniViewSensitive = <String>{};

/// Factory wrapper for `aws_cloudwatchomni_view`.
final class AwsCloudwatchomniView extends Resource {
  static const String tfType = 'aws_cloudwatchomni_view';

  AwsCloudwatchomniView(
    super.localName, {
    required TfArg<String> definition,
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
           'definition': definition,
           'description': ?description,
           'name': name,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchomniViewSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchomniView>`.
  RefTo<AwsCloudwatchomniView> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `definition` attribute.
  TfRef<String> get definition => TfRef.attribute<String>(this, 'definition');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
