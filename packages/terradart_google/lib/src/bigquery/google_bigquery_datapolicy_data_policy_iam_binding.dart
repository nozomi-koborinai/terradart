// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_datapolicy_data_policy.dart'
    show GoogleBigqueryDatapolicyDataPolicy;

/// Sensitive field paths for `google_bigquery_datapolicy_data_policy_iam_binding`.
const Set<String> _googleBigqueryDatapolicyDataPolicyIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_bigquery_datapolicy_data_policy_iam_binding` (derived from provider schema).
@immutable
final class BigqueryDatapolicyDataPolicyIamBindingCondition {
  const BigqueryDatapolicyDataPolicyIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_bigquery_datapolicy_data_policy_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a BigQuery data policy.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleBigqueryDatapolicyDataPolicyIamMember] for additive grants.
final class GoogleBigqueryDatapolicyDataPolicyIamBinding extends Resource {
  static const String tfType =
      'google_bigquery_datapolicy_data_policy_iam_binding';

  GoogleBigqueryDatapolicyDataPolicyIamBinding({
    required super.localName,
    required RefTo<GoogleBigqueryDatapolicyDataPolicy> dataPolicy,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    BigqueryDatapolicyDataPolicyIamBindingCondition? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_policy_id': dataPolicy.encodeAs('data_policy_id'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?(location ?? dataPolicy.alsoAs('location')),
           'project': ?(project ?? dataPolicy.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryDatapolicyDataPolicyIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryDatapolicyDataPolicyIamBinding>`.
  RefTo<GoogleBigqueryDatapolicyDataPolicyIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `data_policy_id` attribute.
  TfRef<String> get dataPolicyIdRef =>
      TfRef.attribute<String>(this, 'data_policy_id');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
