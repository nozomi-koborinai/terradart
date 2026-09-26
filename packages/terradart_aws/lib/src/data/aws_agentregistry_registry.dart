// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_agentregistry_registry`.
const Set<String> _awsAgentregistryRegistrySensitive = <String>{};

/// Factory wrapper for `aws_agentregistry_registry`.
final class DataAwsAgentregistryRegistry extends Data {
  static const String tfType = 'aws_agentregistry_registry';

  DataAwsAgentregistryRegistry({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> registryId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'registry_id': registryId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAgentregistryRegistrySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `approval_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get approvalConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'approval_configuration',
      );

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `discovery_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get discoveryConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'discovery_configuration',
      );

  /// Reference to `encryption_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get encryptionConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'encryption_configuration',
      );

  /// Reference to `registry_arn` attribute.
  TfRef<String> get registryArn =>
      TfRef.attribute<String>(this, 'registry_arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
