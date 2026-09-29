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
sealed class AppsyncSourceApiAssociationMergedApi {
  const AppsyncSourceApiAssociationMergedApi();

  /// Sets `merged_api_arn`.
  const factory AppsyncSourceApiAssociationMergedApi.mergedApiArn(
    TfArg<String> mergedApiArn,
  ) = AppsyncSourceApiAssociationMergedApiArn;

  /// Sets `merged_api_id`.
  const factory AppsyncSourceApiAssociationMergedApi.mergedApiId(
    TfArg<String> mergedApiId,
  ) = AppsyncSourceApiAssociationMergedApiId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [AppsyncSourceApiAssociationMergedApi.mergedApiArn] choice: sets `merged_api_arn`.
final class AppsyncSourceApiAssociationMergedApiArn
    extends AppsyncSourceApiAssociationMergedApi {
  const AppsyncSourceApiAssociationMergedApiArn(this.mergedApiArn);

  final TfArg<String> mergedApiArn;

  @override
  String get blockKey => 'merged_api_arn';

  @override
  Map<String, Object?> encode() => {'merged_api_arn': mergedApiArn.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'merged_api_arn': mergedApiArn};
}

/// The [AppsyncSourceApiAssociationMergedApi.mergedApiId] choice: sets `merged_api_id`.
final class AppsyncSourceApiAssociationMergedApiId
    extends AppsyncSourceApiAssociationMergedApi {
  const AppsyncSourceApiAssociationMergedApiId(this.mergedApiId);

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
sealed class AppsyncSourceApiAssociationSourceApi {
  const AppsyncSourceApiAssociationSourceApi();

  /// Sets `source_api_arn`.
  const factory AppsyncSourceApiAssociationSourceApi.sourceApiArn(
    TfArg<String> sourceApiArn,
  ) = AppsyncSourceApiAssociationSourceApiArn;

  /// Sets `source_api_id`.
  const factory AppsyncSourceApiAssociationSourceApi.sourceApiId(
    TfArg<String> sourceApiId,
  ) = AppsyncSourceApiAssociationSourceApiId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [AppsyncSourceApiAssociationSourceApi.sourceApiArn] choice: sets `source_api_arn`.
final class AppsyncSourceApiAssociationSourceApiArn
    extends AppsyncSourceApiAssociationSourceApi {
  const AppsyncSourceApiAssociationSourceApiArn(this.sourceApiArn);

  final TfArg<String> sourceApiArn;

  @override
  String get blockKey => 'source_api_arn';

  @override
  Map<String, Object?> encode() => {'source_api_arn': sourceApiArn.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'source_api_arn': sourceApiArn};
}

/// The [AppsyncSourceApiAssociationSourceApi.sourceApiId] choice: sets `source_api_id`.
final class AppsyncSourceApiAssociationSourceApiId
    extends AppsyncSourceApiAssociationSourceApi {
  const AppsyncSourceApiAssociationSourceApiId(this.sourceApiId);

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
    required AppsyncSourceApiAssociationMergedApi mergedApi,
    TfArg<String>? region,
    required AppsyncSourceApiAssociationSourceApi sourceApi,
    TfArg<List<Map<String, Object?>>>? sourceApiAssociationConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           ...mergedApi.argMap,
           if (region != null) 'region': region,
           ...sourceApi.argMap,
           if (sourceApiAssociationConfig != null)
             'source_api_association_config': sourceApiAssociationConfig,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppsyncSourceApiAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppsyncSourceApiAssociation>`.
  RefTo<AwsAppsyncSourceApiAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `association_id` attribute.
  TfRef<String> get associationId =>
      TfRef.attribute<String>(this, 'association_id');
}
