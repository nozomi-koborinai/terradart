// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elasticsearch_domain_saml_options`.
const Set<String> _awsElasticsearchDomainSamlOptionsSensitive = <String>{
  'saml_options.master_user_name',
};

/// Typed helper for the `saml_options` block of
/// `aws_elasticsearch_domain_saml_options` (derived from provider schema).
@immutable
final class ElasticsearchDomainSamlOptions {
  const ElasticsearchDomainSamlOptions({
    this.enabled,
    this.masterBackendRole,
    this.masterUserName,
    this.rolesKey,
    this.sessionTimeoutMinutes,
    this.subjectKey,
    this.idp,
  });

  final TfArg<bool>? enabled;

  final TfArg<String>? masterBackendRole;

  final TfArg<String>? masterUserName;

  final TfArg<String>? rolesKey;

  final TfArg<num>? sessionTimeoutMinutes;

  final TfArg<String>? subjectKey;

  final ElasticsearchDomainSamlOptionsIdp? idp;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'master_backend_role': ?masterBackendRole?.toTfJson(),
    'master_user_name': ?masterUserName?.toTfJson(),
    'roles_key': ?rolesKey?.toTfJson(),
    'session_timeout_minutes': ?sessionTimeoutMinutes?.toTfJson(),
    'subject_key': ?subjectKey?.toTfJson(),
    'idp': ?idp?.encode(),
  };
}

/// Typed helper for the `saml_options.idp` block of
/// `aws_elasticsearch_domain_saml_options` (derived from provider schema).
@immutable
final class ElasticsearchDomainSamlOptionsIdp {
  const ElasticsearchDomainSamlOptionsIdp({
    required this.entityId,
    required this.metadataContent,
  });

  final TfArg<String> entityId;

  final TfArg<String> metadataContent;

  Map<String, Object?> encode() => {
    'entity_id': entityId.toTfJson(),
    'metadata_content': metadataContent.toTfJson(),
  };
}

/// Factory wrapper for `aws_elasticsearch_domain_saml_options`.
final class AwsElasticsearchDomainSamlOptions extends Resource {
  static const String tfType = 'aws_elasticsearch_domain_saml_options';

  AwsElasticsearchDomainSamlOptions(
    super.localName, {
    required TfArg<String> domainName,
    TfArg<String>? region,
    ElasticsearchDomainSamlOptions? samlOptions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_name': domainName,
           'region': ?region,
           if (samlOptions != null)
             'saml_options': TfArg.literal(samlOptions.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsElasticsearchDomainSamlOptionsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsElasticsearchDomainSamlOptions>`.
  RefTo<AwsElasticsearchDomainSamlOptions> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
