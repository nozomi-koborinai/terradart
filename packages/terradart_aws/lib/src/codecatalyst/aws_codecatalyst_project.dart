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
           if (description != null) 'description': description,
           'display_name': displayName,
           if (region != null) 'region': region,
           'space_name': spaceName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodecatalystProjectSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
