// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lambda_permission`.
const Set<String> _awsLambdaPermissionSensitive = <String>{};

/// Lambda Permission Function Url Auth enum for `function_url_auth_type`.
enum LambdaPermissionFunctionUrlAuthType implements TerraformEnum {
  none('NONE'),
  awsIam('AWS_IAM');

  const LambdaPermissionFunctionUrlAuthType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `statement_id`, `statement_id_prefix` on `aws_lambda_permission`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.statementId(...)`.
sealed class LambdaPermissionStatementIdOrStatementIdPrefix {
  const LambdaPermissionStatementIdOrStatementIdPrefix();

  /// Sets `statement_id`.
  const factory LambdaPermissionStatementIdOrStatementIdPrefix.statementId(
    TfArg<String> statementId,
  ) = LambdaPermissionStatementIdOrStatementIdPrefixStatementId;

  /// Sets `statement_id_prefix`.
  const factory LambdaPermissionStatementIdOrStatementIdPrefix.statementIdPrefix(
    TfArg<String> statementIdPrefix,
  ) = LambdaPermissionStatementIdOrStatementIdPrefixStatementIdPrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LambdaPermissionStatementIdOrStatementIdPrefix.statementId] choice: sets `statement_id`.
final class LambdaPermissionStatementIdOrStatementIdPrefixStatementId
    extends LambdaPermissionStatementIdOrStatementIdPrefix {
  const LambdaPermissionStatementIdOrStatementIdPrefixStatementId(
    this.statementId,
  );

  final TfArg<String> statementId;

  @override
  String get blockKey => 'statement_id';

  @override
  Map<String, Object?> encode() => {'statement_id': statementId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'statement_id': statementId};
}

/// The [LambdaPermissionStatementIdOrStatementIdPrefix.statementIdPrefix] choice: sets `statement_id_prefix`.
final class LambdaPermissionStatementIdOrStatementIdPrefixStatementIdPrefix
    extends LambdaPermissionStatementIdOrStatementIdPrefix {
  const LambdaPermissionStatementIdOrStatementIdPrefixStatementIdPrefix(
    this.statementIdPrefix,
  );

  final TfArg<String> statementIdPrefix;

  @override
  String get blockKey => 'statement_id_prefix';

  @override
  Map<String, Object?> encode() => {
    'statement_id_prefix': statementIdPrefix.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'statement_id_prefix': statementIdPrefix,
  };
}

/// Factory wrapper for `aws_lambda_permission`.
final class AwsLambdaPermission extends Resource {
  static const String tfType = 'aws_lambda_permission';

  AwsLambdaPermission({
    required super.localName,
    required TfArg<String> action,
    TfArg<String>? eventSourceToken,
    required TfArg<String> functionName,
    TfArg<LambdaPermissionFunctionUrlAuthType>? functionUrlAuthType,
    TfArg<bool>? invokedViaFunctionUrl,
    required TfArg<String> principal,
    TfArg<String>? principalOrgId,
    TfArg<String>? qualifier,
    TfArg<String>? region,
    TfArg<String>? sourceAccount,
    TfArg<String>? sourceArn,
    LambdaPermissionStatementIdOrStatementIdPrefix?
    statementIdOrStatementIdPrefix,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': action,
           if (eventSourceToken != null) 'event_source_token': eventSourceToken,
           'function_name': functionName,
           if (functionUrlAuthType != null)
             'function_url_auth_type': functionUrlAuthType,
           if (invokedViaFunctionUrl != null)
             'invoked_via_function_url': invokedViaFunctionUrl,
           'principal': principal,
           if (principalOrgId != null) 'principal_org_id': principalOrgId,
           if (qualifier != null) 'qualifier': qualifier,
           if (region != null) 'region': region,
           if (sourceAccount != null) 'source_account': sourceAccount,
           if (sourceArn != null) 'source_arn': sourceArn,
           ...?statementIdOrStatementIdPrefix?.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaPermissionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLambdaPermission>`.
  RefTo<AwsLambdaPermission> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
