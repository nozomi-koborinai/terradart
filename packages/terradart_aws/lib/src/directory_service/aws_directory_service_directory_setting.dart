// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_directory_service_directory_setting`.
const Set<String> _awsDirectoryServiceDirectorySettingSensitive = <String>{};

/// Factory wrapper for `aws_directory_service_directory_setting`.
final class AwsDirectoryServiceDirectorySetting extends Resource {
  static const String tfType = 'aws_directory_service_directory_setting';

  AwsDirectoryServiceDirectorySetting(
    super.localName, {
    required TfArg<String> directoryId,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'directory_id': directoryId,
           'name': name,
           'region': ?region,
           'value': value,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDirectoryServiceDirectorySettingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDirectoryServiceDirectorySetting>`.
  RefTo<AwsDirectoryServiceDirectorySetting> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `directory_id` attribute.
  TfRef<String> get directoryId =>
      TfRef.attribute<String>(this, 'directory_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}
