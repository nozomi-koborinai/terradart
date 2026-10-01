// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codecatalyst_source_repository`.
const Set<String> _awsCodecatalystSourceRepositorySensitive = <String>{};

/// Factory wrapper for `aws_codecatalyst_source_repository`.
final class AwsCodecatalystSourceRepository extends Resource {
  static const String tfType = 'aws_codecatalyst_source_repository';

  AwsCodecatalystSourceRepository(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<String> projectName,
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
           'name': name,
           'project_name': projectName,
           'region': ?region,
           'space_name': spaceName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodecatalystSourceRepositorySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCodecatalystSourceRepository>`.
  RefTo<AwsCodecatalystSourceRepository> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `project_name` attribute.
  TfRef<String> get projectName =>
      TfRef.attribute<String>(this, 'project_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `space_name` attribute.
  TfRef<String> get spaceName => TfRef.attribute<String>(this, 'space_name');
}
