// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_run_domain_mapping`.
const Set<String> _googleCloudRunDomainMappingSensitive = <String>{};

/// Typed helper for the `metadata` block of
/// `google_cloud_run_domain_mapping` (derived from provider schema).
@immutable
final class CloudRunDomainMappingMetadata {
  const CloudRunDomainMappingMetadata({
    this.annotations,
    this.labels,
    required this.namespace,
  });

  final TfArg<Map<String, String>>? annotations;

  final TfArg<Map<String, String>>? labels;

  final TfArg<String> namespace;

  Map<String, Object?> encode() => {
    if (annotations != null) 'annotations': annotations!.toTfJson(),
    if (labels != null) 'labels': labels!.toTfJson(),
    'namespace': namespace.toTfJson(),
  };
}

/// Typed helper for the `spec` block of
/// `google_cloud_run_domain_mapping` (derived from provider schema).
@immutable
final class CloudRunDomainMappingSpec {
  const CloudRunDomainMappingSpec({
    this.certificateMode,
    this.forceOverride,
    required this.routeName,
  });

  final TfArg<CloudRunDomainMappingSpecCertificateMode>? certificateMode;

  final TfArg<bool>? forceOverride;

  final TfArg<String> routeName;

  Map<String, Object?> encode() => {
    if (certificateMode != null)
      'certificate_mode': certificateMode!.toTfJson(),
    if (forceOverride != null) 'force_override': forceOverride!.toTfJson(),
    'route_name': routeName.toTfJson(),
  };
}

/// `certificate_mode` — derived from the provider schema description.
enum CloudRunDomainMappingSpecCertificateMode implements TerraformEnum {
  none('NONE'),
  automatic('AUTOMATIC');

  const CloudRunDomainMappingSpecCertificateMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_cloud_run_domain_mapping`.
///
/// Resource to hold the state and status of a user's domain mapping.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleCloudRunDomainMapping extends Resource {
  static const String tfType = 'google_cloud_run_domain_mapping';

  GoogleCloudRunDomainMapping({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? project,
    CloudRunDomainMappingMetadata? metadata,
    required CloudRunDomainMappingSpec spec,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'location': location,
           'name': name,
           if (project != null) 'project': project,
           if (metadata != null) 'metadata': TfArg.literal(metadata.encode()),
           'spec': TfArg.literal(spec.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudRunDomainMappingSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `status` attribute.
  TfRef<List<Map<String, Object?>>> get status =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'status');
}
