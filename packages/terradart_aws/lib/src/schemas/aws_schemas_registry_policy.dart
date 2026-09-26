// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_schemas_registry_policy`.
const Set<String> _awsSchemasRegistryPolicySensitive = <String>{};

/// Factory wrapper for `aws_schemas_registry_policy`.
final class AwsSchemasRegistryPolicy extends Resource {
  static const String tfType = 'aws_schemas_registry_policy';

  AwsSchemasRegistryPolicy({
    required super.localName,
    required TfArg<String> policy,
    TfArg<String>? region,
    required TfArg<String> registryName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy': policy,
           if (region != null) 'region': region,
           'registry_name': registryName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSchemasRegistryPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
