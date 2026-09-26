// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datazone_environment_blueprint`.
const Set<String> _awsDatazoneEnvironmentBlueprintSensitive = <String>{};

/// Factory wrapper for `aws_datazone_environment_blueprint`.
final class DataAwsDatazoneEnvironmentBlueprint extends Data {
  static const String tfType = 'aws_datazone_environment_blueprint';

  DataAwsDatazoneEnvironmentBlueprint({
    required super.localName,
    required TfArg<String> domainId,
    required TfArg<bool> managed,
    required TfArg<String> name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_id': domainId,
           'managed': managed,
           'name': name,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatazoneEnvironmentBlueprintSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `blueprint_provider` attribute.
  TfRef<String> get blueprintProvider =>
      TfRef.attribute<String>(this, 'blueprint_provider');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');
}
