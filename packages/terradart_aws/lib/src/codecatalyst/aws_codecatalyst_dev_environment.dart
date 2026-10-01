// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codecatalyst_dev_environment`.
const Set<String> _awsCodecatalystDevEnvironmentSensitive = <String>{};

/// Codecatalyst Dev Environment Instance enum for `instance_type`.
enum CodecatalystDevEnvironmentInstanceType implements TerraformEnum {
  devStandard1Small('dev.standard1.small'),
  devStandard1Medium('dev.standard1.medium'),
  devStandard1Large('dev.standard1.large'),
  devStandard1Xlarge('dev.standard1.xlarge');

  const CodecatalystDevEnvironmentInstanceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `ides` block of
/// `aws_codecatalyst_dev_environment` (derived from provider schema).
@immutable
final class CodecatalystDevEnvironmentIdes {
  const CodecatalystDevEnvironmentIdes({this.name, this.runtime});

  final TfArg<String>? name;

  final TfArg<String>? runtime;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'runtime': ?runtime?.toTfJson(),
  };
}

/// Typed helper for the `persistent_storage` block of
/// `aws_codecatalyst_dev_environment` (derived from provider schema).
@immutable
final class CodecatalystDevEnvironmentPersistentStorage {
  const CodecatalystDevEnvironmentPersistentStorage({required this.size});

  final TfArg<num> size;

  Map<String, Object?> encode() => {'size': size.toTfJson()};
}

/// Typed helper for the `repositories` block of
/// `aws_codecatalyst_dev_environment` (derived from provider schema).
@immutable
final class CodecatalystDevEnvironmentRepositories {
  const CodecatalystDevEnvironmentRepositories({
    this.branchName,
    required this.repositoryName,
  });

  final TfArg<String>? branchName;

  final TfArg<String> repositoryName;

  Map<String, Object?> encode() => {
    'branch_name': ?branchName?.toTfJson(),
    'repository_name': repositoryName.toTfJson(),
  };
}

/// Factory wrapper for `aws_codecatalyst_dev_environment`.
final class AwsCodecatalystDevEnvironment extends Resource {
  static const String tfType = 'aws_codecatalyst_dev_environment';

  AwsCodecatalystDevEnvironment({
    required super.localName,
    TfArg<String>? alias,
    TfArg<num>? inactivityTimeoutMinutes,
    required TfArg<CodecatalystDevEnvironmentInstanceType> instanceType,
    required TfArg<String> projectName,
    TfArg<String>? region,
    required TfArg<String> spaceName,
    required CodecatalystDevEnvironmentIdes ides,
    required CodecatalystDevEnvironmentPersistentStorage persistentStorage,
    List<CodecatalystDevEnvironmentRepositories>? repositories,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'alias': ?alias,
           'inactivity_timeout_minutes': ?inactivityTimeoutMinutes,
           'instance_type': instanceType,
           'project_name': projectName,
           'region': ?region,
           'space_name': spaceName,
           'ides': TfArg.literal(ides.encode()),
           'persistent_storage': TfArg.literal(persistentStorage.encode()),
           if (repositories != null)
             'repositories': TfArg.literal([
               for (final e in repositories) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodecatalystDevEnvironmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCodecatalystDevEnvironment>`.
  RefTo<AwsCodecatalystDevEnvironment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `alias` attribute.
  TfRef<String> get alias => TfRef.attribute<String>(this, 'alias');

  /// Reference to `inactivity_timeout_minutes` attribute.
  TfRef<num> get inactivityTimeoutMinutes =>
      TfRef.attribute<num>(this, 'inactivity_timeout_minutes');

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceType =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `project_name` attribute.
  TfRef<String> get projectName =>
      TfRef.attribute<String>(this, 'project_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `space_name` attribute.
  TfRef<String> get spaceName => TfRef.attribute<String>(this, 'space_name');
}
