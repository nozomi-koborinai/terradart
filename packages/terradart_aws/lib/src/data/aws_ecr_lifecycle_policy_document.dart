// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecr_lifecycle_policy_document`.
const Set<String> _awsEcrLifecyclePolicyDocumentSensitive = <String>{};

/// Typed helper for the `rule` block of
/// `aws_ecr_lifecycle_policy_document` (derived from provider schema).
@immutable
final class DataEcrLifecyclePolicyDocumentRule {
  const DataEcrLifecyclePolicyDocumentRule({
    this.description,
    required this.priority,
    this.action,
    this.selection,
  });

  final TfArg<String>? description;

  final TfArg<num> priority;

  final List<DataEcrLifecyclePolicyDocumentRuleAction>? action;

  final List<DataEcrLifecyclePolicyDocumentRuleSelection>? selection;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'priority': priority.toTfJson(),
    if (action != null) 'action': [for (final e in action!) e.encode()],
    if (selection != null)
      'selection': [for (final e in selection!) e.encode()],
  };
}

/// Typed helper for the `rule.action` block of
/// `aws_ecr_lifecycle_policy_document` (derived from provider schema).
@immutable
final class DataEcrLifecyclePolicyDocumentRuleAction {
  const DataEcrLifecyclePolicyDocumentRuleAction({
    this.targetStorageClass,
    required this.type,
  });

  final TfArg<String>? targetStorageClass;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (targetStorageClass != null)
      'target_storage_class': targetStorageClass!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `rule.selection` block of
/// `aws_ecr_lifecycle_policy_document` (derived from provider schema).
@immutable
final class DataEcrLifecyclePolicyDocumentRuleSelection {
  const DataEcrLifecyclePolicyDocumentRuleSelection({
    required this.countNumber,
    required this.countType,
    this.countUnit,
    this.storageClass,
    this.tagPatternList,
    this.tagPrefixList,
    required this.tagStatus,
  });

  final TfArg<num> countNumber;

  final TfArg<String> countType;

  final TfArg<String>? countUnit;

  final TfArg<String>? storageClass;

  final TfArg<List<Object?>>? tagPatternList;

  final TfArg<List<Object?>>? tagPrefixList;

  final TfArg<String> tagStatus;

  Map<String, Object?> encode() => {
    'count_number': countNumber.toTfJson(),
    'count_type': countType.toTfJson(),
    if (countUnit != null) 'count_unit': countUnit!.toTfJson(),
    if (storageClass != null) 'storage_class': storageClass!.toTfJson(),
    if (tagPatternList != null) 'tag_pattern_list': tagPatternList!.toTfJson(),
    if (tagPrefixList != null) 'tag_prefix_list': tagPrefixList!.toTfJson(),
    'tag_status': tagStatus.toTfJson(),
  };
}

/// Factory wrapper for `aws_ecr_lifecycle_policy_document`.
final class DataAwsEcrLifecyclePolicyDocument extends Data {
  static const String tfType = 'aws_ecr_lifecycle_policy_document';

  DataAwsEcrLifecyclePolicyDocument({
    required super.localName,
    List<DataEcrLifecyclePolicyDocumentRule>? rule,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (rule != null)
             'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcrLifecyclePolicyDocumentSensitive;

  /// Reference to `json` attribute.
  TfRef<String> get json => TfRef.attribute<String>(this, 'json');
}
