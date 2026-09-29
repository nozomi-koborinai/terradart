// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appsync_source_api_association`.
const Set<String> _awsAppsyncSourceApiAssociationSensitive = <String>{};

/// Exactly one of `merged_api_arn`, `merged_api_id` on `aws_appsync_source_api_association`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.mergedApiArn(...)`.
sealed class AppsyncSourceApiAssociationMergedApiArnOrMergedApiId {
  const AppsyncSourceApiAssociationMergedApiArnOrMergedApiId();

  /// Sets `merged_api_arn`.
  const factory AppsyncSourceApiAssociationMergedApiArnOrMergedApiId.mergedApiArn(
    TfArg<String> mergedApiArn,
  ) = AppsyncSourceApiAssociationMergedApiArnOrMergedApiIdMergedApiArn;

  /// Sets `merged_api_id`.
  const factory AppsyncSourceApiAssociationMergedApiArnOrMergedApiId.mergedApiId(
    TfArg<String> mergedApiId,
  ) = AppsyncSourceApiAssociationMergedApiArnOrMergedApiIdMergedApiId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [AppsyncSourceApiAssociationMergedApiArnOrMergedApiId.mergedApiArn] choice: sets `merged_api_arn`.
final class AppsyncSourceApiAssociationMergedApiArnOrMergedApiIdMergedApiArn
    extends AppsyncSourceApiAssociationMergedApiArnOrMergedApiId {
  const AppsyncSourceApiAssociationMergedApiArnOrMergedApiIdMergedApiArn(
    this.mergedApiArn,
  );

  final TfArg<String> mergedApiArn;

  @override
  String get blockKey => 'merged_api_arn';

  @override
  Map<String, Object?> encode() => {'merged_api_arn': mergedApiArn.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'merged_api_arn': mergedApiArn};
}

/// The [AppsyncSourceApiAssociationMergedApiArnOrMergedApiId.mergedApiId] choice: sets `merged_api_id`.
final class AppsyncSourceApiAssociationMergedApiArnOrMergedApiIdMergedApiId
    extends AppsyncSourceApiAssociationMergedApiArnOrMergedApiId {
  const AppsyncSourceApiAssociationMergedApiArnOrMergedApiIdMergedApiId(
    this.mergedApiId,
  );

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
///
/// Pick one with a dot shorthand: `.sourceApiArn(...)`.
sealed class AppsyncSourceApiAssociationSourceApiArnOrSourceApiId {
  const AppsyncSourceApiAssociationSourceApiArnOrSourceApiId();

  /// Sets `source_api_arn`.
  const factory AppsyncSourceApiAssociationSourceApiArnOrSourceApiId.sourceApiArn(
    TfArg<String> sourceApiArn,
  ) = AppsyncSourceApiAssociationSourceApiArnOrSourceApiIdSourceApiArn;

  /// Sets `source_api_id`.
  const factory AppsyncSourceApiAssociationSourceApiArnOrSourceApiId.sourceApiId(
    TfArg<String> sourceApiId,
  ) = AppsyncSourceApiAssociationSourceApiArnOrSourceApiIdSourceApiId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [AppsyncSourceApiAssociationSourceApiArnOrSourceApiId.sourceApiArn] choice: sets `source_api_arn`.
final class AppsyncSourceApiAssociationSourceApiArnOrSourceApiIdSourceApiArn
    extends AppsyncSourceApiAssociationSourceApiArnOrSourceApiId {
  const AppsyncSourceApiAssociationSourceApiArnOrSourceApiIdSourceApiArn(
    this.sourceApiArn,
  );

  final TfArg<String> sourceApiArn;

  @override
  String get blockKey => 'source_api_arn';

  @override
  Map<String, Object?> encode() => {'source_api_arn': sourceApiArn.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'source_api_arn': sourceApiArn};
}

/// The [AppsyncSourceApiAssociationSourceApiArnOrSourceApiId.sourceApiId] choice: sets `source_api_id`.
final class AppsyncSourceApiAssociationSourceApiArnOrSourceApiIdSourceApiId
    extends AppsyncSourceApiAssociationSourceApiArnOrSourceApiId {
  const AppsyncSourceApiAssociationSourceApiArnOrSourceApiIdSourceApiId(
    this.sourceApiId,
  );

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
