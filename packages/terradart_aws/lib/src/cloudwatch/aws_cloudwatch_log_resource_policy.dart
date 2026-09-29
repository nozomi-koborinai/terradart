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
sealed class CloudwatchLogResourcePolicyPolicyNameOrResourceArn {
  const CloudwatchLogResourcePolicyPolicyNameOrResourceArn();

  /// Sets `policy_name`.
  const factory CloudwatchLogResourcePolicyPolicyNameOrResourceArn.policyName(
    TfArg<String> policyName,
  ) = CloudwatchLogResourcePolicyPolicyNameOrResourceArnPolicyName;

  /// Sets `resource_arn`.
  const factory CloudwatchLogResourcePolicyPolicyNameOrResourceArn.resourceArn(
    TfArg<String> resourceArn,
  ) = CloudwatchLogResourcePolicyPolicyNameOrResourceArnResourceArn;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CloudwatchLogResourcePolicyPolicyNameOrResourceArn.policyName] choice: sets `policy_name`.
final class CloudwatchLogResourcePolicyPolicyNameOrResourceArnPolicyName
    extends CloudwatchLogResourcePolicyPolicyNameOrResourceArn {
  const CloudwatchLogResourcePolicyPolicyNameOrResourceArnPolicyName(
    this.policyName,
  );

  final TfArg<String> policyName;

  @override
  String get blockKey => 'policy_name';

  @override
  Map<String, Object?> encode() => {'policy_name': policyName.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'policy_name': policyName};
}

/// The [CloudwatchLogResourcePolicyPolicyNameOrResourceArn.resourceArn] choice: sets `resource_arn`.
final class CloudwatchLogResourcePolicyPolicyNameOrResourceArnResourceArn
    extends CloudwatchLogResourcePolicyPolicyNameOrResourceArn {
  const CloudwatchLogResourcePolicyPolicyNameOrResourceArnResourceArn(
    this.resourceArn,
  );

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
    required CloudwatchLogResourcePolicyPolicyNameOrResourceArn
    policyNameOrResourceArn,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy_document': policyDocument,
           ...policyNameOrResourceArn.argMap,
           if (region != null) 'region': region,
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
}
