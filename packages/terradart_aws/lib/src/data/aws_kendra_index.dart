// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kendra_index`.
const Set<String> _awsKendraIndexSensitive = <String>{};

/// Factory wrapper for `aws_kendra_index`.
final class DataAwsKendraIndex extends Data {
  static const String tfType = 'aws_kendra_index';

  DataAwsKendraIndex({
    required super.localName,
    required TfArg<String> id,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'id': id,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKendraIndexSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `capacity_units` attribute.
  TfRef<List<Map<String, Object?>>> get capacityUnits =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'capacity_units');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `document_metadata_configuration_updates` attribute.
  TfRef<List<Map<String, Object?>>> get documentMetadataConfigurationUpdates =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'document_metadata_configuration_updates',
      );

  /// Reference to `edition` attribute.
  TfRef<String> get edition => TfRef.attribute<String>(this, 'edition');

  /// Reference to `error_message` attribute.
  TfRef<String> get errorMessage =>
      TfRef.attribute<String>(this, 'error_message');

  /// Reference to `index_statistics` attribute.
  TfRef<List<Map<String, Object?>>> get indexStatistics =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'index_statistics');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `server_side_encryption_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get serverSideEncryptionConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'server_side_encryption_configuration',
      );

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `user_context_policy` attribute.
  TfRef<String> get userContextPolicy =>
      TfRef.attribute<String>(this, 'user_context_policy');

  /// Reference to `user_group_resolution_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get userGroupResolutionConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'user_group_resolution_configuration',
      );

  /// Reference to `user_token_configurations` attribute.
  TfRef<List<Map<String, Object?>>> get userTokenConfigurations =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'user_token_configurations',
      );
}
