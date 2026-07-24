// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_colab_runtime`.
const Set<String> _googleColabRuntimeSensitive = <String>{};

/// Terraform `desired_state` for [GoogleColabRuntime].
///
/// Default in the provider is `RUNNING` (starts a Colab Enterprise VM).
/// Prefer `STOPPED` when experimenting locally — still too expensive for
/// apply-smoke (management fee + GCE while the runtime has ever run).
enum ColabRuntimeDesiredState implements TerraformEnum {
  running('RUNNING'),
  stopped('STOPPED');

  const ColabRuntimeDesiredState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `notebook_runtime_template_ref` block of
/// `google_colab_runtime` (derived from provider schema).
@immutable
final class ColabRuntimeNotebookRuntimeTemplateRef {
  const ColabRuntimeNotebookRuntimeTemplateRef({
    required this.notebookRuntimeTemplate,
  });

  final TfArg<String> notebookRuntimeTemplate;

  Map<String, Object?> encode() => {
    'notebook_runtime_template': notebookRuntimeTemplate.toTfJson(),
  };
}

/// Factory wrapper for `google_colab_runtime`.
///
/// 'A runtime is a Google-provisioned virtual machine (VM) that can run the
/// code in your notebook (IPYNB file).'
///
/// Colab Enterprise **runtime** — a Google-provisioned VM that runs
/// notebook code (assign from a [GoogleColabRuntimeTemplate]).
///
/// **Cost:** Vertex AI (`C7E2-9256-1C43`) `Vertex Colab *` SKUs bill
/// while the runtime VM runs (e.g. N2 CPU usage us-central1
/// `7362-581B-29B4` $0.0379332/h + E2 RAM `9215-A98F-C4CD`
/// $0.003508236/GiBy·h). Destroy stops charges. Too expensive for
/// apply-smoke — ships without a quickstart (`tool/example_debt.yaml`).
///
/// Enable `aiplatform.googleapis.com` via [GoogleProjectService] before
/// apply. Pair [notebookRuntimeTemplateRef] with an in-stack template.
final class GoogleColabRuntime extends Resource {
  static const String tfType = 'google_colab_runtime';

  GoogleColabRuntime({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> displayName,
    required TfArg<String> runtimeUser,
    ColabRuntimeNotebookRuntimeTemplateRef? notebookRuntimeTemplateRef,
    TfArg<String>? name,
    TfArg<String>? description,
    TfArg<ColabRuntimeDesiredState>? desiredState,
    TfArg<bool>? autoUpgrade,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'display_name': displayName,
           'runtime_user': runtimeUser,
           if (notebookRuntimeTemplateRef != null)
             'notebook_runtime_template_ref': TfArg.literal(
               notebookRuntimeTemplateRef.encode(),
             ),
           if (name != null) 'name': name,
           if (description != null) 'description': description,
           if (desiredState != null) 'desired_state': desiredState,
           if (autoUpgrade != null) 'auto_upgrade': autoUpgrade,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleColabRuntimeSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `expiration_time` attribute.
  TfRef<String> get expirationTime =>
      TfRef.attribute<String>(this, 'expiration_time');

  /// Reference to `is_upgradable` attribute.
  TfRef<bool> get isUpgradable => TfRef.attribute<bool>(this, 'is_upgradable');

  /// Reference to `notebook_runtime_type` attribute.
  TfRef<String> get notebookRuntimeType =>
      TfRef.attribute<String>(this, 'notebook_runtime_type');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
