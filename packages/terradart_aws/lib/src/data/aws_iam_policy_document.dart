// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_policy_document`.
const Set<String> _awsIamPolicyDocumentSensitive = <String>{};

/// Typed helper for the `statement` block of
/// `aws_iam_policy_document` (derived from provider schema).
@immutable
final class DataIamPolicyDocumentStatement {
  const DataIamPolicyDocumentStatement({
    this.actions,
    this.effect,
    this.notActions,
    this.notResources,
    this.resources,
    this.sid,
    this.condition,
    this.notPrincipals,
    this.principals,
  });

  final TfArg<List<Object?>>? actions;

  final TfArg<String>? effect;

  final TfArg<List<Object?>>? notActions;

  final TfArg<List<Object?>>? notResources;

  final TfArg<List<Object?>>? resources;

  final TfArg<String>? sid;

  final List<DataIamPolicyDocumentStatementCondition>? condition;

  final List<DataIamPolicyDocumentStatementNotPrincipals>? notPrincipals;

  final List<DataIamPolicyDocumentStatementPrincipals>? principals;

  Map<String, Object?> encode() => {
    if (actions != null) 'actions': actions!.toTfJson(),
    if (effect != null) 'effect': effect!.toTfJson(),
    if (notActions != null) 'not_actions': notActions!.toTfJson(),
    if (notResources != null) 'not_resources': notResources!.toTfJson(),
    if (resources != null) 'resources': resources!.toTfJson(),
    if (sid != null) 'sid': sid!.toTfJson(),
    if (condition != null)
      'condition': [for (final e in condition!) e.encode()],
    if (notPrincipals != null)
      'not_principals': [for (final e in notPrincipals!) e.encode()],
    if (principals != null)
      'principals': [for (final e in principals!) e.encode()],
  };
}

/// Typed helper for the `statement.condition` block of
/// `aws_iam_policy_document` (derived from provider schema).
@immutable
final class DataIamPolicyDocumentStatementCondition {
  const DataIamPolicyDocumentStatementCondition({
    required this.test,
    required this.values,
    required this.variable,
  });

  final TfArg<String> test;

  final TfArg<List<Object?>> values;

  final TfArg<String> variable;

  Map<String, Object?> encode() => {
    'test': test.toTfJson(),
    'values': values.toTfJson(),
    'variable': variable.toTfJson(),
  };
}

/// Typed helper for the `statement.not_principals` block of
/// `aws_iam_policy_document` (derived from provider schema).
@immutable
final class DataIamPolicyDocumentStatementNotPrincipals {
  const DataIamPolicyDocumentStatementNotPrincipals({
    required this.identifiers,
    required this.type,
  });

  final TfArg<List<Object?>> identifiers;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'identifiers': identifiers.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `statement.principals` block of
/// `aws_iam_policy_document` (derived from provider schema).
@immutable
final class DataIamPolicyDocumentStatementPrincipals {
  const DataIamPolicyDocumentStatementPrincipals({
    required this.identifiers,
    required this.type,
  });

  final TfArg<List<Object?>> identifiers;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'identifiers': identifiers.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_iam_policy_document`.
///
/// Builds an IAM policy document from typed statements. Terraform
/// renders it to JSON; read that through [json] and pass it to a trust
/// policy (`AwsIamRole.assumeRolePolicy`) or an inline policy.
///
/// Each [DataIamPolicyDocumentStatement] carries `actions`, `resources`,
/// `effect`, and typed `principals` / `condition` blocks.
final class DataAwsIamPolicyDocument extends Data {
  static const String tfType = 'aws_iam_policy_document';

  DataAwsIamPolicyDocument({
    required super.localName,
    TfArg<String>? overrideJson,
    TfArg<List<String>>? overridePolicyDocuments,
    TfArg<String>? policyId,
    TfArg<String>? sourceJson,
    TfArg<List<String>>? sourcePolicyDocuments,
    TfArg<String>? version,
    List<DataIamPolicyDocumentStatement>? statement,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (overrideJson != null) 'override_json': overrideJson,
           if (overridePolicyDocuments != null)
             'override_policy_documents': overridePolicyDocuments,
           if (policyId != null) 'policy_id': policyId,
           if (sourceJson != null) 'source_json': sourceJson,
           if (sourcePolicyDocuments != null)
             'source_policy_documents': sourcePolicyDocuments,
           if (version != null) 'version': version,
           if (statement != null)
             'statement': TfArg.literal([
               for (final e in statement) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamPolicyDocumentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `json` attribute.
  TfRef<String> get json => TfRef.attribute<String>(this, 'json');

  /// Reference to `minified_json` attribute.
  TfRef<String> get minifiedJson =>
      TfRef.attribute<String>(this, 'minified_json');
}
