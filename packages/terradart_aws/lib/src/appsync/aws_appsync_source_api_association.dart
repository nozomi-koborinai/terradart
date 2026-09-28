// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appsync_source_api_association`.
const Set<String> _awsAppsyncSourceApiAssociationSensitive = <String>{};

/// Exactly one of `merged_api_arn`, `merged_api_id` on `aws_appsync_source_api_association`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class AppsyncSourceApiAssociationMergedApiArnOrMergedApiId {
  const AppsyncSourceApiAssociationMergedApiArnOrMergedApiId();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `merged_api_arn` (one of the [AppsyncSourceApiAssociationMergedApiArnOrMergedApiId] choices).
final class AppsyncSourceApiAssociationMergedApiArnOption
    extends AppsyncSourceApiAssociationMergedApiArnOrMergedApiId {
  const AppsyncSourceApiAssociationMergedApiArnOption({
    required this.mergedApiArn,
  });

  final TfArg<String> mergedApiArn;

  @override
  String get blockKey => 'merged_api_arn';

  @override
  Map<String, Object?> encode() => {'merged_api_arn': mergedApiArn.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'merged_api_arn': mergedApiArn};
}

/// Sets `merged_api_id` (one of the [AppsyncSourceApiAssociationMergedApiArnOrMergedApiId] choices).
final class AppsyncSourceApiAssociationMergedApiIdOption
    extends AppsyncSourceApiAssociationMergedApiArnOrMergedApiId {
  const AppsyncSourceApiAssociationMergedApiIdOption({
    required this.mergedApiId,
  });

  final TfArg<String> mergedApiId;

  @override
  String get blockKey => 'merged_api_id';

  @override
  Map<String, Object?> encode() => {'merged_api_id': mergedApiId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'merged_api_id': mergedApiId};
}

/// Exactly one of `source_api_arn`, `source_api_id` on `aws_appsync_source_api_association`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class AppsyncSourceApiAssociationSourceApiArnOrSourceApiId {
  const AppsyncSourceApiAssociationSourceApiArnOrSourceApiId();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `source_api_arn` (one of the [AppsyncSourceApiAssociationSourceApiArnOrSourceApiId] choices).
final class AppsyncSourceApiAssociationSourceApiArnOption
    extends AppsyncSourceApiAssociationSourceApiArnOrSourceApiId {
  const AppsyncSourceApiAssociationSourceApiArnOption({
    required this.sourceApiArn,
  });

  final TfArg<String> sourceApiArn;

  @override
  String get blockKey => 'source_api_arn';

  @override
  Map<String, Object?> encode() => {'source_api_arn': sourceApiArn.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'source_api_arn': sourceApiArn};
}

/// Sets `source_api_id` (one of the [AppsyncSourceApiAssociationSourceApiArnOrSourceApiId] choices).
final class AppsyncSourceApiAssociationSourceApiIdOption
    extends AppsyncSourceApiAssociationSourceApiArnOrSourceApiId {
  const AppsyncSourceApiAssociationSourceApiIdOption({
    required this.sourceApiId,
  });

  final TfArg<String> sourceApiId;

  @override
  String get blockKey => 'source_api_id';

  @override
  Map<String, Object?> encode() => {'source_api_id': sourceApiId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'source_api_id': sourceApiId};
}

/// Factory wrapper for `aws_appsync_source_api_association`.
final class AwsAppsyncSourceApiAssociation extends Resource {
  static const String tfType = 'aws_appsync_source_api_association';

  AwsAppsyncSourceApiAssociation({
    required super.localName,
    TfArg<String>? description,
    required AppsyncSourceApiAssociationMergedApiArnOrMergedApiId
    mergedApiArnOrMergedApiId,
    TfArg<String>? region,
    required AppsyncSourceApiAssociationSourceApiArnOrSourceApiId
    sourceApiArnOrSourceApiId,
    TfArg<List<Map<String, Object?>>>? sourceApiAssociationConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           ...mergedApiArnOrMergedApiId.argMap,
           if (region != null) 'region': region,
           ...sourceApiArnOrSourceApiId.argMap,
           if (sourceApiAssociationConfig != null)
             'source_api_association_config': sourceApiAssociationConfig,
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
