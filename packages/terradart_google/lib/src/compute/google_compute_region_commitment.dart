// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_commitment`.
const Set<String> _googleComputeRegionCommitmentSensitive = <String>{};

/// Compute Region Commitment enum for `category`.
extension type const ComputeRegionCommitmentCategory._(TfArg<String> _)
    implements TfArg<String> {
  ComputeRegionCommitmentCategory.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionCommitmentCategory.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRegionCommitmentCategory.arg(TfArg<String> arg) : this._(arg);

  static const license = ComputeRegionCommitmentCategory._(
    TfArgLiteral('LICENSE'),
  );
  static const machine = ComputeRegionCommitmentCategory._(
    TfArgLiteral('MACHINE'),
  );

  static const List<ComputeRegionCommitmentCategory> values = [
    license,
    machine,
  ];
}

/// Compute Region Commitment enum for `plan`.
extension type const ComputeRegionCommitmentPlan._(TfArg<String> _)
    implements TfArg<String> {
  ComputeRegionCommitmentPlan.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionCommitmentPlan.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRegionCommitmentPlan.arg(TfArg<String> arg) : this._(arg);

  static const twelveMonth = ComputeRegionCommitmentPlan._(
    TfArgLiteral('TWELVE_MONTH'),
  );
  static const thirtySixMonth = ComputeRegionCommitmentPlan._(
    TfArgLiteral('THIRTY_SIX_MONTH'),
  );

  static const List<ComputeRegionCommitmentPlan> values = [
    twelveMonth,
    thirtySixMonth,
  ];
}

/// Compute Region Commitment enum for `status`.
extension type const ComputeRegionCommitmentStatus._(TfArg<String> _)
    implements TfArg<String> {
  ComputeRegionCommitmentStatus.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionCommitmentStatus.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRegionCommitmentStatus.arg(TfArg<String> arg) : this._(arg);

  static const notYetActive = ComputeRegionCommitmentStatus._(
    TfArgLiteral('NOT_YET_ACTIVE'),
  );
  static const active = ComputeRegionCommitmentStatus._(TfArgLiteral('ACTIVE'));
  static const expired = ComputeRegionCommitmentStatus._(
    TfArgLiteral('EXPIRED'),
  );

  static const List<ComputeRegionCommitmentStatus> values = [
    notYetActive,
    active,
    expired,
  ];
}

/// Compute Region Commitment enum for `type`.
extension type const ComputeRegionCommitmentType._(TfArg<String> _)
    implements TfArg<String> {
  ComputeRegionCommitmentType.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionCommitmentType.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRegionCommitmentType.arg(TfArg<String> arg) : this._(arg);

  static const acceleratorOptimized = ComputeRegionCommitmentType._(
    TfArgLiteral('ACCELERATOR_OPTIMIZED'),
  );
  static const acceleratorOptimizedA3 = ComputeRegionCommitmentType._(
    TfArgLiteral('ACCELERATOR_OPTIMIZED_A3'),
  );
  static const acceleratorOptimizedA3Mega = ComputeRegionCommitmentType._(
    TfArgLiteral('ACCELERATOR_OPTIMIZED_A3_MEGA'),
  );
  static const acceleratorOptimizedA3Ultra = ComputeRegionCommitmentType._(
    TfArgLiteral('ACCELERATOR_OPTIMIZED_A3_ULTRA'),
  );
  static const acceleratorOptimizedA4 = ComputeRegionCommitmentType._(
    TfArgLiteral('ACCELERATOR_OPTIMIZED_A4'),
  );
  static const computeOptimized = ComputeRegionCommitmentType._(
    TfArgLiteral('COMPUTE_OPTIMIZED'),
  );
  static const computeOptimizedC2d = ComputeRegionCommitmentType._(
    TfArgLiteral('COMPUTE_OPTIMIZED_C2D'),
  );
  static const computeOptimizedC3 = ComputeRegionCommitmentType._(
    TfArgLiteral('COMPUTE_OPTIMIZED_C3'),
  );
  static const computeOptimizedC3d = ComputeRegionCommitmentType._(
    TfArgLiteral('COMPUTE_OPTIMIZED_C3D'),
  );
  static const computeOptimizedH3 = ComputeRegionCommitmentType._(
    TfArgLiteral('COMPUTE_OPTIMIZED_H3'),
  );
  static const computeOptimizedH4d = ComputeRegionCommitmentType._(
    TfArgLiteral('COMPUTE_OPTIMIZED_H4D'),
  );
  static const generalPurpose = ComputeRegionCommitmentType._(
    TfArgLiteral('GENERAL_PURPOSE'),
  );
  static const generalPurposeC4 = ComputeRegionCommitmentType._(
    TfArgLiteral('GENERAL_PURPOSE_C4'),
  );
  static const generalPurposeC4a = ComputeRegionCommitmentType._(
    TfArgLiteral('GENERAL_PURPOSE_C4A'),
  );
  static const generalPurposeC4d = ComputeRegionCommitmentType._(
    TfArgLiteral('GENERAL_PURPOSE_C4D'),
  );
  static const generalPurposeE2 = ComputeRegionCommitmentType._(
    TfArgLiteral('GENERAL_PURPOSE_E2'),
  );
  static const generalPurposeN2 = ComputeRegionCommitmentType._(
    TfArgLiteral('GENERAL_PURPOSE_N2'),
  );
  static const generalPurposeN2d = ComputeRegionCommitmentType._(
    TfArgLiteral('GENERAL_PURPOSE_N2D'),
  );
  static const generalPurposeN4 = ComputeRegionCommitmentType._(
    TfArgLiteral('GENERAL_PURPOSE_N4'),
  );
  static const generalPurposeN4a = ComputeRegionCommitmentType._(
    TfArgLiteral('GENERAL_PURPOSE_N4A'),
  );
  static const generalPurposeN4d = ComputeRegionCommitmentType._(
    TfArgLiteral('GENERAL_PURPOSE_N4D'),
  );
  static const generalPurposeT2d = ComputeRegionCommitmentType._(
    TfArgLiteral('GENERAL_PURPOSE_T2D'),
  );
  static const graphicsOptimized = ComputeRegionCommitmentType._(
    TfArgLiteral('GRAPHICS_OPTIMIZED'),
  );
  static const graphicsOptimizedG4 = ComputeRegionCommitmentType._(
    TfArgLiteral('GRAPHICS_OPTIMIZED_G4'),
  );
  static const graphicsOptimizedG4Vgpu = ComputeRegionCommitmentType._(
    TfArgLiteral('GRAPHICS_OPTIMIZED_G4_VGPU'),
  );
  static const memoryOptimized = ComputeRegionCommitmentType._(
    TfArgLiteral('MEMORY_OPTIMIZED'),
  );
  static const memoryOptimizedM3 = ComputeRegionCommitmentType._(
    TfArgLiteral('MEMORY_OPTIMIZED_M3'),
  );
  static const memoryOptimizedM4 = ComputeRegionCommitmentType._(
    TfArgLiteral('MEMORY_OPTIMIZED_M4'),
  );
  static const memoryOptimizedM46tb = ComputeRegionCommitmentType._(
    TfArgLiteral('MEMORY_OPTIMIZED_M4_6TB'),
  );
  static const memoryOptimizedX4144024t = ComputeRegionCommitmentType._(
    TfArgLiteral('MEMORY_OPTIMIZED_X4_1440_24T'),
  );
  static const memoryOptimizedX416tb = ComputeRegionCommitmentType._(
    TfArgLiteral('MEMORY_OPTIMIZED_X4_16TB'),
  );
  static const memoryOptimizedX4192032t = ComputeRegionCommitmentType._(
    TfArgLiteral('MEMORY_OPTIMIZED_X4_1920_32T'),
  );
  static const memoryOptimizedX424tb = ComputeRegionCommitmentType._(
    TfArgLiteral('MEMORY_OPTIMIZED_X4_24TB'),
  );
  static const memoryOptimizedX432tb = ComputeRegionCommitmentType._(
    TfArgLiteral('MEMORY_OPTIMIZED_X4_32TB'),
  );
  static const memoryOptimizedX44806t = ComputeRegionCommitmentType._(
    TfArgLiteral('MEMORY_OPTIMIZED_X4_480_6T'),
  );
  static const memoryOptimizedX44808t = ComputeRegionCommitmentType._(
    TfArgLiteral('MEMORY_OPTIMIZED_X4_480_8T'),
  );
  static const memoryOptimizedX496012t = ComputeRegionCommitmentType._(
    TfArgLiteral('MEMORY_OPTIMIZED_X4_960_12T'),
  );
  static const memoryOptimizedX496016t = ComputeRegionCommitmentType._(
    TfArgLiteral('MEMORY_OPTIMIZED_X4_960_16T'),
  );
  static const networkOptimizedC4n = ComputeRegionCommitmentType._(
    TfArgLiteral('NETWORK_OPTIMIZED_C4N'),
  );
  static const networkOptimizedU4c = ComputeRegionCommitmentType._(
    TfArgLiteral('NETWORK_OPTIMIZED_U4C'),
  );
  static const networkOptimizedU4p = ComputeRegionCommitmentType._(
    TfArgLiteral('NETWORK_OPTIMIZED_U4P'),
  );
  static const networkOptimizedU4s = ComputeRegionCommitmentType._(
    TfArgLiteral('NETWORK_OPTIMIZED_U4S'),
  );
  static const storageOptimizedZ3 = ComputeRegionCommitmentType._(
    TfArgLiteral('STORAGE_OPTIMIZED_Z3'),
  );
  static const storageOptimizedZ4d4t = ComputeRegionCommitmentType._(
    TfArgLiteral('STORAGE_OPTIMIZED_Z4D4T'),
  );
  static const storageOptimizedZ4dh = ComputeRegionCommitmentType._(
    TfArgLiteral('STORAGE_OPTIMIZED_Z4DH'),
  );
  static const storageOptimizedZ4ds = ComputeRegionCommitmentType._(
    TfArgLiteral('STORAGE_OPTIMIZED_Z4DS'),
  );

  static const List<ComputeRegionCommitmentType> values = [
    acceleratorOptimized,
    acceleratorOptimizedA3,
    acceleratorOptimizedA3Mega,
    acceleratorOptimizedA3Ultra,
    acceleratorOptimizedA4,
    computeOptimized,
    computeOptimizedC2d,
    computeOptimizedC3,
    computeOptimizedC3d,
    computeOptimizedH3,
    computeOptimizedH4d,
    generalPurpose,
    generalPurposeC4,
    generalPurposeC4a,
    generalPurposeC4d,
    generalPurposeE2,
    generalPurposeN2,
    generalPurposeN2d,
    generalPurposeN4,
    generalPurposeN4a,
    generalPurposeN4d,
    generalPurposeT2d,
    graphicsOptimized,
    graphicsOptimizedG4,
    graphicsOptimizedG4Vgpu,
    memoryOptimized,
    memoryOptimizedM3,
    memoryOptimizedM4,
    memoryOptimizedM46tb,
    memoryOptimizedX4144024t,
    memoryOptimizedX416tb,
    memoryOptimizedX4192032t,
    memoryOptimizedX424tb,
    memoryOptimizedX432tb,
    memoryOptimizedX44806t,
    memoryOptimizedX44808t,
    memoryOptimizedX496012t,
    memoryOptimizedX496016t,
    networkOptimizedC4n,
    networkOptimizedU4c,
    networkOptimizedU4p,
    networkOptimizedU4s,
    storageOptimizedZ3,
    storageOptimizedZ4d4t,
    storageOptimizedZ4dh,
    storageOptimizedZ4ds,
  ];
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

  @internal
  Map<String, Object?> encode() => {
    'amount': ?amount?.toTfJson(),
    'cores_per_license': ?coresPerLicense?.toTfJson(),
    'license': license.toTfJson(),
  };
}

/// Typed helper for the `params` block of
/// `google_compute_region_commitment` (derived from provider schema).
@immutable
final class ComputeRegionCommitmentParams {
  const ComputeRegionCommitmentParams({this.resourceManagerTags});

  final TfArg<Map<String, String>>? resourceManagerTags;

  @internal
  Map<String, Object?> encode() => {
    'resource_manager_tags': ?resourceManagerTags?.toTfJson(),
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

  final ComputeRegionCommitmentResourcesType? type;

  @internal
  Map<String, Object?> encode() => {
    'accelerator_type': ?acceleratorType?.toTfJson(),
    'amount': ?amount?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const ComputeRegionCommitmentResourcesType._(TfArg<String> _)
    implements TfArg<String> {
  ComputeRegionCommitmentResourcesType.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionCommitmentResourcesType.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRegionCommitmentResourcesType.arg(TfArg<String> arg)
    : this._(arg);

  static const accelerator = ComputeRegionCommitmentResourcesType._(
    TfArgLiteral('ACCELERATOR'),
  );
  static const localSsd = ComputeRegionCommitmentResourcesType._(
    TfArgLiteral('LOCAL_SSD'),
  );
  static const memory = ComputeRegionCommitmentResourcesType._(
    TfArgLiteral('MEMORY'),
  );
  static const vcpu = ComputeRegionCommitmentResourcesType._(
    TfArgLiteral('VCPU'),
  );

  static const List<ComputeRegionCommitmentResourcesType> values = [
    accelerator,
    localSsd,
    memory,
    vcpu,
  ];
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
///
/// Debt-only factory — CI retrigger marker.
final class GoogleComputeRegionCommitment extends Resource {
  static const String tfType = 'google_compute_region_commitment';

  GoogleComputeRegionCommitment(
    super.localName, {
    required TfArg<String> name,
    required ComputeRegionCommitmentPlan plan,
    TfArg<String>? region,
    List<ComputeRegionCommitmentResources>? resources,
    ComputeRegionCommitmentType? type,
    ComputeRegionCommitmentCategory? category,
    TfArg<String>? description,
    TfArg<bool>? autoRenew,
    TfArg<String>? existingReservations,
    ComputeRegionCommitmentLicenseResource? licenseResource,
    ComputeRegionCommitmentParams? params,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'plan': plan,
           'region': ?region,
           if (resources != null)
             'resources': TfArg.literal([
               for (final e in resources) e.encode(),
             ]),
           'type': ?type,
           'category': ?category,
           'description': ?description,
           'auto_renew': ?autoRenew,
           'existing_reservations': ?existingReservations,
           if (licenseResource != null)
             'license_resource': TfArg.literal(licenseResource.encode()),
           if (params != null) 'params': TfArg.literal(params.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRegionCommitmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionCommitment>`.
  RefTo<GoogleComputeRegionCommitment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `auto_renew` attribute.
  TfRef<bool> get autoRenew => TfRef.attribute<bool>(this, 'auto_renew');

  /// Reference to `category` attribute.
  TfRef<String> get category => TfRef.attribute<String>(this, 'category');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `existing_reservations` attribute.
  TfRef<String> get existingReservations =>
      TfRef.attribute<String>(this, 'existing_reservations');

  /// Reference to `plan` attribute.
  TfRef<String> get plan => TfRef.attribute<String>(this, 'plan');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
