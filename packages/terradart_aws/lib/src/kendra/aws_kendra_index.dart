// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_kendra_index`.
const Set<String> _awsKendraIndexSensitive = <String>{};

/// Kendra Index enum for `edition`.
enum KendraIndexEdition implements TerraformEnum {
  developerEdition('DEVELOPER_EDITION'),
  enterpriseEdition('ENTERPRISE_EDITION'),
  genAiEnterpriseEdition('GEN_AI_ENTERPRISE_EDITION');

  const KendraIndexEdition(this.terraformValue);
  @override
  final String terraformValue;
}

/// Kendra Index User Context enum for `user_context_policy`.
enum KendraIndexUserContextPolicy implements TerraformEnum {
  attributeFilter('ATTRIBUTE_FILTER'),
  userToken('USER_TOKEN');

  const KendraIndexUserContextPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `capacity_units` block of
/// `aws_kendra_index` (derived from provider schema).
@immutable
final class KendraIndexCapacityUnits {
  const KendraIndexCapacityUnits({
    this.queryCapacityUnits,
    this.storageCapacityUnits,
  });

  final TfArg<num>? queryCapacityUnits;

  final TfArg<num>? storageCapacityUnits;

  Map<String, Object?> encode() => {
    if (queryCapacityUnits != null)
      'query_capacity_units': queryCapacityUnits!.toTfJson(),
    if (storageCapacityUnits != null)
      'storage_capacity_units': storageCapacityUnits!.toTfJson(),
  };
}

/// Typed helper for the `document_metadata_configuration_updates` block of
/// `aws_kendra_index` (derived from provider schema).
@immutable
final class KendraIndexDocumentMetadataConfigurationUpdates {
  const KendraIndexDocumentMetadataConfigurationUpdates({
    required this.name,
    required this.type,
    this.relevance,
    this.search,
  });

  final TfArg<String> name;

  final TfArg<KendraIndexDocumentMetadataConfigurationUpdatesType> type;

  final KendraIndexDocumentMetadataConfigurationUpdatesRelevance? relevance;

  final KendraIndexDocumentMetadataConfigurationUpdatesSearch? search;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
    if (relevance != null) 'relevance': relevance!.encode(),
    if (search != null) 'search': search!.encode(),
  };
}

/// `type` — derived from the provider schema description.
enum KendraIndexDocumentMetadataConfigurationUpdatesType
    implements TerraformEnum {
  stringValue('STRING_VALUE'),
  stringListValue('STRING_LIST_VALUE'),
  longValue('LONG_VALUE'),
  dateValue('DATE_VALUE');

  const KendraIndexDocumentMetadataConfigurationUpdatesType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `document_metadata_configuration_updates.relevance` block of
/// `aws_kendra_index` (derived from provider schema).
@immutable
final class KendraIndexDocumentMetadataConfigurationUpdatesRelevance {
  const KendraIndexDocumentMetadataConfigurationUpdatesRelevance({
    this.duration,
    this.freshness,
    this.importance,
    this.rankOrder,
    this.valuesImportanceMap,
  });

  final TfArg<String>? duration;

  final TfArg<bool>? freshness;

  final TfArg<num>? importance;

  final TfArg<
    KendraIndexDocumentMetadataConfigurationUpdatesRelevanceRankOrder
  >?
  rankOrder;

  final TfArg<Map<String, num>>? valuesImportanceMap;

  Map<String, Object?> encode() => {
    if (duration != null) 'duration': duration!.toTfJson(),
    if (freshness != null) 'freshness': freshness!.toTfJson(),
    if (importance != null) 'importance': importance!.toTfJson(),
    if (rankOrder != null) 'rank_order': rankOrder!.toTfJson(),
    if (valuesImportanceMap != null)
      'values_importance_map': valuesImportanceMap!.toTfJson(),
  };
}

/// `rank_order` — derived from the provider schema description.
enum KendraIndexDocumentMetadataConfigurationUpdatesRelevanceRankOrder
    implements TerraformEnum {
  ascending('ASCENDING'),
  descending('DESCENDING');

  const KendraIndexDocumentMetadataConfigurationUpdatesRelevanceRankOrder(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `document_metadata_configuration_updates.search` block of
/// `aws_kendra_index` (derived from provider schema).
@immutable
final class KendraIndexDocumentMetadataConfigurationUpdatesSearch {
  const KendraIndexDocumentMetadataConfigurationUpdatesSearch({
    this.displayable,
    this.facetable,
    this.searchable,
    this.sortable,
  });

  final TfArg<bool>? displayable;

  final TfArg<bool>? facetable;

  final TfArg<bool>? searchable;

  final TfArg<bool>? sortable;

  Map<String, Object?> encode() => {
    if (displayable != null) 'displayable': displayable!.toTfJson(),
    if (facetable != null) 'facetable': facetable!.toTfJson(),
    if (searchable != null) 'searchable': searchable!.toTfJson(),
    if (sortable != null) 'sortable': sortable!.toTfJson(),
  };
}

/// Typed helper for the `server_side_encryption_configuration` block of
/// `aws_kendra_index` (derived from provider schema).
@immutable
final class KendraIndexServerSideEncryptionConfiguration {
  const KendraIndexServerSideEncryptionConfiguration({this.kmsKeyId});

  final RefTo<AwsKmsKey>? kmsKeyId;

  Map<String, Object?> encode() => {
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `user_group_resolution_configuration` block of
/// `aws_kendra_index` (derived from provider schema).
@immutable
final class KendraIndexUserGroupResolutionConfiguration {
  const KendraIndexUserGroupResolutionConfiguration({
    required this.userGroupResolutionMode,
  });

  final TfArg<
    KendraIndexUserGroupResolutionConfigurationUserGroupResolutionMode
  >
  userGroupResolutionMode;

  Map<String, Object?> encode() => {
    'user_group_resolution_mode': userGroupResolutionMode.toTfJson(),
  };
}

/// `user_group_resolution_mode` — derived from the provider schema description.
enum KendraIndexUserGroupResolutionConfigurationUserGroupResolutionMode
    implements TerraformEnum {
  awsSso('AWS_SSO'),
  none('NONE');

  const KendraIndexUserGroupResolutionConfigurationUserGroupResolutionMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `user_token_configurations` block of
/// `aws_kendra_index` (derived from provider schema).
@immutable
final class KendraIndexUserTokenConfigurations {
  const KendraIndexUserTokenConfigurations({
    this.jsonTokenTypeConfiguration,
    this.jwtTokenTypeConfiguration,
  });

  final KendraIndexUserTokenConfigurationsJsonTokenTypeConfiguration?
  jsonTokenTypeConfiguration;

  final KendraIndexUserTokenConfigurationsJwtTokenTypeConfiguration?
  jwtTokenTypeConfiguration;

  Map<String, Object?> encode() => {
    if (jsonTokenTypeConfiguration != null)
      'json_token_type_configuration': jsonTokenTypeConfiguration!.encode(),
    if (jwtTokenTypeConfiguration != null)
      'jwt_token_type_configuration': jwtTokenTypeConfiguration!.encode(),
  };
}

/// Typed helper for the `user_token_configurations.json_token_type_configuration` block of
/// `aws_kendra_index` (derived from provider schema).
@immutable
final class KendraIndexUserTokenConfigurationsJsonTokenTypeConfiguration {
  const KendraIndexUserTokenConfigurationsJsonTokenTypeConfiguration({
    required this.groupAttributeField,
    required this.userNameAttributeField,
  });

  final TfArg<String> groupAttributeField;

  final TfArg<String> userNameAttributeField;

  Map<String, Object?> encode() => {
    'group_attribute_field': groupAttributeField.toTfJson(),
    'user_name_attribute_field': userNameAttributeField.toTfJson(),
  };
}

/// Typed helper for the `user_token_configurations.jwt_token_type_configuration` block of
/// `aws_kendra_index` (derived from provider schema).
@immutable
final class KendraIndexUserTokenConfigurationsJwtTokenTypeConfiguration {
  const KendraIndexUserTokenConfigurationsJwtTokenTypeConfiguration({
    this.claimRegex,
    this.groupAttributeField,
    this.issuer,
    required this.keyLocation,
    this.secretsManagerArn,
    this.url,
    this.userNameAttributeField,
  });

  final TfArg<String>? claimRegex;

  final TfArg<String>? groupAttributeField;

  final TfArg<String>? issuer;

  final TfArg<
    KendraIndexUserTokenConfigurationsJwtTokenTypeConfigurationKeyLocation
  >
  keyLocation;

  final TfArg<String>? secretsManagerArn;

  final TfArg<String>? url;

  final TfArg<String>? userNameAttributeField;

  Map<String, Object?> encode() => {
    if (claimRegex != null) 'claim_regex': claimRegex!.toTfJson(),
    if (groupAttributeField != null)
      'group_attribute_field': groupAttributeField!.toTfJson(),
    if (issuer != null) 'issuer': issuer!.toTfJson(),
    'key_location': keyLocation.toTfJson(),
    if (secretsManagerArn != null)
      'secrets_manager_arn': secretsManagerArn!.toTfJson(),
    if (url != null) 'url': url!.toTfJson(),
    if (userNameAttributeField != null)
      'user_name_attribute_field': userNameAttributeField!.toTfJson(),
  };
}

/// `key_location` — derived from the provider schema description.
enum KendraIndexUserTokenConfigurationsJwtTokenTypeConfigurationKeyLocation
    implements TerraformEnum {
  url('URL'),
  secretManager('SECRET_MANAGER');

  const KendraIndexUserTokenConfigurationsJwtTokenTypeConfigurationKeyLocation(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_kendra_index`.
final class AwsKendraIndex extends Resource {
  static const String tfType = 'aws_kendra_index';

  AwsKendraIndex({
    required super.localName,
    TfArg<String>? description,
    TfArg<KendraIndexEdition>? edition,
    required TfArg<String> name,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    TfArg<Map<String, String>>? tags,
    TfArg<KendraIndexUserContextPolicy>? userContextPolicy,
    KendraIndexCapacityUnits? capacityUnits,
    List<KendraIndexDocumentMetadataConfigurationUpdates>?
    documentMetadataConfigurationUpdates,
    KendraIndexServerSideEncryptionConfiguration?
    serverSideEncryptionConfiguration,
    KendraIndexUserGroupResolutionConfiguration?
    userGroupResolutionConfiguration,
    KendraIndexUserTokenConfigurations? userTokenConfigurations,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (edition != null) 'edition': edition,
           'name': name,
           if (region != null) 'region': region,
           'role_arn': roleArn.encodeAs('arn'),
           if (tags != null) 'tags': tags,
           if (userContextPolicy != null)
             'user_context_policy': userContextPolicy,
           if (capacityUnits != null)
             'capacity_units': TfArg.literal(capacityUnits.encode()),
           if (documentMetadataConfigurationUpdates != null)
             'document_metadata_configuration_updates': TfArg.literal([
               for (final e in documentMetadataConfigurationUpdates) e.encode(),
             ]),
           if (serverSideEncryptionConfiguration != null)
             'server_side_encryption_configuration': TfArg.literal(
               serverSideEncryptionConfiguration.encode(),
             ),
           if (userGroupResolutionConfiguration != null)
             'user_group_resolution_configuration': TfArg.literal(
               userGroupResolutionConfiguration.encode(),
             ),
           if (userTokenConfigurations != null)
             'user_token_configurations': TfArg.literal(
               userTokenConfigurations.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKendraIndexSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsKendraIndex>`.
  RefTo<AwsKendraIndex> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `error_message` attribute.
  TfRef<String> get errorMessage =>
      TfRef.attribute<String>(this, 'error_message');

  /// Reference to `index_statistics` attribute.
  TfRef<List<Map<String, Object?>>> get indexStatistics =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'index_statistics');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
