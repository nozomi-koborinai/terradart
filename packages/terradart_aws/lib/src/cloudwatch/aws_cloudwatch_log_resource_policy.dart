// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_log_resource_policy`.
const Set<String> _awsCloudwatchLogResourcePolicySensitive = <String>{};

/// Exactly one of `policy_name`, `resource_arn` on `aws_cloudwatch_log_resource_policy`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.policyName(...)`.
sealed class CloudwatchLogResourcePolicyScope {
  const CloudwatchLogResourcePolicyScope();

  /// Sets `policy_name`.
  const factory CloudwatchLogResourcePolicyScope.policyName(
    TfArg<String> policyName,
  ) = CloudwatchLogResourcePolicyScopePolicyName;

  /// Sets `resource_arn`.
  const factory CloudwatchLogResourcePolicyScope.resourceArn(
    TfArg<String> resourceArn,
  ) = CloudwatchLogResourcePolicyScopeResourceArn;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CloudwatchLogResourcePolicyScope.policyName] choice: sets `policy_name`.
final class CloudwatchLogResourcePolicyScopePolicyName
    extends CloudwatchLogResourcePolicyScope {
  const CloudwatchLogResourcePolicyScopePolicyName(this.policyName);

  final TfArg<String> policyName;

  @override
  String get blockKey => 'policy_name';

  @override
  Map<String, Object?> encode() => {'policy_name': policyName.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'policy_name': policyName};
}

/// The [CloudwatchLogResourcePolicyScope.resourceArn] choice: sets `resource_arn`.
final class CloudwatchLogResourcePolicyScopeResourceArn
    extends CloudwatchLogResourcePolicyScope {
  const CloudwatchLogResourcePolicyScopeResourceArn(this.resourceArn);

  final TfArg<String> resourceArn;

  @override
  String get blockKey => 'resource_arn';

  @override
  Map<String, Object?> encode() => {'resource_arn': resourceArn.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'resource_arn': resourceArn};
}

/// Factory wrapper for `aws_cloudwatch_log_resource_policy`.
final class AwsCloudwatchLogResourcePolicy extends Resource {
  static const String tfType = 'aws_cloudwatch_log_resource_policy';

  AwsCloudwatchLogResourcePolicy({
    required super.localName,
    required TfArg<String> policyDocument,
    required CloudwatchLogResourcePolicyScope scope,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy_document': policyDocument,
           ...scope.argMap,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchLogResourcePolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchLogResourcePolicy>`.
  RefTo<AwsCloudwatchLogResourcePolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `policy_scope` attribute.
  TfRef<String> get policyScope =>
      TfRef.attribute<String>(this, 'policy_scope');

  /// Reference to `revision_id` attribute.
  TfRef<String> get revisionId => TfRef.attribute<String>(this, 'revision_id');

  /// Reference to `policy_document` attribute.
  TfRef<String> get policyDocumentRef =>
      TfRef.attribute<String>(this, 'policy_document');

  /// Reference to `policy_name` attribute.
  TfRef<String> get policyNameRef =>
      TfRef.attribute<String>(this, 'policy_name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArnRef =>
      TfRef.attribute<String>(this, 'resource_arn');
}
