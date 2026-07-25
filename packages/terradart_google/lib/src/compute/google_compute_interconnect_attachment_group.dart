// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_interconnect_attachment_group`.
const Set<String> _googleComputeInterconnectAttachmentGroupSensitive =
    <String>{};

/// Typed helper for the `attachments` block of
/// `google_compute_interconnect_attachment_group` (derived from provider schema).
@immutable
final class ComputeInterconnectAttachmentGroupAttachments {
  const ComputeInterconnectAttachmentGroupAttachments({
    this.attachment,
    required this.name,
  });

  final TfArg<String>? attachment;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    if (attachment != null) 'attachment': attachment!.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `intent` block of
/// `google_compute_interconnect_attachment_group` (derived from provider schema).
@immutable
final class ComputeInterconnectAttachmentGroupIntent {
  const ComputeInterconnectAttachmentGroupIntent({this.availabilitySla});

  final TfArg<ComputeInterconnectAttachmentGroupIntentAvailabilitySla>?
  availabilitySla;

  Map<String, Object?> encode() => {
    if (availabilitySla != null)
      'availability_sla': availabilitySla!.toTfJson(),
  };
}

/// `availability_sla` — derived from the provider schema description.
enum ComputeInterconnectAttachmentGroupIntentAvailabilitySla
    implements TerraformEnum {
  productionNonCritical('PRODUCTION_NON_CRITICAL'),
  productionCritical('PRODUCTION_CRITICAL'),
  noSla('NO_SLA'),
  availabilitySlaUnspecified('AVAILABILITY_SLA_UNSPECIFIED');

  const ComputeInterconnectAttachmentGroupIntentAvailabilitySla(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_compute_interconnect_attachment_group`.
///
/// An interconnect attachment group resource allows customers to create,
/// analyze, and expand highly available deployments.
///
/// Compute Engine **Interconnect attachment group** — groups VLAN
/// attachments (optionally under an [GoogleComputeInterconnectGroup]) for
/// availability-SLA intent.
///
/// **Cost / apply:** Physical interconnect / VLAN attachments bill while
/// provisioned (e.g. Cloud Interconnect 10Gbps Dedicated circuit SKU
/// `B8C8-2F76-E648` **$2.328/h** on Compute Engine `6F81-5844-456A`).
/// Debt-only — **never** wire into apply-smoke.
///
/// [intent] is required.
final class GoogleComputeInterconnectAttachmentGroup extends Resource {
  static const String tfType = 'google_compute_interconnect_attachment_group';

  GoogleComputeInterconnectAttachmentGroup({
    required super.localName,
    required TfArg<String> name,
    required ComputeInterconnectAttachmentGroupIntent intent,
    TfArg<String>? interconnectGroup,
    List<ComputeInterconnectAttachmentGroupAttachments>? attachments,
    TfArg<String>? description,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'intent': TfArg.literal(intent.encode()),
           if (interconnectGroup != null)
             'interconnect_group': interconnectGroup,
           if (attachments != null)
             'attachments': TfArg.literal([
               for (final e in attachments) e.encode(),
             ]),
           if (description != null) 'description': description,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeInterconnectAttachmentGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `configured` attribute.
  TfRef<List<Map<String, Object?>>> get configured =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'configured');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `logical_structure` attribute.
  TfRef<List<Map<String, Object?>>> get logicalStructure =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'logical_structure');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
