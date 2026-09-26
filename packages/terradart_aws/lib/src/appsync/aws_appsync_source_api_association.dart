// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appsync_source_api_association`.
const Set<String> _awsAppsyncSourceApiAssociationSensitive = <String>{};

/// Factory wrapper for `aws_appsync_source_api_association`.
final class AwsAppsyncSourceApiAssociation extends Resource {
  static const String tfType = 'aws_appsync_source_api_association';

  AwsAppsyncSourceApiAssociation({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? mergedApiArn,
    TfArg<String>? mergedApiId,
    TfArg<String>? region,
    TfArg<String>? sourceApiArn,
    TfArg<List<Map<String, Object?>>>? sourceApiAssociationConfig,
    TfArg<String>? sourceApiId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (mergedApiArn != null) 'merged_api_arn': mergedApiArn,
           if (mergedApiId != null) 'merged_api_id': mergedApiId,
           if (region != null) 'region': region,
           if (sourceApiArn != null) 'source_api_arn': sourceApiArn,
           if (sourceApiAssociationConfig != null)
             'source_api_association_config': sourceApiAssociationConfig,
           if (sourceApiId != null) 'source_api_id': sourceApiId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppsyncSourceApiAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `association_id` attribute.
  TfRef<String> get associationId =>
      TfRef.attribute<String>(this, 'association_id');
}
