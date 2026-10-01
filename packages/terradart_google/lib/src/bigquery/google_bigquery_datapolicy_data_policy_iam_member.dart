// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_datapolicy_data_policy.dart'
    show GoogleBigqueryDatapolicyDataPolicy;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_bigquery_datapolicy_data_policy_iam_member`.
const Set<String> _googleBigqueryDatapolicyDataPolicyIamMemberSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_bigquery_datapolicy_data_policy_iam_member` (derived from provider schema).
@immutable
final class BigqueryDatapolicyDataPolicyIamMemberCondition {
  const BigqueryDatapolicyDataPolicyIamMemberCondition({
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

/// Factory wrapper for `google_bigquery_datapolicy_data_policy_iam_member`.
final class GoogleBigqueryDatapolicyDataPolicyIamMember extends Resource {
  static const String tfType =
      'google_bigquery_datapolicy_data_policy_iam_member';

  GoogleBigqueryDatapolicyDataPolicyIamMember(
    super.localName, {
    required RefTo<GoogleBigqueryDatapolicyDataPolicy> dataPolicy,
    required TfArg<String> role,
    required IamPrincipal member,
    BigqueryDatapolicyDataPolicyIamMemberCondition? condition,
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
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?(location ?? dataPolicy.alsoAs('location')),
           'project': ?(project ?? dataPolicy.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryDatapolicyDataPolicyIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryDatapolicyDataPolicyIamMember>`.
  RefTo<GoogleBigqueryDatapolicyDataPolicyIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `data_policy_id` attribute.
  TfRef<String> get dataPolicyId =>
      TfRef.attribute<String>(this, 'data_policy_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
