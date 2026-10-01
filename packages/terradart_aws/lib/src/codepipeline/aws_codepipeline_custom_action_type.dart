// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codepipeline_custom_action_type`.
const Set<String> _awsCodepipelineCustomActionTypeSensitive = <String>{};

/// Codepipeline Custom Action Type enum for `category`.
enum CodepipelineCustomActionTypeCategory implements TerraformEnum {
  source('Source'),
  build('Build'),
  deploy('Deploy'),
  test('Test'),
  invoke('Invoke'),
  approval('Approval'),
  compute('Compute');

  const CodepipelineCustomActionTypeCategory(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `configuration_property` block of
/// `aws_codepipeline_custom_action_type` (derived from provider schema).
@immutable
final class CodepipelineCustomActionTypeConfigurationProperty {
  const CodepipelineCustomActionTypeConfigurationProperty({
    this.description,
    required this.key,
    required this.name,
    this.queryable,
    required this.required,
    required this.secret,
    this.type,
  });

  final TfArg<String>? description;

  final TfArg<bool> key;

  final TfArg<String> name;

  final TfArg<bool>? queryable;

  final TfArg<bool> required;

  final TfArg<bool> secret;

  final TfArg<CodepipelineCustomActionType>? type;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'key': key.toTfJson(),
    'name': name.toTfJson(),
    'queryable': ?queryable?.toTfJson(),
    'required': required.toTfJson(),
    'secret': secret.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum CodepipelineCustomActionType implements TerraformEnum {
  string('String'),
  number('Number'),
  boolean('Boolean');

  const CodepipelineCustomActionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `input_artifact_details` block of
/// `aws_codepipeline_custom_action_type` (derived from provider schema).
@immutable
final class CodepipelineCustomActionTypeInputArtifactDetails {
  const CodepipelineCustomActionTypeInputArtifactDetails({
    required this.maximumCount,
    required this.minimumCount,
  });

  final TfArg<num> maximumCount;

  final TfArg<num> minimumCount;

  Map<String, Object?> encode() => {
    'maximum_count': maximumCount.toTfJson(),
    'minimum_count': minimumCount.toTfJson(),
  };
}

/// Typed helper for the `output_artifact_details` block of
/// `aws_codepipeline_custom_action_type` (derived from provider schema).
@immutable
final class CodepipelineCustomActionTypeOutputArtifactDetails {
  const CodepipelineCustomActionTypeOutputArtifactDetails({
    required this.maximumCount,
    required this.minimumCount,
  });

  final TfArg<num> maximumCount;

  final TfArg<num> minimumCount;

  Map<String, Object?> encode() => {
    'maximum_count': maximumCount.toTfJson(),
    'minimum_count': minimumCount.toTfJson(),
  };
}

/// Typed helper for the `settings` block of
/// `aws_codepipeline_custom_action_type` (derived from provider schema).
@immutable
final class CodepipelineCustomActionTypeSettings {
  const CodepipelineCustomActionTypeSettings({
    this.entityUrlTemplate,
    this.executionUrlTemplate,
    this.revisionUrlTemplate,
    this.thirdPartyConfigurationUrl,
  });

  final TfArg<String>? entityUrlTemplate;

  final TfArg<String>? executionUrlTemplate;

  final TfArg<String>? revisionUrlTemplate;

  final TfArg<String>? thirdPartyConfigurationUrl;

  Map<String, Object?> encode() => {
    'entity_url_template': ?entityUrlTemplate?.toTfJson(),
    'execution_url_template': ?executionUrlTemplate?.toTfJson(),
    'revision_url_template': ?revisionUrlTemplate?.toTfJson(),
    'third_party_configuration_url': ?thirdPartyConfigurationUrl?.toTfJson(),
  };
}

/// Factory wrapper for `aws_codepipeline_custom_action_type`.
final class AwsCodepipelineCustomActionType extends Resource {
  static const String tfType = 'aws_codepipeline_custom_action_type';

  AwsCodepipelineCustomActionType({
    required super.localName,
    required TfArg<CodepipelineCustomActionTypeCategory> category,
    required TfArg<String> providerName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> version,
    List<CodepipelineCustomActionTypeConfigurationProperty>?
    configurationProperty,
    required CodepipelineCustomActionTypeInputArtifactDetails
    inputArtifactDetails,
    required CodepipelineCustomActionTypeOutputArtifactDetails
    outputArtifactDetails,
    CodepipelineCustomActionTypeSettings? settings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'category': category,
           'provider_name': providerName,
           'region': ?region,
           'tags': ?tags,
           'version': version,
           if (configurationProperty != null)
             'configuration_property': TfArg.literal([
               for (final e in configurationProperty) e.encode(),
             ]),
           'input_artifact_details': TfArg.literal(
             inputArtifactDetails.encode(),
           ),
           'output_artifact_details': TfArg.literal(
             outputArtifactDetails.encode(),
           ),
           if (settings != null) 'settings': TfArg.literal(settings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodepipelineCustomActionTypeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCodepipelineCustomActionType>`.
  RefTo<AwsCodepipelineCustomActionType> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');

  /// Reference to `category` attribute.
  TfRef<String> get categoryRef => TfRef.attribute<String>(this, 'category');

  /// Reference to `provider_name` attribute.
  TfRef<String> get providerNameRef =>
      TfRef.attribute<String>(this, 'provider_name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `version` attribute.
  TfRef<String> get versionRef => TfRef.attribute<String>(this, 'version');
}
