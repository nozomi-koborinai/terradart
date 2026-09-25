import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Provider source identifier: `hashicorp/aws`.
const String kAwsProviderSource = 'hashicorp/aws';

/// Exact version pin. The AWS provider releases almost weekly and has no
/// automated bump lane in this workspace, so TerraDart pins the version
/// its wrappers were generated against; bumps are deliberate maintainer
/// changes together with a fixture re-extraction.
const String kAwsProviderVersionConstraint = '6.66.0';

/// Concrete `StackProvider` for `hashicorp/aws`.
///
/// **Credentials never enter synth output by design.** The provider
/// schema does not mark its credential arguments `sensitive`, so this
/// class leaves them out by name: there is no `access_key`, `secret_key`,
/// `token`, or `assume_role_with_web_identity` (whose `web_identity_token`
/// is a credential) parameter. Authenticate at apply time through the AWS
/// SDK credential chain instead: `AWS_ACCESS_KEY_ID` /
/// `AWS_SECRET_ACCESS_KEY` / `AWS_SESSION_TOKEN`, `AWS_PROFILE` with the
/// shared config files, or an instance / task role.
///
/// All configuration fields are plain Dart types (not `TfArg`): provider
/// blocks in Terraform JSON do not interpolate references to resources.
@immutable
final class AwsProvider implements StackProvider {
  const AwsProvider({
    this.alias,
    this.region,
    this.profile,
    this.allowedAccountIds,
    this.forbiddenAccountIds,
    this.assumeRole,
    this.defaultTags,
    this.ignoreTags,
    this.endpoints,
    this.sharedConfigFiles,
    this.sharedCredentialsFiles,
    this.skipCredentialsValidation,
    this.skipMetadataApiCheck,
    this.skipRegionValidation,
    this.skipRequestingAccountId,
    this.retryMode,
    this.maxRetries,
    this.useFipsEndpoint,
    this.useDualstackEndpoint,
  });

  /// Provider alias (`provider "aws" { alias = "us_west_2" }`), or `null`
  /// for the default configuration. Select it on a resource with
  /// `provider: 'aws.<alias>'`.
  @override
  final String? alias;

  /// Default region for every resource (`us-east-1`). Resources can
  /// override it with their own `region` argument. Falls back to
  /// `AWS_REGION` / the shared config when unset.
  final String? region;

  /// Named profile in the shared config and credentials files.
  final String? profile;

  /// Account IDs the provider may operate in; apply fails elsewhere.
  final List<String>? allowedAccountIds;

  /// Account IDs the provider must never operate in.
  final List<String>? forbiddenAccountIds;

  /// Roles to assume, in order (more than one chains the assumptions).
  final List<AwsAssumeRole>? assumeRole;

  /// Tags applied to every taggable resource the provider manages
  /// (`default_tags { tags = { ... } }`). Resource-level `tags` win on a
  /// key conflict.
  final Map<String, String>? defaultTags;

  /// Tag keys the provider ignores on every resource.
  final AwsIgnoreTags? ignoreTags;

  /// Custom endpoint per service name (`{'s3': 'http://localhost:4566'}`),
  /// for LocalStack or VPC endpoints.
  final Map<String, String>? endpoints;

  /// Shared config file paths (defaults to `~/.aws/config`).
  final List<String>? sharedConfigFiles;

  /// Shared credentials file paths (defaults to `~/.aws/credentials`).
  final List<String>? sharedCredentialsFiles;

  /// Skip the STS credential check at plan time (LocalStack, mocks).
  final bool? skipCredentialsValidation;

  /// Skip the EC2 instance metadata API check.
  final bool? skipMetadataApiCheck;

  /// Skip validating [region] against the provider's known region list.
  final bool? skipRegionValidation;

  /// Skip looking up the account ID; ARN-derived attributes may be empty.
  final bool? skipRequestingAccountId;

  /// AWS SDK retry mode: `standard` or `adaptive`.
  final String? retryMode;

  /// Maximum retries for a throttled or failed API call.
  final int? maxRetries;

  /// Use FIPS-compliant endpoints.
  final bool? useFipsEndpoint;

  /// Use dual-stack (IPv4 + IPv6) endpoints.
  final bool? useDualstackEndpoint;

  @override
  String get providerName => 'aws';

  /// Provider registry source: `hashicorp/aws`.
  @override
  String get source => kAwsProviderSource;

  /// Version constraint: the exact `6.66.0` pin.
  @override
  String get versionConstraint => kAwsProviderVersionConstraint;

  @override
  Map<String, Object?> get configArgs => {
        if (region != null) 'region': region,
        if (profile != null) 'profile': profile,
        if (allowedAccountIds != null) 'allowed_account_ids': allowedAccountIds,
        if (forbiddenAccountIds != null)
          'forbidden_account_ids': forbiddenAccountIds,
        if (assumeRole != null)
          'assume_role': [for (final r in assumeRole!) r.toJson()],
        if (defaultTags != null)
          'default_tags': [
            {'tags': defaultTags},
          ],
        if (ignoreTags != null) 'ignore_tags': [ignoreTags!.toJson()],
        if (endpoints != null) 'endpoints': [endpoints],
        if (sharedConfigFiles != null) 'shared_config_files': sharedConfigFiles,
        if (sharedCredentialsFiles != null)
          'shared_credentials_files': sharedCredentialsFiles,
        if (skipCredentialsValidation != null)
          'skip_credentials_validation': skipCredentialsValidation,
        if (skipMetadataApiCheck != null)
          'skip_metadata_api_check': skipMetadataApiCheck,
        if (skipRegionValidation != null)
          'skip_region_validation': skipRegionValidation,
        if (skipRequestingAccountId != null)
          'skip_requesting_account_id': skipRequestingAccountId,
        if (retryMode != null) 'retry_mode': retryMode,
        if (maxRetries != null) 'max_retries': maxRetries,
        if (useFipsEndpoint != null) 'use_fips_endpoint': useFipsEndpoint,
        if (useDualstackEndpoint != null)
          'use_dualstack_endpoint': useDualstackEndpoint,
      };
}

/// One `assume_role` block of [AwsProvider].
@immutable
final class AwsAssumeRole {
  const AwsAssumeRole({
    this.roleArn,
    this.sessionName,
    this.externalId,
    this.duration,
    this.policy,
    this.policyArns,
    this.sourceIdentity,
    this.tags,
    this.transitiveTagKeys,
  });

  /// ARN of the role to assume.
  final String? roleArn;

  /// Session name recorded in CloudTrail.
  final String? sessionName;

  /// External ID the role's trust policy requires, if any.
  final String? externalId;

  /// Session duration as a Go duration string (`1h`, `15m`).
  final String? duration;

  /// Inline session policy JSON that further restricts the session.
  final String? policy;

  /// Managed policy ARNs that further restrict the session.
  final List<String>? policyArns;

  /// Source identity recorded for the session.
  final String? sourceIdentity;

  /// Session tags.
  final Map<String, String>? tags;

  /// Session tag keys passed on to later role assumptions in a chain.
  final List<String>? transitiveTagKeys;

  Map<String, Object?> toJson() => {
        if (roleArn != null) 'role_arn': roleArn,
        if (sessionName != null) 'session_name': sessionName,
        if (externalId != null) 'external_id': externalId,
        if (duration != null) 'duration': duration,
        if (policy != null) 'policy': policy,
        if (policyArns != null) 'policy_arns': policyArns,
        if (sourceIdentity != null) 'source_identity': sourceIdentity,
        if (tags != null) 'tags': tags,
        if (transitiveTagKeys != null) 'transitive_tag_keys': transitiveTagKeys,
      };
}

/// The `ignore_tags` block of [AwsProvider].
@immutable
final class AwsIgnoreTags {
  const AwsIgnoreTags({this.keys, this.keyPrefixes});

  /// Exact tag keys to ignore.
  final List<String>? keys;

  /// Tag key prefixes to ignore.
  final List<String>? keyPrefixes;

  Map<String, Object?> toJson() => {
        if (keys != null) 'keys': keys,
        if (keyPrefixes != null) 'key_prefixes': keyPrefixes,
      };
}
