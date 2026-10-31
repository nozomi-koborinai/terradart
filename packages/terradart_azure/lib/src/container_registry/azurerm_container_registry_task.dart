// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_container_registry_task`.
const Set<String> _azurermContainerRegistryTaskSensitive = <String>{
  'base_image_trigger.update_trigger_endpoint',
  'docker_step.context_access_token',
  'docker_step.secret_arguments',
  'encoded_step.context_access_token',
  'encoded_step.secret_values',
  'file_step.context_access_token',
  'file_step.secret_values',
  'registry_credential.custom.password',
  'source_trigger.authentication.refresh_token',
  'source_trigger.authentication.token',
};

/// At most one of `agent_pool_name`, `agent_setting` on `azurerm_container_registry_task`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.agentPoolName(...)`.
sealed class ContainerRegistryTaskAgent {
  const ContainerRegistryTaskAgent();

  /// Sets `agent_pool_name`.
  const factory ContainerRegistryTaskAgent.agentPoolName(
    TfArg<String> agentPoolName,
  ) = ContainerRegistryTaskAgentPoolName;

  /// Sets `agent_setting`.
  const factory ContainerRegistryTaskAgent.agentSetting(
    ContainerRegistryTaskAgentSetting agentSetting,
  ) = ContainerRegistryTaskAgentSettingChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ContainerRegistryTaskAgent.agentPoolName] choice: sets `agent_pool_name`.
final class ContainerRegistryTaskAgentPoolName
    extends ContainerRegistryTaskAgent {
  const ContainerRegistryTaskAgentPoolName(this.agentPoolName);

  final TfArg<String> agentPoolName;

  @internal
  @override
  String get blockKey => 'agent_pool_name';

  @internal
  @override
  Map<String, Object?> encode() => {
    'agent_pool_name': agentPoolName.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'agent_pool_name': agentPoolName};
}

/// The [ContainerRegistryTaskAgent.agentSetting] choice: sets `agent_setting`.
final class ContainerRegistryTaskAgentSettingChoice
    extends ContainerRegistryTaskAgent {
  const ContainerRegistryTaskAgentSettingChoice(this.agentSetting);

  final ContainerRegistryTaskAgentSetting agentSetting;

  @internal
  @override
  String get blockKey => 'agent_setting';

  @internal
  @override
  Map<String, Object?> encode() => {'agent_setting': agentSetting.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'agent_setting': TfArg.literal(agentSetting.encode()),
  };
}

/// At most one of `docker_step`, `encoded_step`, `file_step` on `azurerm_container_registry_task`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.dockerStep(...)`.
sealed class ContainerRegistryTaskStep {
  const ContainerRegistryTaskStep();

  /// Sets `docker_step`.
  const factory ContainerRegistryTaskStep.dockerStep(
    ContainerRegistryTaskDockerStep dockerStep,
  ) = ContainerRegistryTaskDockerStepChoice;

  /// Sets `encoded_step`.
  const factory ContainerRegistryTaskStep.encodedStep(
    ContainerRegistryTaskEncodedStep encodedStep,
  ) = ContainerRegistryTaskEncodedStepChoice;

  /// Sets `file_step`.
  const factory ContainerRegistryTaskStep.fileStep(
    ContainerRegistryTaskFileStep fileStep,
  ) = ContainerRegistryTaskFileStepChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ContainerRegistryTaskStep.dockerStep] choice: sets `docker_step`.
final class ContainerRegistryTaskDockerStepChoice
    extends ContainerRegistryTaskStep {
  const ContainerRegistryTaskDockerStepChoice(this.dockerStep);

  final ContainerRegistryTaskDockerStep dockerStep;

  @internal
  @override
  String get blockKey => 'docker_step';

  @internal
  @override
  Map<String, Object?> encode() => {'docker_step': dockerStep.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'docker_step': TfArg.literal(dockerStep.encode()),
  };
}

/// The [ContainerRegistryTaskStep.encodedStep] choice: sets `encoded_step`.
final class ContainerRegistryTaskEncodedStepChoice
    extends ContainerRegistryTaskStep {
  const ContainerRegistryTaskEncodedStepChoice(this.encodedStep);

  final ContainerRegistryTaskEncodedStep encodedStep;

  @internal
  @override
  String get blockKey => 'encoded_step';

  @internal
  @override
  Map<String, Object?> encode() => {'encoded_step': encodedStep.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'encoded_step': TfArg.literal(encodedStep.encode()),
  };
}

/// The [ContainerRegistryTaskStep.fileStep] choice: sets `file_step`.
final class ContainerRegistryTaskFileStepChoice
    extends ContainerRegistryTaskStep {
  const ContainerRegistryTaskFileStepChoice(this.fileStep);

  final ContainerRegistryTaskFileStep fileStep;

  @internal
  @override
  String get blockKey => 'file_step';

  @internal
  @override
  Map<String, Object?> encode() => {'file_step': fileStep.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'file_step': TfArg.literal(fileStep.encode()),
  };
}

/// Typed helper for the `agent_setting` block of
/// `azurerm_container_registry_task` (derived from provider schema).
@immutable
final class ContainerRegistryTaskAgentSetting {
  const ContainerRegistryTaskAgentSetting({required this.cpu});

  final TfArg<num> cpu;

  @internal
  Map<String, Object?> encode() => {'cpu': cpu.toTfJson()};
}

/// Typed helper for the `base_image_trigger` block of
/// `azurerm_container_registry_task` (derived from provider schema).
@immutable
final class ContainerRegistryTaskBaseImageTrigger {
  const ContainerRegistryTaskBaseImageTrigger({
    this.enabled,
    required this.name,
    required this.type,
    this.updateTriggerEndpoint,
    this.updateTriggerPayloadType,
  });

  final TfArg<bool>? enabled;

  final TfArg<String> name;

  final ContainerRegistryTaskType type;

  final Sensitive<String>? updateTriggerEndpoint;

  final ContainerRegistryTaskUpdateTriggerPayloadType? updateTriggerPayloadType;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'name': name.toTfJson(),
    'type': type.toTfJson(),
    'update_trigger_endpoint': ?updateTriggerEndpoint?.toTfJson(),
    'update_trigger_payload_type': ?updateTriggerPayloadType?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const ContainerRegistryTaskType._(TfArg<String> _)
    implements TfArg<String> {
  ContainerRegistryTaskType.variable(String name)
    : this._(TfArg.variable(name));
  ContainerRegistryTaskType.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerRegistryTaskType.arg(TfArg<String> arg) : this._(arg);

  static const all = ContainerRegistryTaskType._(TfArgLiteral('All'));
  static const runtime = ContainerRegistryTaskType._(TfArgLiteral('Runtime'));

  static const List<ContainerRegistryTaskType> values = [all, runtime];
}

/// `update_trigger_payload_type` — derived from the provider schema description.
extension type const ContainerRegistryTaskUpdateTriggerPayloadType._(
  TfArg<String> _
) implements TfArg<String> {
  ContainerRegistryTaskUpdateTriggerPayloadType.variable(String name)
    : this._(TfArg.variable(name));
  ContainerRegistryTaskUpdateTriggerPayloadType.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerRegistryTaskUpdateTriggerPayloadType.arg(TfArg<String> arg)
    : this._(arg);

  static const defaultCase = ContainerRegistryTaskUpdateTriggerPayloadType._(
    TfArgLiteral('Default'),
  );
  static const token = ContainerRegistryTaskUpdateTriggerPayloadType._(
    TfArgLiteral('Token'),
  );

  static const List<ContainerRegistryTaskUpdateTriggerPayloadType> values = [
    defaultCase,
    token,
  ];
}

/// Typed helper for the `docker_step` block of
/// `azurerm_container_registry_task` (derived from provider schema).
@immutable
final class ContainerRegistryTaskDockerStep {
  const ContainerRegistryTaskDockerStep({
    this.arguments,
    this.cacheEnabled,
    required this.contextAccessToken,
    required this.contextPath,
    required this.dockerfilePath,
    this.imageNames,
    this.pushEnabled,
    this.secretArguments,
    this.target,
  });

  final TfArg<Map<String, String>>? arguments;

  final TfArg<bool>? cacheEnabled;

  final Sensitive<String> contextAccessToken;

  final TfArg<String> contextPath;

  final TfArg<String> dockerfilePath;

  final TfArg<List<String>>? imageNames;

  final TfArg<bool>? pushEnabled;

  final Sensitive<Map<String, String>>? secretArguments;

  final TfArg<String>? target;

  @internal
  Map<String, Object?> encode() => {
    'arguments': ?arguments?.toTfJson(),
    'cache_enabled': ?cacheEnabled?.toTfJson(),
    'context_access_token': contextAccessToken.toTfJson(),
    'context_path': contextPath.toTfJson(),
    'dockerfile_path': dockerfilePath.toTfJson(),
    'image_names': ?imageNames?.toTfJson(),
    'push_enabled': ?pushEnabled?.toTfJson(),
    'secret_arguments': ?secretArguments?.toTfJson(),
    'target': ?target?.toTfJson(),
  };
}

/// Typed helper for the `encoded_step` block of
/// `azurerm_container_registry_task` (derived from provider schema).
@immutable
final class ContainerRegistryTaskEncodedStep {
  const ContainerRegistryTaskEncodedStep({
    this.contextAccessToken,
    this.contextPath,
    this.secretValues,
    required this.taskContent,
    this.valueContent,
    this.values,
  });

  final Sensitive<String>? contextAccessToken;

  final TfArg<String>? contextPath;

  final Sensitive<Map<String, String>>? secretValues;

  final TfArg<String> taskContent;

  final TfArg<String>? valueContent;

  final TfArg<Map<String, String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'context_access_token': ?contextAccessToken?.toTfJson(),
    'context_path': ?contextPath?.toTfJson(),
    'secret_values': ?secretValues?.toTfJson(),
    'task_content': taskContent.toTfJson(),
    'value_content': ?valueContent?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `file_step` block of
/// `azurerm_container_registry_task` (derived from provider schema).
@immutable
final class ContainerRegistryTaskFileStep {
  const ContainerRegistryTaskFileStep({
    this.contextAccessToken,
    this.contextPath,
    this.secretValues,
    required this.taskFilePath,
    this.valueFilePath,
    this.values,
  });

  final Sensitive<String>? contextAccessToken;

  final TfArg<String>? contextPath;

  final Sensitive<Map<String, String>>? secretValues;

  final TfArg<String> taskFilePath;

  final TfArg<String>? valueFilePath;

  final TfArg<Map<String, String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'context_access_token': ?contextAccessToken?.toTfJson(),
    'context_path': ?contextPath?.toTfJson(),
    'secret_values': ?secretValues?.toTfJson(),
    'task_file_path': taskFilePath.toTfJson(),
    'value_file_path': ?valueFilePath?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_container_registry_task` (derived from provider schema).
@immutable
final class ContainerRegistryTaskIdentity {
  const ContainerRegistryTaskIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `platform` block of
/// `azurerm_container_registry_task` (derived from provider schema).
@immutable
final class ContainerRegistryTaskPlatform {
  const ContainerRegistryTaskPlatform({
    this.architecture,
    required this.os,
    this.variant,
  });

  final ContainerRegistryTaskArchitecture? architecture;

  final ContainerRegistryTaskOs os;

  final ContainerRegistryTaskVariant? variant;

  @internal
  Map<String, Object?> encode() => {
    'architecture': ?architecture?.toTfJson(),
    'os': os.toTfJson(),
    'variant': ?variant?.toTfJson(),
  };
}

/// `architecture` — derived from the provider schema description.
extension type const ContainerRegistryTaskArchitecture._(TfArg<String> _)
    implements TfArg<String> {
  ContainerRegistryTaskArchitecture.variable(String name)
    : this._(TfArg.variable(name));
  ContainerRegistryTaskArchitecture.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerRegistryTaskArchitecture.arg(TfArg<String> arg) : this._(arg);

  static const amd64 = ContainerRegistryTaskArchitecture._(
    TfArgLiteral('amd64'),
  );
  static const arm = ContainerRegistryTaskArchitecture._(TfArgLiteral('arm'));
  static const arm64 = ContainerRegistryTaskArchitecture._(
    TfArgLiteral('arm64'),
  );
  static const v386 = ContainerRegistryTaskArchitecture._(TfArgLiteral('386'));
  static const x86 = ContainerRegistryTaskArchitecture._(TfArgLiteral('x86'));

  static const List<ContainerRegistryTaskArchitecture> values = [
    amd64,
    arm,
    arm64,
    v386,
    x86,
  ];
}

/// `os` — derived from the provider schema description.
extension type const ContainerRegistryTaskOs._(TfArg<String> _)
    implements TfArg<String> {
  ContainerRegistryTaskOs.variable(String name) : this._(TfArg.variable(name));
  ContainerRegistryTaskOs.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerRegistryTaskOs.arg(TfArg<String> arg) : this._(arg);

  static const linux = ContainerRegistryTaskOs._(TfArgLiteral('Linux'));
  static const windows = ContainerRegistryTaskOs._(TfArgLiteral('Windows'));

  static const List<ContainerRegistryTaskOs> values = [linux, windows];
}

/// `variant` — derived from the provider schema description.
extension type const ContainerRegistryTaskVariant._(TfArg<String> _)
    implements TfArg<String> {
  ContainerRegistryTaskVariant.variable(String name)
    : this._(TfArg.variable(name));
  ContainerRegistryTaskVariant.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerRegistryTaskVariant.arg(TfArg<String> arg) : this._(arg);

  static const v8 = ContainerRegistryTaskVariant._(TfArgLiteral('v8'));
  static const v7 = ContainerRegistryTaskVariant._(TfArgLiteral('v7'));
  static const v6 = ContainerRegistryTaskVariant._(TfArgLiteral('v6'));

  static const List<ContainerRegistryTaskVariant> values = [v8, v7, v6];
}

/// Typed helper for the `registry_credential` block of
/// `azurerm_container_registry_task` (derived from provider schema).
@immutable
final class ContainerRegistryTaskRegistryCredential {
  const ContainerRegistryTaskRegistryCredential({this.custom, this.source});

  final List<ContainerRegistryTaskCustom>? custom;

  final ContainerRegistryTaskSource? source;

  @internal
  Map<String, Object?> encode() => {
    if (custom != null) 'custom': [for (final e in custom!) e.encode()],
    'source': ?source?.encode(),
  };
}

/// Typed helper for the `registry_credential.custom` block of
/// `azurerm_container_registry_task` (derived from provider schema).
@immutable
final class ContainerRegistryTaskCustom {
  const ContainerRegistryTaskCustom({
    this.identity,
    required this.loginServer,
    this.password,
    this.username,
  });

  final TfArg<String>? identity;

  final TfArg<String> loginServer;

  final Sensitive<String>? password;

  final TfArg<String>? username;

  @internal
  Map<String, Object?> encode() => {
    'identity': ?identity?.toTfJson(),
    'login_server': loginServer.toTfJson(),
    'password': ?password?.toTfJson(),
    'username': ?username?.toTfJson(),
  };
}

/// Typed helper for the `registry_credential.source` block of
/// `azurerm_container_registry_task` (derived from provider schema).
@immutable
final class ContainerRegistryTaskSource {
  const ContainerRegistryTaskSource({required this.loginMode});

  final ContainerRegistryTaskLoginMode loginMode;

  @internal
  Map<String, Object?> encode() => {'login_mode': loginMode.toTfJson()};
}

/// `login_mode` — derived from the provider schema description.
extension type const ContainerRegistryTaskLoginMode._(TfArg<String> _)
    implements TfArg<String> {
  ContainerRegistryTaskLoginMode.variable(String name)
    : this._(TfArg.variable(name));
  ContainerRegistryTaskLoginMode.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerRegistryTaskLoginMode.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = ContainerRegistryTaskLoginMode._(
    TfArgLiteral('Default'),
  );
  static const none = ContainerRegistryTaskLoginMode._(TfArgLiteral('None'));

  static const List<ContainerRegistryTaskLoginMode> values = [
    defaultCase,
    none,
  ];
}

/// Typed helper for the `source_trigger` block of
/// `azurerm_container_registry_task` (derived from provider schema).
@immutable
final class ContainerRegistryTaskSourceTrigger {
  const ContainerRegistryTaskSourceTrigger({
    this.branch,
    this.enabled,
    required this.events,
    required this.name,
    required this.repositoryUrl,
    required this.sourceType,
    this.authentication,
  });

  final TfArg<String>? branch;

  final TfArg<bool>? enabled;

  final EnumList<ContainerRegistryTaskEvents> events;

  final TfArg<String> name;

  final TfArg<String> repositoryUrl;

  final ContainerRegistryTaskSourceType sourceType;

  final ContainerRegistryTaskAuthentication? authentication;

  @internal
  Map<String, Object?> encode() => {
    'branch': ?branch?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'events': events.toTfJson(),
    'name': name.toTfJson(),
    'repository_url': repositoryUrl.toTfJson(),
    'source_type': sourceType.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// `events` — derived from the provider schema description.
extension type const ContainerRegistryTaskEvents._(TfArg<String> _)
    implements TfArg<String> {
  ContainerRegistryTaskEvents.variable(String name)
    : this._(TfArg.variable(name));
  ContainerRegistryTaskEvents.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerRegistryTaskEvents.arg(TfArg<String> arg) : this._(arg);

  static const commit = ContainerRegistryTaskEvents._(TfArgLiteral('commit'));
  static const pullrequest = ContainerRegistryTaskEvents._(
    TfArgLiteral('pullrequest'),
  );

  static const List<ContainerRegistryTaskEvents> values = [commit, pullrequest];
}

/// `source_type` — derived from the provider schema description.
extension type const ContainerRegistryTaskSourceType._(TfArg<String> _)
    implements TfArg<String> {
  ContainerRegistryTaskSourceType.variable(String name)
    : this._(TfArg.variable(name));
  ContainerRegistryTaskSourceType.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerRegistryTaskSourceType.arg(TfArg<String> arg) : this._(arg);

  static const github = ContainerRegistryTaskSourceType._(
    TfArgLiteral('Github'),
  );
  static const visualstudioteamservice = ContainerRegistryTaskSourceType._(
    TfArgLiteral('VisualStudioTeamService'),
  );

  static const List<ContainerRegistryTaskSourceType> values = [
    github,
    visualstudioteamservice,
  ];
}

/// Typed helper for the `source_trigger.authentication` block of
/// `azurerm_container_registry_task` (derived from provider schema).
@immutable
final class ContainerRegistryTaskAuthentication {
  const ContainerRegistryTaskAuthentication({
    this.expireInSeconds,
    this.refreshToken,
    this.scope,
    required this.token,
    required this.tokenType,
  });

  final TfArg<num>? expireInSeconds;

  final Sensitive<String>? refreshToken;

  final TfArg<String>? scope;

  final Sensitive<String> token;

  final ContainerRegistryTaskTokenType tokenType;

  @internal
  Map<String, Object?> encode() => {
    'expire_in_seconds': ?expireInSeconds?.toTfJson(),
    'refresh_token': ?refreshToken?.toTfJson(),
    'scope': ?scope?.toTfJson(),
    'token': token.toTfJson(),
    'token_type': tokenType.toTfJson(),
  };
}

/// `token_type` — derived from the provider schema description.
extension type const ContainerRegistryTaskTokenType._(TfArg<String> _)
    implements TfArg<String> {
  ContainerRegistryTaskTokenType.variable(String name)
    : this._(TfArg.variable(name));
  ContainerRegistryTaskTokenType.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerRegistryTaskTokenType.arg(TfArg<String> arg) : this._(arg);

  static const oauth = ContainerRegistryTaskTokenType._(TfArgLiteral('OAuth'));
  static const pat = ContainerRegistryTaskTokenType._(TfArgLiteral('PAT'));

  static const List<ContainerRegistryTaskTokenType> values = [oauth, pat];
}

/// Typed helper for the `timer_trigger` block of
/// `azurerm_container_registry_task` (derived from provider schema).
@immutable
final class ContainerRegistryTaskTimerTrigger {
  const ContainerRegistryTaskTimerTrigger({
    this.enabled,
    required this.name,
    required this.schedule,
  });

  final TfArg<bool>? enabled;

  final TfArg<String> name;

  final TfArg<String> schedule;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'name': name.toTfJson(),
    'schedule': schedule.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_container_registry_task`.
final class AzurermContainerRegistryTask extends Resource {
  static const String tfType = 'azurerm_container_registry_task';

  AzurermContainerRegistryTask(
    super.localName, {
    ContainerRegistryTaskAgent? agent,
    required TfArg<String> containerRegistryId,
    TfArg<bool>? enabled,
    TfArg<bool>? isSystemTask,
    TfArg<String>? logTemplate,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? timeoutInSeconds,
    ContainerRegistryTaskBaseImageTrigger? baseImageTrigger,
    ContainerRegistryTaskStep? step,
    ContainerRegistryTaskIdentity? identity,
    ContainerRegistryTaskPlatform? platform,
    ContainerRegistryTaskRegistryCredential? registryCredential,
    List<ContainerRegistryTaskSourceTrigger>? sourceTrigger,
    List<ContainerRegistryTaskTimerTrigger>? timerTrigger,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?agent?.argMap,
           'container_registry_id': containerRegistryId,
           'enabled': ?enabled,
           'is_system_task': ?isSystemTask,
           'log_template': ?logTemplate,
           'name': name,
           'tags': ?tags,
           'timeout_in_seconds': ?timeoutInSeconds,
           if (baseImageTrigger != null)
             'base_image_trigger': TfArg.literal(baseImageTrigger.encode()),
           ...?step?.argMap,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (platform != null) 'platform': TfArg.literal(platform.encode()),
           if (registryCredential != null)
             'registry_credential': TfArg.literal(registryCredential.encode()),
           if (sourceTrigger != null)
             'source_trigger': TfArg.literal([
               for (final e in sourceTrigger) e.encode(),
             ]),
           if (timerTrigger != null)
             'timer_trigger': TfArg.literal([
               for (final e in timerTrigger) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermContainerRegistryTaskSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermContainerRegistryTask>`.
  RefTo<AzurermContainerRegistryTask> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `agent_pool_name` attribute.
  TfRef<String> get agentPoolName =>
      TfRef.attribute<String>(this, 'agent_pool_name');

  /// Reference to `container_registry_id` attribute.
  TfRef<String> get containerRegistryId =>
      TfRef.attribute<String>(this, 'container_registry_id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `is_system_task` attribute.
  TfRef<bool> get isSystemTask => TfRef.attribute<bool>(this, 'is_system_task');

  /// Reference to `log_template` attribute.
  TfRef<String> get logTemplate =>
      TfRef.attribute<String>(this, 'log_template');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `timeout_in_seconds` attribute.
  TfRef<num> get timeoutInSeconds =>
      TfRef.attribute<num>(this, 'timeout_in_seconds');
}
