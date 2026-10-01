// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_datapolicyv2_data_policy.dart'
    show GoogleBigqueryDatapolicyv2DataPolicy;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_bigquery_datapolicyv2_data_policy_iam_binding`.
const Set<String> _googleBigqueryDatapolicyv2DataPolicyIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_bigquery_datapolicyv2_data_policy_iam_binding` (derived from provider schema).
@immutable
final class BigqueryDatapolicyv2DataPolicyIamBindingCondition {
  const BigqueryDatapolicyv2DataPolicyIamBindingCondition({
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

/// Factory wrapper for `google_bigquery_datapolicyv2_data_policy_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a BigQuery Data Policy
/// V2 resource.
///
/// Replaces the entire member list for that role on the data policy. Prefer
/// [GoogleBigqueryDatapolicyv2DataPolicyIamMember] when adding one principal
/// without touching existing bindings.
final class GoogleBigqueryDatapolicyv2DataPolicyIamBinding extends Resource {
  static const String tfType =
      'google_bigquery_datapolicyv2_data_policy_iam_binding';

  GoogleBigqueryDatapolicyv2DataPolicyIamBinding(
    super.localName, {
    required RefTo<GoogleBigqueryDatapolicyv2DataPolicy> dataPolicy,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    BigqueryDatapolicyv2DataPolicyIamBindingCondition? condition,
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
      _googleBigqueryDatapolicyv2DataPolicyIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryDatapolicyv2DataPolicyIamBinding>`.
  RefTo<GoogleBigqueryDatapolicyv2DataPolicyIamBinding> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `data_policy_id` attribute.
  TfRef<String> get dataPolicyId =>
      TfRef.attribute<String>(this, 'data_policy_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
