// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_connector_v2`.
const Set<String> _awsSecurityhubConnectorV2Sensitive = <String>{};

/// Exactly one of `jira_cloud`, `service_now` on the `connector_provider` block of `aws_securityhub_connector_v2`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.jiraCloud(...)`.
sealed class SecurityhubConnectorV2ConnectorProvider {
  const SecurityhubConnectorV2ConnectorProvider();

  /// Sets `jira_cloud`.
  const factory SecurityhubConnectorV2ConnectorProvider.jiraCloud(
    List<SecurityhubConnectorV2ConnectorProviderJiraCloud> jiraCloud,
  ) = SecurityhubConnectorV2ConnectorProviderJiraCloudChoice;

  /// Sets `service_now`.
  const factory SecurityhubConnectorV2ConnectorProvider.serviceNow(
    List<SecurityhubConnectorV2ConnectorProviderServiceNow> serviceNow,
  ) = SecurityhubConnectorV2ConnectorProviderServiceNowChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [SecurityhubConnectorV2ConnectorProvider.jiraCloud] choice: sets `jira_cloud`.
final class SecurityhubConnectorV2ConnectorProviderJiraCloudChoice
    extends SecurityhubConnectorV2ConnectorProvider {
  const SecurityhubConnectorV2ConnectorProviderJiraCloudChoice(this.jiraCloud);

  final List<SecurityhubConnectorV2ConnectorProviderJiraCloud> jiraCloud;

  @override
  String get blockKey => 'jira_cloud';

  @override
  Map<String, Object?> encode() => {
    'jira_cloud': [for (final e in jiraCloud) e.encode()],
  };
}

/// The [SecurityhubConnectorV2ConnectorProvider.serviceNow] choice: sets `service_now`.
final class SecurityhubConnectorV2ConnectorProviderServiceNowChoice
    extends SecurityhubConnectorV2ConnectorProvider {
  const SecurityhubConnectorV2ConnectorProviderServiceNowChoice(
    this.serviceNow,
  );

  final List<SecurityhubConnectorV2ConnectorProviderServiceNow> serviceNow;

  @override
  String get blockKey => 'service_now';

  @override
  Map<String, Object?> encode() => {
    'service_now': [for (final e in serviceNow) e.encode()],
  };
}

/// Typed helper for the `connector_provider.jira_cloud` block of
/// `aws_securityhub_connector_v2` (derived from provider schema).
@immutable
final class SecurityhubConnectorV2ConnectorProviderJiraCloud {
  const SecurityhubConnectorV2ConnectorProviderJiraCloud({
    required this.projectKey,
  });

  final TfArg<String> projectKey;

  Map<String, Object?> encode() => {'project_key': projectKey.toTfJson()};
}

/// Typed helper for the `connector_provider.service_now` block of
/// `aws_securityhub_connector_v2` (derived from provider schema).
@immutable
final class SecurityhubConnectorV2ConnectorProviderServiceNow {
  const SecurityhubConnectorV2ConnectorProviderServiceNow({
    required this.instanceName,
    required this.secretArn,
  });

  final TfArg<String> instanceName;

  final TfArg<String> secretArn;

  Map<String, Object?> encode() => {
    'instance_name': instanceName.toTfJson(),
    'secret_arn': secretArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_securityhub_connector_v2`.
final class AwsSecurityhubConnectorV2 extends Resource {
  static const String tfType = 'aws_securityhub_connector_v2';

  AwsSecurityhubConnectorV2({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? kmsKeyArn,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<SecurityhubConnectorV2ConnectorProvider>? connectorProvider,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (connectorProvider != null)
             'connector_provider': TfArg.literal([
               for (final e in connectorProvider) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecurityhubConnectorV2Sensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSecurityhubConnectorV2>`.
  RefTo<AwsSecurityhubConnectorV2> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `connector_id` attribute.
  TfRef<String> get connectorId =>
      TfRef.attribute<String>(this, 'connector_id');

  /// Reference to `health` attribute.
  TfRef<List<Map<String, Object?>>> get health =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'health');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
