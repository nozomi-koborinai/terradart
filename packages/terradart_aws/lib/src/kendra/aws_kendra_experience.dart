// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kendra_experience`.
const Set<String> _awsKendraExperienceSensitive = <String>{};

/// Typed helper for the `configuration` block of
/// `aws_kendra_experience` (derived from provider schema).
@immutable
final class KendraExperienceConfiguration {
  const KendraExperienceConfiguration({
    this.contentSourceConfiguration,
    this.userIdentityConfiguration,
  });

  final KendraExperienceConfigurationContentSourceConfiguration?
  contentSourceConfiguration;

  final KendraExperienceConfigurationUserIdentityConfiguration?
  userIdentityConfiguration;

  Map<String, Object?> encode() => {
    if (contentSourceConfiguration != null)
      'content_source_configuration': contentSourceConfiguration!.encode(),
    if (userIdentityConfiguration != null)
      'user_identity_configuration': userIdentityConfiguration!.encode(),
  };
}

/// Typed helper for the `configuration.content_source_configuration` block of
/// `aws_kendra_experience` (derived from provider schema).
@immutable
final class KendraExperienceConfigurationContentSourceConfiguration {
  const KendraExperienceConfigurationContentSourceConfiguration({
    this.dataSourceIds,
    this.directPutContent,
    this.faqIds,
  });

  final TfArg<List<Object?>>? dataSourceIds;

  final TfArg<bool>? directPutContent;

  final TfArg<List<Object?>>? faqIds;

  Map<String, Object?> encode() => {
    if (dataSourceIds != null) 'data_source_ids': dataSourceIds!.toTfJson(),
    if (directPutContent != null)
      'direct_put_content': directPutContent!.toTfJson(),
    if (faqIds != null) 'faq_ids': faqIds!.toTfJson(),
  };
}

/// Typed helper for the `configuration.user_identity_configuration` block of
/// `aws_kendra_experience` (derived from provider schema).
@immutable
final class KendraExperienceConfigurationUserIdentityConfiguration {
  const KendraExperienceConfigurationUserIdentityConfiguration({
    required this.identityAttributeName,
  });

  final TfArg<String> identityAttributeName;

  Map<String, Object?> encode() => {
    'identity_attribute_name': identityAttributeName.toTfJson(),
  };
}

/// Factory wrapper for `aws_kendra_experience`.
final class AwsKendraExperience extends Resource {
  static const String tfType = 'aws_kendra_experience';

  AwsKendraExperience({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> indexId,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    KendraExperienceConfiguration? configuration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'index_id': indexId,
           'name': name,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (configuration != null)
             'configuration': TfArg.literal(configuration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKendraExperienceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `endpoints` attribute.
  TfRef<List<Map<String, Object?>>> get endpoints =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'endpoints');

  /// Reference to `experience_id` attribute.
  TfRef<String> get experienceId =>
      TfRef.attribute<String>(this, 'experience_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
