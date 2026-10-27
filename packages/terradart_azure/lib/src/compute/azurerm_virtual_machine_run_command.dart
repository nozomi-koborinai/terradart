// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_virtual_machine_run_command`.
const Set<String> _azurermVirtualMachineRunCommandSensitive = <String>{
  'error_blob_managed_identity.client_id',
  'error_blob_managed_identity.object_id',
  'output_blob_managed_identity.client_id',
  'output_blob_managed_identity.object_id',
  'protected_parameter.name',
  'protected_parameter.value',
  'run_as_password',
  'source.script_uri_managed_identity.client_id',
  'source.script_uri_managed_identity.object_id',
};

/// At most one of `client_id`, `object_id` on the `error_blob_managed_identity` block of `azurerm_virtual_machine_run_command`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.clientId(...)`.
sealed class VirtualMachineRunCommandErrorBlobManagedIdentity {
  const VirtualMachineRunCommandErrorBlobManagedIdentity();

  /// Sets `client_id`.
  const factory VirtualMachineRunCommandErrorBlobManagedIdentity.clientId(
    Sensitive<String> clientId,
  ) = VirtualMachineRunCommandErrorBlobManagedIdentityClientId;

  /// Sets `object_id`.
  const factory VirtualMachineRunCommandErrorBlobManagedIdentity.objectId(
    Sensitive<String> objectId,
  ) = VirtualMachineRunCommandErrorBlobManagedIdentityObjectId;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [VirtualMachineRunCommandErrorBlobManagedIdentity.clientId] choice: sets `client_id`.
final class VirtualMachineRunCommandErrorBlobManagedIdentityClientId
    extends VirtualMachineRunCommandErrorBlobManagedIdentity {
  const VirtualMachineRunCommandErrorBlobManagedIdentityClientId(this.clientId);

  final Sensitive<String> clientId;

  @internal
  @override
  String get blockKey => 'client_id';

  @internal
  @override
  Map<String, Object?> encode() => {'client_id': clientId.toTfJson()};
}

/// The [VirtualMachineRunCommandErrorBlobManagedIdentity.objectId] choice: sets `object_id`.
final class VirtualMachineRunCommandErrorBlobManagedIdentityObjectId
    extends VirtualMachineRunCommandErrorBlobManagedIdentity {
  const VirtualMachineRunCommandErrorBlobManagedIdentityObjectId(this.objectId);

  final Sensitive<String> objectId;

  @internal
  @override
  String get blockKey => 'object_id';

  @internal
  @override
  Map<String, Object?> encode() => {'object_id': objectId.toTfJson()};
}

/// At most one of `client_id`, `object_id` on the `output_blob_managed_identity` block of `azurerm_virtual_machine_run_command`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.clientId(...)`.
sealed class VirtualMachineRunCommandOutputBlobManagedIdentity {
  const VirtualMachineRunCommandOutputBlobManagedIdentity();

  /// Sets `client_id`.
  const factory VirtualMachineRunCommandOutputBlobManagedIdentity.clientId(
    Sensitive<String> clientId,
  ) = VirtualMachineRunCommandOutputBlobManagedIdentityClientId;

  /// Sets `object_id`.
  const factory VirtualMachineRunCommandOutputBlobManagedIdentity.objectId(
    Sensitive<String> objectId,
  ) = VirtualMachineRunCommandOutputBlobManagedIdentityObjectId;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [VirtualMachineRunCommandOutputBlobManagedIdentity.clientId] choice: sets `client_id`.
final class VirtualMachineRunCommandOutputBlobManagedIdentityClientId
    extends VirtualMachineRunCommandOutputBlobManagedIdentity {
  const VirtualMachineRunCommandOutputBlobManagedIdentityClientId(
    this.clientId,
  );

  final Sensitive<String> clientId;

  @internal
  @override
  String get blockKey => 'client_id';

  @internal
  @override
  Map<String, Object?> encode() => {'client_id': clientId.toTfJson()};
}

/// The [VirtualMachineRunCommandOutputBlobManagedIdentity.objectId] choice: sets `object_id`.
final class VirtualMachineRunCommandOutputBlobManagedIdentityObjectId
    extends VirtualMachineRunCommandOutputBlobManagedIdentity {
  const VirtualMachineRunCommandOutputBlobManagedIdentityObjectId(
    this.objectId,
  );

  final Sensitive<String> objectId;

  @internal
  @override
  String get blockKey => 'object_id';

  @internal
  @override
  Map<String, Object?> encode() => {'object_id': objectId.toTfJson()};
}

/// Typed helper for the `parameter` block of
/// `azurerm_virtual_machine_run_command` (derived from provider schema).
@immutable
final class VirtualMachineRunCommandParameter {
  const VirtualMachineRunCommandParameter({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `protected_parameter` block of
/// `azurerm_virtual_machine_run_command` (derived from provider schema).
@immutable
final class VirtualMachineRunCommandProtectedParameter {
  const VirtualMachineRunCommandProtectedParameter({
    required this.name,
    required this.value,
  });

  final Sensitive<String> name;

  final Sensitive<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `source` block of
/// `azurerm_virtual_machine_run_command` (derived from provider schema).
@immutable
final class VirtualMachineRunCommandSource {
  const VirtualMachineRunCommandSource({
    required this.command,
    this.scriptUriManagedIdentity,
  });

  final VirtualMachineRunCommandSourceCommand command;

  final VirtualMachineRunCommandScriptUriManagedIdentity?
  scriptUriManagedIdentity;

  @internal
  Map<String, Object?> encode() => {
    ...command.encode(),
    'script_uri_managed_identity': ?scriptUriManagedIdentity?.encode(),
  };
}

/// Exactly one of `command_id`, `script`, `script_uri` on the `source` block of `azurerm_virtual_machine_run_command`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.commandId(...)`.
sealed class VirtualMachineRunCommandSourceCommand {
  const VirtualMachineRunCommandSourceCommand();

  /// Sets `command_id`.
  const factory VirtualMachineRunCommandSourceCommand.commandId(
    TfArg<String> commandId,
  ) = VirtualMachineRunCommandSourceCommandId;

  /// Sets `script`.
  const factory VirtualMachineRunCommandSourceCommand.script(
    TfArg<String> script,
  ) = VirtualMachineRunCommandSourceCommandScript;

  /// Sets `script_uri`.
  const factory VirtualMachineRunCommandSourceCommand.scriptUri(
    TfArg<String> scriptUri,
  ) = VirtualMachineRunCommandSourceCommandScriptUri;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [VirtualMachineRunCommandSourceCommand.commandId] choice: sets `command_id`.
final class VirtualMachineRunCommandSourceCommandId
    extends VirtualMachineRunCommandSourceCommand {
  const VirtualMachineRunCommandSourceCommandId(this.commandId);

  final TfArg<String> commandId;

  @internal
  @override
  String get blockKey => 'command_id';

  @internal
  @override
  Map<String, Object?> encode() => {'command_id': commandId.toTfJson()};
}

/// The [VirtualMachineRunCommandSourceCommand.script] choice: sets `script`.
final class VirtualMachineRunCommandSourceCommandScript
    extends VirtualMachineRunCommandSourceCommand {
  const VirtualMachineRunCommandSourceCommandScript(this.script);

  final TfArg<String> script;

  @internal
  @override
  String get blockKey => 'script';

  @internal
  @override
  Map<String, Object?> encode() => {'script': script.toTfJson()};
}

/// The [VirtualMachineRunCommandSourceCommand.scriptUri] choice: sets `script_uri`.
final class VirtualMachineRunCommandSourceCommandScriptUri
    extends VirtualMachineRunCommandSourceCommand {
  const VirtualMachineRunCommandSourceCommandScriptUri(this.scriptUri);

  final TfArg<String> scriptUri;

  @internal
  @override
  String get blockKey => 'script_uri';

  @internal
  @override
  Map<String, Object?> encode() => {'script_uri': scriptUri.toTfJson()};
}

/// At most one of `client_id`, `object_id` on the `source.script_uri_managed_identity` block of `azurerm_virtual_machine_run_command`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.clientId(...)`.
sealed class VirtualMachineRunCommandScriptUriManagedIdentity {
  const VirtualMachineRunCommandScriptUriManagedIdentity();

  /// Sets `client_id`.
  const factory VirtualMachineRunCommandScriptUriManagedIdentity.clientId(
    Sensitive<String> clientId,
  ) = VirtualMachineRunCommandScriptUriManagedIdentityClientId;

  /// Sets `object_id`.
  const factory VirtualMachineRunCommandScriptUriManagedIdentity.objectId(
    Sensitive<String> objectId,
  ) = VirtualMachineRunCommandScriptUriManagedIdentityObjectId;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [VirtualMachineRunCommandScriptUriManagedIdentity.clientId] choice: sets `client_id`.
final class VirtualMachineRunCommandScriptUriManagedIdentityClientId
    extends VirtualMachineRunCommandScriptUriManagedIdentity {
  const VirtualMachineRunCommandScriptUriManagedIdentityClientId(this.clientId);

  final Sensitive<String> clientId;

  @internal
  @override
  String get blockKey => 'client_id';

  @internal
  @override
  Map<String, Object?> encode() => {'client_id': clientId.toTfJson()};
}

/// The [VirtualMachineRunCommandScriptUriManagedIdentity.objectId] choice: sets `object_id`.
final class VirtualMachineRunCommandScriptUriManagedIdentityObjectId
    extends VirtualMachineRunCommandScriptUriManagedIdentity {
  const VirtualMachineRunCommandScriptUriManagedIdentityObjectId(this.objectId);

  final Sensitive<String> objectId;

  @internal
  @override
  String get blockKey => 'object_id';

  @internal
  @override
  Map<String, Object?> encode() => {'object_id': objectId.toTfJson()};
}

/// Factory wrapper for `azurerm_virtual_machine_run_command`.
final class AzurermVirtualMachineRunCommand extends Resource {
  static const String tfType = 'azurerm_virtual_machine_run_command';

  AzurermVirtualMachineRunCommand(
    super.localName, {
    TfArg<String>? errorBlobUri,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? outputBlobUri,
    Sensitive<String>? runAsPassword,
    TfArg<String>? runAsUser,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> virtualMachineId,
    VirtualMachineRunCommandErrorBlobManagedIdentity? errorBlobManagedIdentity,
    VirtualMachineRunCommandOutputBlobManagedIdentity?
    outputBlobManagedIdentity,
    List<VirtualMachineRunCommandParameter>? parameter,
    List<VirtualMachineRunCommandProtectedParameter>? protectedParameter,
    required VirtualMachineRunCommandSource source,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'error_blob_uri': ?errorBlobUri,
           'location': location,
           'name': name,
           'output_blob_uri': ?outputBlobUri,
           'run_as_password': ?runAsPassword,
           'run_as_user': ?runAsUser,
           'tags': ?tags,
           'virtual_machine_id': virtualMachineId,
           if (errorBlobManagedIdentity != null)
             'error_blob_managed_identity': TfArg.literal(
               errorBlobManagedIdentity.encode(),
             ),
           if (outputBlobManagedIdentity != null)
             'output_blob_managed_identity': TfArg.literal(
               outputBlobManagedIdentity.encode(),
             ),
           if (parameter != null)
             'parameter': TfArg.literal([
               for (final e in parameter) e.encode(),
             ]),
           if (protectedParameter != null)
             'protected_parameter': TfArg.literal([
               for (final e in protectedParameter) e.encode(),
             ]),
           'source': TfArg.literal(source.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVirtualMachineRunCommandSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualMachineRunCommand>`.
  RefTo<AzurermVirtualMachineRunCommand> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `instance_view` attribute.
  TfRef<List<Map<String, Object?>>> get instanceView =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'instance_view');

  /// Reference to `error_blob_uri` attribute.
  TfRef<String> get errorBlobUri =>
      TfRef.attribute<String>(this, 'error_blob_uri');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `output_blob_uri` attribute.
  TfRef<String> get outputBlobUri =>
      TfRef.attribute<String>(this, 'output_blob_uri');

  /// Reference to `run_as_password` attribute.
  TfRef<String> get runAsPassword =>
      TfRef.attribute<String>(this, 'run_as_password');

  /// Reference to `run_as_user` attribute.
  TfRef<String> get runAsUser => TfRef.attribute<String>(this, 'run_as_user');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual_machine_id` attribute.
  TfRef<String> get virtualMachineId =>
      TfRef.attribute<String>(this, 'virtual_machine_id');
}
