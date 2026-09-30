// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lambda_code_signing_config`.
const Set<String> _awsLambdaCodeSigningConfigSensitive = <String>{};

/// Typed helper for the `allowed_publishers` block of
/// `aws_lambda_code_signing_config` (derived from provider schema).
@immutable
final class LambdaCodeSigningConfigAllowedPublishers {
  const LambdaCodeSigningConfigAllowedPublishers({
    required this.signingProfileVersionArns,
  });

  final TfArg<List<String>> signingProfileVersionArns;

  Map<String, Object?> encode() => {
    'signing_profile_version_arns': signingProfileVersionArns.toTfJson(),
  };
}

/// Typed helper for the `policies` block of
/// `aws_lambda_code_signing_config` (derived from provider schema).
@immutable
final class LambdaCodeSigningConfigPolicies {
  const LambdaCodeSigningConfigPolicies({
    required this.untrustedArtifactOnDeployment,
  });

  final TfArg<LambdaCodeSigningConfigPoliciesUntrustedArtifactOnDeployment>
  untrustedArtifactOnDeployment;

  Map<String, Object?> encode() => {
    'untrusted_artifact_on_deployment': untrustedArtifactOnDeployment
        .toTfJson(),
  };
}

/// `untrusted_artifact_on_deployment` — derived from the provider schema description.
enum LambdaCodeSigningConfigPoliciesUntrustedArtifactOnDeployment
    implements TerraformEnum {
  warn('Warn'),
  enforce('Enforce');

  const LambdaCodeSigningConfigPoliciesUntrustedArtifactOnDeployment(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_lambda_code_signing_config`.
final class AwsLambdaCodeSigningConfig extends Resource {
  static const String tfType = 'aws_lambda_code_signing_config';

  AwsLambdaCodeSigningConfig({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required LambdaCodeSigningConfigAllowedPublishers allowedPublishers,
    LambdaCodeSigningConfigPolicies? policies,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'region': ?region,
           'tags': ?tags,
           'allowed_publishers': TfArg.literal(allowedPublishers.encode()),
           if (policies != null) 'policies': TfArg.literal(policies.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaCodeSigningConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLambdaCodeSigningConfig>`.
  RefTo<AwsLambdaCodeSigningConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `config_id` attribute.
  TfRef<String> get configId => TfRef.attribute<String>(this, 'config_id');

  /// Reference to `last_modified` attribute.
  TfRef<String> get lastModified =>
      TfRef.attribute<String>(this, 'last_modified');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
