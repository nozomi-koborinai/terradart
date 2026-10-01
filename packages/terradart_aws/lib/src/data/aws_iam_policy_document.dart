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

  final TfArg<List<String>>? actions;

  final TfArg<String>? effect;

  final TfArg<List<String>>? notActions;

  final TfArg<List<String>>? notResources;

  final TfArg<List<String>>? resources;

  final TfArg<String>? sid;

  final List<DataIamPolicyDocumentCondition>? condition;

  final List<DataIamPolicyDocumentNotPrincipals>? notPrincipals;

  final List<DataIamPolicyDocumentPrincipals>? principals;

  Map<String, Object?> encode() => {
    'actions': ?actions?.toTfJson(),
    'effect': ?effect?.toTfJson(),
    'not_actions': ?notActions?.toTfJson(),
    'not_resources': ?notResources?.toTfJson(),
    'resources': ?resources?.toTfJson(),
    'sid': ?sid?.toTfJson(),
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
final class DataIamPolicyDocumentCondition {
  const DataIamPolicyDocumentCondition({
    required this.test,
    required this.values,
    required this.variable,
  });

  final TfArg<String> test;

  final TfArg<List<String>> values;

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
final class DataIamPolicyDocumentNotPrincipals {
  const DataIamPolicyDocumentNotPrincipals({
    required this.identifiers,
    required this.type,
  });

  final TfArg<List<String>> identifiers;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'identifiers': identifiers.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `statement.principals` block of
/// `aws_iam_policy_document` (derived from provider schema).
@immutable
final class DataIamPolicyDocumentPrincipals {
  const DataIamPolicyDocumentPrincipals({
    required this.identifiers,
    required this.type,
  });

  final TfArg<List<String>> identifiers;

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

  DataAwsIamPolicyDocument(
    super.localName, {
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
           'override_json': ?overrideJson,
           'override_policy_documents': ?overridePolicyDocuments,
           'policy_id': ?policyId,
           'source_json': ?sourceJson,
           'source_policy_documents': ?sourcePolicyDocuments,
           'version': ?version,
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

  /// Reference to `override_json` attribute.
  TfRef<String> get overrideJson =>
      TfRef.attribute<String>(this, 'override_json');

  /// Reference to `override_policy_documents` attribute.
  TfRef<List<String>> get overridePolicyDocuments =>
      TfRef.attribute<List<String>>(this, 'override_policy_documents');

  /// Reference to `policy_id` attribute.
  TfRef<String> get policyId => TfRef.attribute<String>(this, 'policy_id');

  /// Reference to `source_json` attribute.
  TfRef<String> get sourceJson => TfRef.attribute<String>(this, 'source_json');

  /// Reference to `source_policy_documents` attribute.
  TfRef<List<String>> get sourcePolicyDocuments =>
      TfRef.attribute<List<String>>(this, 'source_policy_documents');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
