// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codepipeline_custom_action_type`.
const Set<String> _awsCodepipelineCustomActionTypeSensitive = <String>{};

/// Codepipeline Custom Action Type enum for `category`.
extension type const CodepipelineCustomActionTypeCategory._(TfArg<String> _)
    implements TfArg<String> {
  CodepipelineCustomActionTypeCategory.variable(String name)
    : this._(TfArg.variable(name));
  CodepipelineCustomActionTypeCategory.expression(String template)
    : this._(TfArg.expression(template));
  const CodepipelineCustomActionTypeCategory.arg(TfArg<String> arg)
    : this._(arg);

  static const source = CodepipelineCustomActionTypeCategory._(
    TfArgLiteral('Source'),
  );
  static const build = CodepipelineCustomActionTypeCategory._(
    TfArgLiteral('Build'),
  );
  static const deploy = CodepipelineCustomActionTypeCategory._(
    TfArgLiteral('Deploy'),
  );
  static const test = CodepipelineCustomActionTypeCategory._(
    TfArgLiteral('Test'),
  );
  static const invoke = CodepipelineCustomActionTypeCategory._(
    TfArgLiteral('Invoke'),
  );
  static const approval = CodepipelineCustomActionTypeCategory._(
    TfArgLiteral('Approval'),
  );
  static const compute = CodepipelineCustomActionTypeCategory._(
    TfArgLiteral('Compute'),
  );

  static const List<CodepipelineCustomActionTypeCategory> values = [
    source,
    build,
    deploy,
    test,
    invoke,
    approval,
    compute,
  ];
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

  final CodepipelineCustomActionType? type;

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
extension type const CodepipelineCustomActionType._(TfArg<String> _)
    implements TfArg<String> {
  CodepipelineCustomActionType.variable(String name)
    : this._(TfArg.variable(name));
  CodepipelineCustomActionType.expression(String template)
    : this._(TfArg.expression(template));
  const CodepipelineCustomActionType.arg(TfArg<String> arg) : this._(arg);

  static const string = CodepipelineCustomActionType._(TfArgLiteral('String'));
  static const number = CodepipelineCustomActionType._(TfArgLiteral('Number'));
  static const boolean = CodepipelineCustomActionType._(
    TfArgLiteral('Boolean'),
  );

  static const List<CodepipelineCustomActionType> values = [
    string,
    number,
    boolean,
  ];
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

  AwsCodepipelineCustomActionType(
    super.localName, {
    required CodepipelineCustomActionTypeCategory category,
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
  TfRef<String> get category => TfRef.attribute<String>(this, 'category');

  /// Reference to `provider_name` attribute.
  TfRef<String> get providerName =>
      TfRef.attribute<String>(this, 'provider_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
