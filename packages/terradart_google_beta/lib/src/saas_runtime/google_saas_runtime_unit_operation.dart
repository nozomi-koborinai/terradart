// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_saas_runtime_unit_operation`.
const Set<String> _googleSaasRuntimeUnitOperationSensitive = <String>{};

/// Typed helper for the `deprovision` block of
/// `google_saas_runtime_unit_operation` (derived from provider schema).
@immutable
final class SaasRuntimeUnitOperationDeprovision {
  const SaasRuntimeUnitOperationDeprovision();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `provision` block of
/// `google_saas_runtime_unit_operation` (derived from provider schema).
@immutable
final class SaasRuntimeUnitOperationProvision {
  const SaasRuntimeUnitOperationProvision({this.release, this.inputVariables});

  final TfArg<String>? release;

  final List<SaasRuntimeUnitOperationProvisionInputVariables>? inputVariables;

  Map<String, Object?> encode() => {
    'release': ?release?.toTfJson(),
    if (inputVariables != null)
      'input_variables': [for (final e in inputVariables!) e.encode()],
  };
}

/// Typed helper for the `provision.input_variables` block of
/// `google_saas_runtime_unit_operation` (derived from provider schema).
@immutable
final class SaasRuntimeUnitOperationProvisionInputVariables {
  const SaasRuntimeUnitOperationProvisionInputVariables({
    this.type,
    this.value,
    required this.variable,
  });

  final TfArg<String>? type;

  final TfArg<String>? value;

  final TfArg<String> variable;

  Map<String, Object?> encode() => {
    'type': ?type?.toTfJson(),
    'value': ?value?.toTfJson(),
    'variable': variable.toTfJson(),
  };
}

/// Typed helper for the `upgrade` block of
/// `google_saas_runtime_unit_operation` (derived from provider schema).
@immutable
final class SaasRuntimeUnitOperationUpgrade {
  const SaasRuntimeUnitOperationUpgrade({this.release, this.inputVariables});

  final TfArg<String>? release;

  final List<SaasRuntimeUnitOperationUpgradeInputVariables>? inputVariables;

  Map<String, Object?> encode() => {
    'release': ?release?.toTfJson(),
    if (inputVariables != null)
      'input_variables': [for (final e in inputVariables!) e.encode()],
  };
}

/// Typed helper for the `upgrade.input_variables` block of
/// `google_saas_runtime_unit_operation` (derived from provider schema).
@immutable
final class SaasRuntimeUnitOperationUpgradeInputVariables {
  const SaasRuntimeUnitOperationUpgradeInputVariables({
    this.type,
    this.value,
    required this.variable,
  });

  final TfArg<String>? type;

  final TfArg<String>? value;

  final TfArg<String> variable;

  Map<String, Object?> encode() => {
    'type': ?type?.toTfJson(),
    'value': ?value?.toTfJson(),
    'variable': variable.toTfJson(),
  };
}

/// Factory wrapper for `google_saas_runtime_unit_operation`.
///
/// A UnitOperation encapsulates the intent to change or interact with a Unit.
/// Operations such as provisioning, upgrading, or deprovisioning a Unit are
/// triggered by creating a UnitOperation resource.
final class GoogleSaasRuntimeUnitOperation extends Resource {
  static const String tfType = 'google_saas_runtime_unit_operation';

  GoogleSaasRuntimeUnitOperation({
    required super.localName,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? deletionPolicy,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> unit,
    required TfArg<String> unitOperationId,
    TfArg<bool>? waitForCompletion,
    SaasRuntimeUnitOperationDeprovision? deprovision,
    SaasRuntimeUnitOperationProvision? provision,
    SaasRuntimeUnitOperationUpgrade? upgrade,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'annotations': ?annotations,
           'deletion_policy': ?deletionPolicy,
           'labels': ?labels,
           'location': location,
           'project': ?project,
           'unit': unit,
           'unit_operation_id': unitOperationId,
           'wait_for_completion': ?waitForCompletion,
           if (deprovision != null)
             'deprovision': TfArg.literal(deprovision.encode()),
           if (provision != null)
             'provision': TfArg.literal(provision.encode()),
           if (upgrade != null) 'upgrade': TfArg.literal(upgrade.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSaasRuntimeUnitOperationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSaasRuntimeUnitOperation>`.
  RefTo<GoogleSaasRuntimeUnitOperation> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `conditions` attribute.
  TfRef<List<Map<String, Object?>>> get conditions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'conditions');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `engine_state` attribute.
  TfRef<String> get engineState =>
      TfRef.attribute<String>(this, 'engine_state');

  /// Reference to `error_category` attribute.
  TfRef<String> get errorCategory =>
      TfRef.attribute<String>(this, 'error_category');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
