// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_resource_policy`.
const Set<String> _awsGlueResourcePolicySensitive = <String>{};

/// Glue Resource Policy Enable enum for `enable_hybrid`.
extension type const GlueResourcePolicyEnableHybrid._(TfArg<String> _)
    implements TfArg<String> {
  GlueResourcePolicyEnableHybrid.variable(String name)
    : this._(TfArg.variable(name));
  GlueResourcePolicyEnableHybrid.expression(String template)
    : this._(TfArg.expression(template));
  const GlueResourcePolicyEnableHybrid.arg(TfArg<String> arg) : this._(arg);

  static const trueCase = GlueResourcePolicyEnableHybrid._(
    TfArgLiteral('TRUE'),
  );
  static const falseCase = GlueResourcePolicyEnableHybrid._(
    TfArgLiteral('FALSE'),
  );

  static const List<GlueResourcePolicyEnableHybrid> values = [
    trueCase,
    falseCase,
  ];
}

/// Factory wrapper for `aws_glue_resource_policy`.
final class AwsGlueResourcePolicy extends Resource {
  static const String tfType = 'aws_glue_resource_policy';

  AwsGlueResourcePolicy(
    super.localName, {
    GlueResourcePolicyEnableHybrid? enableHybrid,
    required TfArg<String> policy,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enable_hybrid': ?enableHybrid,
           'policy': policy,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlueResourcePolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGlueResourcePolicy>`.
  RefTo<AwsGlueResourcePolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enable_hybrid` attribute.
  TfRef<String> get enableHybrid =>
      TfRef.attribute<String>(this, 'enable_hybrid');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
