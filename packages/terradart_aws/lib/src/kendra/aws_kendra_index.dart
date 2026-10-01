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
extension type const KendraIndexEdition._(TfArg<String> _)
    implements TfArg<String> {
  KendraIndexEdition.variable(String name) : this._(TfArg.variable(name));
  KendraIndexEdition.expression(String template)
    : this._(TfArg.expression(template));
  const KendraIndexEdition.arg(TfArg<String> arg) : this._(arg);

  static const developerEdition = KendraIndexEdition._(
    TfArgLiteral('DEVELOPER_EDITION'),
  );
  static const enterpriseEdition = KendraIndexEdition._(
    TfArgLiteral('ENTERPRISE_EDITION'),
  );
  static const genAiEnterpriseEdition = KendraIndexEdition._(
    TfArgLiteral('GEN_AI_ENTERPRISE_EDITION'),
  );

  static const List<KendraIndexEdition> values = [
    developerEdition,
    enterpriseEdition,
    genAiEnterpriseEdition,
  ];
}

/// Kendra Index User Context enum for `user_context_policy`.
extension type const KendraIndexUserContextPolicy._(TfArg<String> _)
    implements TfArg<String> {
  KendraIndexUserContextPolicy.variable(String name)
    : this._(TfArg.variable(name));
  KendraIndexUserContextPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const KendraIndexUserContextPolicy.arg(TfArg<String> arg) : this._(arg);

  static const attributeFilter = KendraIndexUserContextPolicy._(
    TfArgLiteral('ATTRIBUTE_FILTER'),
  );
  static const userToken = KendraIndexUserContextPolicy._(
    TfArgLiteral('USER_TOKEN'),
  );

  static const List<KendraIndexUserContextPolicy> values = [
    attributeFilter,
    userToken,
  ];
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
    'query_capacity_units': ?queryCapacityUnits?.toTfJson(),
    'storage_capacity_units': ?storageCapacityUnits?.toTfJson(),
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

  final KendraIndexType type;

  final KendraIndexRelevance? relevance;

  final KendraIndexSearch? search;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
    'relevance': ?relevance?.encode(),
    'search': ?search?.encode(),
  };
}

/// `type` — derived from the provider schema description.
extension type const KendraIndexType._(TfArg<String> _)
    implements TfArg<String> {
  KendraIndexType.variable(String name) : this._(TfArg.variable(name));
  KendraIndexType.expression(String template)
    : this._(TfArg.expression(template));
  const KendraIndexType.arg(TfArg<String> arg) : this._(arg);

  static const stringValue = KendraIndexType._(TfArgLiteral('STRING_VALUE'));
  static const stringListValue = KendraIndexType._(
    TfArgLiteral('STRING_LIST_VALUE'),
  );
  static const longValue = KendraIndexType._(TfArgLiteral('LONG_VALUE'));
  static const dateValue = KendraIndexType._(TfArgLiteral('DATE_VALUE'));

  static const List<KendraIndexType> values = [
    stringValue,
    stringListValue,
    longValue,
    dateValue,
  ];
}

/// Typed helper for the `document_metadata_configuration_updates.relevance` block of
/// `aws_kendra_index` (derived from provider schema).
@immutable
final class KendraIndexRelevance {
  const KendraIndexRelevance({
    this.duration,
    this.freshness,
    this.importance,
    this.rankOrder,
    this.valuesImportanceMap,
  });

  final TfArg<String>? duration;

  final TfArg<bool>? freshness;

  final TfArg<num>? importance;

  final KendraIndexRankOrder? rankOrder;

  final TfArg<Map<String, num>>? valuesImportanceMap;

  Map<String, Object?> encode() => {
    'duration': ?duration?.toTfJson(),
    'freshness': ?freshness?.toTfJson(),
    'importance': ?importance?.toTfJson(),
    'rank_order': ?rankOrder?.toTfJson(),
    'values_importance_map': ?valuesImportanceMap?.toTfJson(),
  };
}

/// `rank_order` — derived from the provider schema description.
extension type const KendraIndexRankOrder._(TfArg<String> _)
    implements TfArg<String> {
  KendraIndexRankOrder.variable(String name) : this._(TfArg.variable(name));
  KendraIndexRankOrder.expression(String template)
    : this._(TfArg.expression(template));
  const KendraIndexRankOrder.arg(TfArg<String> arg) : this._(arg);

  static const ascending = KendraIndexRankOrder._(TfArgLiteral('ASCENDING'));
  static const descending = KendraIndexRankOrder._(TfArgLiteral('DESCENDING'));

  static const List<KendraIndexRankOrder> values = [ascending, descending];
}

/// Typed helper for the `document_metadata_configuration_updates.search` block of
/// `aws_kendra_index` (derived from provider schema).
@immutable
final class KendraIndexSearch {
  const KendraIndexSearch({
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
    'displayable': ?displayable?.toTfJson(),
    'facetable': ?facetable?.toTfJson(),
    'searchable': ?searchable?.toTfJson(),
    'sortable': ?sortable?.toTfJson(),
  };
}

/// Typed helper for the `server_side_encryption_configuration` block of
/// `aws_kendra_index` (derived from provider schema).
@immutable
final class KendraIndexServerSideEncryptionConfiguration {
  const KendraIndexServerSideEncryptionConfiguration({this.kmsKeyId});

  final RefTo<AwsKmsKey>? kmsKeyId;

  Map<String, Object?> encode() => {
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `user_group_resolution_configuration` block of
/// `aws_kendra_index` (derived from provider schema).
@immutable
final class KendraIndexUserGroupResolutionConfiguration {
  const KendraIndexUserGroupResolutionConfiguration({
    required this.userGroupResolutionMode,
  });

  final KendraIndexUserGroupResolutionMode userGroupResolutionMode;

  Map<String, Object?> encode() => {
    'user_group_resolution_mode': userGroupResolutionMode.toTfJson(),
  };
}

/// `user_group_resolution_mode` — derived from the provider schema description.
extension type const KendraIndexUserGroupResolutionMode._(TfArg<String> _)
    implements TfArg<String> {
  KendraIndexUserGroupResolutionMode.variable(String name)
    : this._(TfArg.variable(name));
  KendraIndexUserGroupResolutionMode.expression(String template)
    : this._(TfArg.expression(template));
  const KendraIndexUserGroupResolutionMode.arg(TfArg<String> arg) : this._(arg);

  static const awsSso = KendraIndexUserGroupResolutionMode._(
    TfArgLiteral('AWS_SSO'),
  );
  static const none = KendraIndexUserGroupResolutionMode._(
    TfArgLiteral('NONE'),
  );

  static const List<KendraIndexUserGroupResolutionMode> values = [awsSso, none];
}

/// Typed helper for the `user_token_configurations` block of
/// `aws_kendra_index` (derived from provider schema).
@immutable
final class KendraIndexUserTokenConfigurations {
  const KendraIndexUserTokenConfigurations({
    this.jsonTokenTypeConfiguration,
    this.jwtTokenTypeConfiguration,
  });

  final KendraIndexJsonTokenTypeConfiguration? jsonTokenTypeConfiguration;

  final KendraIndexJwtTokenTypeConfiguration? jwtTokenTypeConfiguration;

  Map<String, Object?> encode() => {
    'json_token_type_configuration': ?jsonTokenTypeConfiguration?.encode(),
    'jwt_token_type_configuration': ?jwtTokenTypeConfiguration?.encode(),
  };
}

/// Typed helper for the `user_token_configurations.json_token_type_configuration` block of
/// `aws_kendra_index` (derived from provider schema).
@immutable
final class KendraIndexJsonTokenTypeConfiguration {
  const KendraIndexJsonTokenTypeConfiguration({
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
final class KendraIndexJwtTokenTypeConfiguration {
  const KendraIndexJwtTokenTypeConfiguration({
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

  final KendraIndexKeyLocation keyLocation;

  final TfArg<String>? secretsManagerArn;

  final TfArg<String>? url;

  final TfArg<String>? userNameAttributeField;

  Map<String, Object?> encode() => {
    'claim_regex': ?claimRegex?.toTfJson(),
    'group_attribute_field': ?groupAttributeField?.toTfJson(),
    'issuer': ?issuer?.toTfJson(),
    'key_location': keyLocation.toTfJson(),
    'secrets_manager_arn': ?secretsManagerArn?.toTfJson(),
    'url': ?url?.toTfJson(),
    'user_name_attribute_field': ?userNameAttributeField?.toTfJson(),
  };
}

/// `key_location` — derived from the provider schema description.
extension type const KendraIndexKeyLocation._(TfArg<String> _)
    implements TfArg<String> {
  KendraIndexKeyLocation.variable(String name) : this._(TfArg.variable(name));
  KendraIndexKeyLocation.expression(String template)
    : this._(TfArg.expression(template));
  const KendraIndexKeyLocation.arg(TfArg<String> arg) : this._(arg);

  static const url = KendraIndexKeyLocation._(TfArgLiteral('URL'));
  static const secretManager = KendraIndexKeyLocation._(
    TfArgLiteral('SECRET_MANAGER'),
  );

  static const List<KendraIndexKeyLocation> values = [url, secretManager];
}

/// Factory wrapper for `aws_kendra_index`.
final class AwsKendraIndex extends Resource {
  static const String tfType = 'aws_kendra_index';

  AwsKendraIndex(
    super.localName, {
    TfArg<String>? description,
    KendraIndexEdition? edition,
    required TfArg<String> name,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    TfArg<Map<String, String>>? tags,
    KendraIndexUserContextPolicy? userContextPolicy,
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
           'description': ?description,
           'edition': ?edition,
           'name': name,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
           'user_context_policy': ?userContextPolicy,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `edition` attribute.
  TfRef<String> get edition => TfRef.attribute<String>(this, 'edition');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `user_context_policy` attribute.
  TfRef<String> get userContextPolicy =>
      TfRef.attribute<String>(this, 'user_context_policy');
}
