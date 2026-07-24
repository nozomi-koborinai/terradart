// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_commitment`.
const Set<String> _googleComputeRegionCommitmentSensitive = <String>{};

/// Compute Region Commitment enum for `category`.
enum ComputeRegionCommitmentCategory implements TerraformEnum {
  license('LICENSE'),
  machine('MACHINE');

  const ComputeRegionCommitmentCategory(this.terraformValue);
  @override
  final String terraformValue;
}

/// Compute Region Commitment enum for `plan`.
enum ComputeRegionCommitmentPlan implements TerraformEnum {
  twelveMonth('TWELVE_MONTH'),
  thirtySixMonth('THIRTY_SIX_MONTH');

  const ComputeRegionCommitmentPlan(this.terraformValue);
  @override
  final String terraformValue;
}

/// Compute Region Commitment enum for `status`.
enum ComputeRegionCommitmentStatus implements TerraformEnum {
  notYetActive('NOT_YET_ACTIVE'),
  active('ACTIVE'),
  expired('EXPIRED');

  const ComputeRegionCommitmentStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `license_resource` block of
/// `google_compute_region_commitment` (derived from provider schema).
@immutable
final class ComputeRegionCommitmentLicenseResource {
  const ComputeRegionCommitmentLicenseResource({
    this.amount,
    this.coresPerLicense,
    required this.license,
  });

  final TfArg<String>? amount;

  final TfArg<String>? coresPerLicense;

  final TfArg<String> license;

  Map<String, Object?> encode() => {
    if (amount != null) 'amount': amount!.toTfJson(),
    if (coresPerLicense != null)
      'cores_per_license': coresPerLicense!.toTfJson(),
    'license': license.toTfJson(),
  };
}

/// Typed helper for the `params` block of
/// `google_compute_region_commitment` (derived from provider schema).
@immutable
final class ComputeRegionCommitmentParams {
  const ComputeRegionCommitmentParams({this.resourceManagerTags});

  final TfArg<Map<String, String>>? resourceManagerTags;

  Map<String, Object?> encode() => {
    if (resourceManagerTags != null)
      'resource_manager_tags': resourceManagerTags!.toTfJson(),
  };
}

/// Typed helper for the `resources` block of
/// `google_compute_region_commitment` (derived from provider schema).
@immutable
final class ComputeRegionCommitmentResources {
  const ComputeRegionCommitmentResources({
    this.acceleratorType,
    this.amount,
    this.type,
  });

  final TfArg<String>? acceleratorType;

  final TfArg<String>? amount;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    if (acceleratorType != null)
      'accelerator_type': acceleratorType!.toTfJson(),
    if (amount != null) 'amount': amount!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_region_commitment`.
///
/// Represents a regional Commitment resource.
///
/// Creating a commitment resource means that you are purchasing a committed use
/// contract with an explicit start and end time. You can create commitments
/// based on vCPUs and memory usage and receive discounted rates.
///
/// Compute Engine **regional commitment** — purchased committed-use contract
/// for vCPU / memory (and related resource types) in a region.
///
/// **Cost / apply:** Compute Engine `6F81-5844-456A` bills commitment SKUs
/// for the contract term (e.g. Commitment v1 Cpu Virginia 1 Year SKU
/// `00EE-95C9-2FF9` **$0.021309/h** per vCPU; N1 Cpu Phoenix 1 Year
/// `41AB-ED04-F989` **$0.019915/h**). Provider MM sets
/// `exclude_delete: true` — Terraform **cannot destroy** the commitment,
/// so apply would strand a paid contract until term end.
/// Ships without a quickstart (`tool/example_debt.yaml`). **Never** wire
/// into apply-smoke.
///
/// [plan] is `TWELVE_MONTH` or `THIRTY_SIX_MONTH`. Pair with [resources]
/// amounts (vCPU / MEMORY / …).
final class GoogleComputeRegionCommitment extends Resource {
  static const String tfType = 'google_compute_region_commitment';

  GoogleComputeRegionCommitment({
    required super.localName,
    required TfArg<String> name,
    required TfArg<ComputeRegionCommitmentPlan> plan,
    TfArg<String>? region,
    List<ComputeRegionCommitmentResources>? resources,
    TfArg<String>? type,
    TfArg<ComputeRegionCommitmentCategory>? category,
    TfArg<String>? description,
    TfArg<bool>? autoRenew,
    TfArg<String>? existingReservations,
    ComputeRegionCommitmentLicenseResource? licenseResource,
    ComputeRegionCommitmentParams? params,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'plan': plan,
           if (region != null) 'region': region,
           if (resources != null)
             'resources': TfArg.literal([
               for (final e in resources) e.encode(),
             ]),
           if (type != null) 'type': type,
           if (category != null) 'category': category,
           if (description != null) 'description': description,
           if (autoRenew != null) 'auto_renew': autoRenew,
           if (existingReservations != null)
             'existing_reservations': existingReservations,
           if (licenseResource != null)
             'license_resource': TfArg.literal(licenseResource.encode()),
           if (params != null) 'params': TfArg.literal(params.encode()),
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRegionCommitmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `commitment_id` attribute.
  TfRef<num> get commitmentId => TfRef.attribute<num>(this, 'commitment_id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `end_timestamp` attribute.
  TfRef<String> get endTimestamp =>
      TfRef.attribute<String>(this, 'end_timestamp');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `start_timestamp` attribute.
  TfRef<String> get startTimestamp =>
      TfRef.attribute<String>(this, 'start_timestamp');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_message` attribute.
  TfRef<String> get statusMessage =>
      TfRef.attribute<String>(this, 'status_message');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
