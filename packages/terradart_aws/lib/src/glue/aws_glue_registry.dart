// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_registry`.
const Set<String> _awsGlueRegistrySensitive = <String>{};

/// Factory wrapper for `aws_glue_registry`.
final class AwsGlueRegistry extends Resource {
  static const String tfType = 'aws_glue_registry';

  AwsGlueRegistry({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? region,
    required TfArg<String> registryName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (region != null) 'region': region,
           'registry_name': registryName,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlueRegistrySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
