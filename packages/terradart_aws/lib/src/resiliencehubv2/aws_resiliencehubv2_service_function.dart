// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_resiliencehubv2_service_function`.
const Set<String> _awsResiliencehubv2ServiceFunctionSensitive = <String>{};

/// Resiliencehubv2 Service Function enum for `criticality`.
extension type const Resiliencehubv2ServiceFunctionCriticality._(
  TfArg<String> _
) implements TfArg<String> {
  Resiliencehubv2ServiceFunctionCriticality.variable(String name)
    : this._(TfArg.variable(name));
  Resiliencehubv2ServiceFunctionCriticality.expression(String template)
    : this._(TfArg.expression(template));
  const Resiliencehubv2ServiceFunctionCriticality.arg(TfArg<String> arg)
    : this._(arg);

  static const primary = Resiliencehubv2ServiceFunctionCriticality._(
    TfArgLiteral('PRIMARY'),
  );
  static const supplemental = Resiliencehubv2ServiceFunctionCriticality._(
    TfArgLiteral('SUPPLEMENTAL'),
  );

  static const List<Resiliencehubv2ServiceFunctionCriticality> values = [
    primary,
    supplemental,
  ];
}

/// Factory wrapper for `aws_resiliencehubv2_service_function`.
final class AwsResiliencehubv2ServiceFunction extends Resource {
  static const String tfType = 'aws_resiliencehubv2_service_function';

  AwsResiliencehubv2ServiceFunction(
    super.localName, {
    required Resiliencehubv2ServiceFunctionCriticality criticality,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> serviceArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'criticality': criticality,
           'description': ?description,
           'name': name,
           'region': ?region,
           'service_arn': serviceArn,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsResiliencehubv2ServiceFunctionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsResiliencehubv2ServiceFunction>`.
  RefTo<AwsResiliencehubv2ServiceFunction> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `service_function_id` attribute.
  TfRef<String> get serviceFunctionId =>
      TfRef.attribute<String>(this, 'service_function_id');

  /// Reference to `criticality` attribute.
  TfRef<String> get criticality => TfRef.attribute<String>(this, 'criticality');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `service_arn` attribute.
  TfRef<String> get serviceArn => TfRef.attribute<String>(this, 'service_arn');
}
