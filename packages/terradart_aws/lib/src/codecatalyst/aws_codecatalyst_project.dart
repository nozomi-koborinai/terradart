// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codecatalyst_project`.
const Set<String> _awsCodecatalystProjectSensitive = <String>{};

/// Factory wrapper for `aws_codecatalyst_project`.
final class AwsCodecatalystProject extends Resource {
  static const String tfType = 'aws_codecatalyst_project';

  AwsCodecatalystProject({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> displayName,
    TfArg<String>? region,
    required TfArg<String> spaceName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'display_name': displayName,
           'region': ?region,
           'space_name': spaceName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodecatalystProjectSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCodecatalystProject>`.
  RefTo<AwsCodecatalystProject> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `space_name` attribute.
  TfRef<String> get spaceName => TfRef.attribute<String>(this, 'space_name');
}
