// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appsync_type`.
const Set<String> _awsAppsyncTypeSensitive = <String>{};

/// Appsync Type enum for `format`.
enum AppsyncTypeFormat implements TerraformEnum {
  sdl('SDL'),
  json('JSON');

  const AppsyncTypeFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_appsync_type`.
final class AwsAppsyncType extends Resource {
  static const String tfType = 'aws_appsync_type';

  AwsAppsyncType(
    super.localName, {
    required TfArg<String> apiId,
    required TfArg<String> definition,
    required TfArg<AppsyncTypeFormat> format,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_id': apiId,
           'definition': definition,
           'format': format,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppsyncTypeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppsyncType>`.
  RefTo<AwsAppsyncType> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `api_id` attribute.
  TfRef<String> get apiId => TfRef.attribute<String>(this, 'api_id');

  /// Reference to `definition` attribute.
  TfRef<String> get definition => TfRef.attribute<String>(this, 'definition');

  /// Reference to `format` attribute.
  TfRef<String> get format => TfRef.attribute<String>(this, 'format');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
