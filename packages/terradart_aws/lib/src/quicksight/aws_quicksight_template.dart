// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_template`.
const Set<String> _awsQuicksightTemplateSensitive = <String>{};

/// Factory wrapper for `aws_quicksight_template`.
final class AwsQuicksightTemplate extends Resource {
  static const String tfType = 'aws_quicksight_template';

  AwsQuicksightTemplate({
    required super.localName,
    TfArg<String>? awsAccountId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> templateId,
    required TfArg<String> versionDescription,
    TfArg<Map<String, dynamic>>? definition,
    TfArg<List<Map<String, dynamic>>>? permissions,
    TfArg<Map<String, dynamic>>? sourceEntity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (awsAccountId != null) 'aws_account_id': awsAccountId,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'template_id': templateId,
           'version_description': versionDescription,
           if (definition != null) 'definition': definition,
           if (permissions != null) 'permissions': permissions,
           if (sourceEntity != null) 'source_entity': sourceEntity,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightTemplateSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `last_updated_time` attribute.
  TfRef<String> get lastUpdatedTime =>
      TfRef.attribute<String>(this, 'last_updated_time');

  /// Reference to `source_entity_arn` attribute.
  TfRef<String> get sourceEntityArn =>
      TfRef.attribute<String>(this, 'source_entity_arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `version_number` attribute.
  TfRef<num> get versionNumber => TfRef.attribute<num>(this, 'version_number');
}
