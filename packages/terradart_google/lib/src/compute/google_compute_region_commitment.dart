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

  final TfArg<String>? type;

  @internal
  Map<String, Object?> encode() => {
    'accelerator_type': ?acceleratorType?.toTfJson(),
    'amount': ?amount?.toTfJson(),
    'type': ?type?.toTfJson(),
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
    TfArg<String>? type,
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
