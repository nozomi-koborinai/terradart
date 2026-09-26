// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cleanrooms_collaboration`.
const Set<String> _awsCleanroomsCollaborationSensitive = <String>{};

/// Typed helper for the `data_encryption_metadata` block of
/// `aws_cleanrooms_collaboration` (derived from provider schema).
@immutable
final class CleanroomsCollaborationDataEncryptionMetadata {
  const CleanroomsCollaborationDataEncryptionMetadata({
    required this.allowClearText,
    required this.allowDuplicates,
    required this.allowJoinsOnColumnsWithDifferentNames,
    required this.preserveNulls,
  });

  final TfArg<bool> allowClearText;

  final TfArg<bool> allowDuplicates;

  final TfArg<bool> allowJoinsOnColumnsWithDifferentNames;

  final TfArg<bool> preserveNulls;

  Map<String, Object?> encode() => {
    'allow_clear_text': allowClearText.toTfJson(),
    'allow_duplicates': allowDuplicates.toTfJson(),
    'allow_joins_on_columns_with_different_names':
        allowJoinsOnColumnsWithDifferentNames.toTfJson(),
    'preserve_nulls': preserveNulls.toTfJson(),
  };
}

/// Typed helper for the `member` block of
/// `aws_cleanrooms_collaboration` (derived from provider schema).
@immutable
final class CleanroomsCollaborationMember {
  const CleanroomsCollaborationMember({
    required this.accountId,
    required this.displayName,
    required this.memberAbilities,
  });

  final TfArg<String> accountId;

  final TfArg<String> displayName;

  final TfArg<List<Object?>> memberAbilities;

  Map<String, Object?> encode() => {
    'account_id': accountId.toTfJson(),
    'display_name': displayName.toTfJson(),
    'member_abilities': memberAbilities.toTfJson(),
  };
}

/// Factory wrapper for `aws_cleanrooms_collaboration`.
final class AwsCleanroomsCollaboration extends Resource {
  static const String tfType = 'aws_cleanrooms_collaboration';

  AwsCleanroomsCollaboration({
    required super.localName,
    TfArg<String>? analyticsEngine,
    required TfArg<String> creatorDisplayName,
    required TfArg<List<String>> creatorMemberAbilities,
    required TfArg<String> description,
    required TfArg<String> name,
    required TfArg<String> queryLogStatus,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    CleanroomsCollaborationDataEncryptionMetadata? dataEncryptionMetadata,
    List<CleanroomsCollaborationMember>? member,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (analyticsEngine != null) 'analytics_engine': analyticsEngine,
           'creator_display_name': creatorDisplayName,
           'creator_member_abilities': creatorMemberAbilities,
           'description': description,
           'name': name,
           'query_log_status': queryLogStatus,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (dataEncryptionMetadata != null)
             'data_encryption_metadata': TfArg.literal(
               dataEncryptionMetadata.encode(),
             ),
           if (member != null)
             'member': TfArg.literal([for (final e in member) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCleanroomsCollaborationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
