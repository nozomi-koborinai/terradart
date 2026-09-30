// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

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
    'content_source_configuration': ?contentSourceConfiguration?.encode(),
    'user_identity_configuration': ?userIdentityConfiguration?.encode(),
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

  final TfArg<List<String>>? dataSourceIds;

  final TfArg<bool>? directPutContent;

  final TfArg<List<String>>? faqIds;

  Map<String, Object?> encode() => {
    'data_source_ids': ?dataSourceIds?.toTfJson(),
    'direct_put_content': ?directPutContent?.toTfJson(),
    'faq_ids': ?faqIds?.toTfJson(),
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
    required RefTo<AwsIamRole> roleArn,
    KendraExperienceConfiguration? configuration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'index_id': indexId,
           'name': name,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           if (configuration != null)
             'configuration': TfArg.literal(configuration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKendraExperienceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsKendraExperience>`.
  RefTo<AwsKendraExperience> get ref => RefTo.of(this);

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
