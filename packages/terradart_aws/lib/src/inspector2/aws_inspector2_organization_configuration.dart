// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_inspector2_organization_configuration`.
const Set<String> _awsInspector2OrganizationConfigurationSensitive = <String>{};

/// Typed helper for the `auto_enable` block of
/// `aws_inspector2_organization_configuration` (derived from provider schema).
@immutable
final class Inspector2OrganizationConfigurationAutoEnable {
  const Inspector2OrganizationConfigurationAutoEnable({
    this.codeRepository,
    required this.ec2,
    required this.ecr,
    this.lambda,
    this.lambdaCode,
  });

  final TfArg<bool>? codeRepository;

  final TfArg<bool> ec2;

  final TfArg<bool> ecr;

  final TfArg<bool>? lambda;

  final TfArg<bool>? lambdaCode;

  Map<String, Object?> encode() => {
    if (codeRepository != null) 'code_repository': codeRepository!.toTfJson(),
    'ec2': ec2.toTfJson(),
    'ecr': ecr.toTfJson(),
    if (lambda != null) 'lambda': lambda!.toTfJson(),
    if (lambdaCode != null) 'lambda_code': lambdaCode!.toTfJson(),
  };
}

/// Factory wrapper for `aws_inspector2_organization_configuration`.
final class AwsInspector2OrganizationConfiguration extends Resource {
  static const String tfType = 'aws_inspector2_organization_configuration';

  AwsInspector2OrganizationConfiguration({
    required super.localName,
    TfArg<String>? region,
    required Inspector2OrganizationConfigurationAutoEnable autoEnable,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'auto_enable': TfArg.literal(autoEnable.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsInspector2OrganizationConfigurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `max_account_limit_reached` attribute.
  TfRef<bool> get maxAccountLimitReached =>
      TfRef.attribute<bool>(this, 'max_account_limit_reached');
}
