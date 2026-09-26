// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codecatalyst_dev_environment`.
const Set<String> _awsCodecatalystDevEnvironmentSensitive = <String>{};

/// Typed helper for the `ides` block of
/// `aws_codecatalyst_dev_environment` (derived from provider schema).
@immutable
final class CodecatalystDevEnvironmentIdes {
  const CodecatalystDevEnvironmentIdes({this.name, this.runtime});

  final TfArg<String>? name;

  final TfArg<String>? runtime;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (runtime != null) 'runtime': runtime!.toTfJson(),
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
    if (branchName != null) 'branch_name': branchName!.toTfJson(),
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
    required TfArg<String> instanceType,
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
           if (alias != null) 'alias': alias,
           if (inactivityTimeoutMinutes != null)
             'inactivity_timeout_minutes': inactivityTimeoutMinutes,
           'instance_type': instanceType,
           'project_name': projectName,
           if (region != null) 'region': region,
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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
