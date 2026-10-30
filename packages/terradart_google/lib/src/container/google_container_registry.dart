// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_container_registry`.
const Set<String> _googleContainerRegistrySensitive = <String>{};

/// Container Registry enum for `location`.
extension type const ContainerRegistryLocation._(TfArg<String> _)
    implements TfArg<String> {
  ContainerRegistryLocation.variable(String name)
    : this._(TfArg.variable(name));
  ContainerRegistryLocation.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerRegistryLocation.arg(TfArg<String> arg) : this._(arg);

  static const asia = ContainerRegistryLocation._(TfArgLiteral('ASIA'));
  static const eu = ContainerRegistryLocation._(TfArgLiteral('EU'));
  static const us = ContainerRegistryLocation._(TfArgLiteral('US'));

  static const List<ContainerRegistryLocation> values = [asia, eu, us];
}

/// Factory wrapper for `google_container_registry`.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleContainerRegistry extends Resource {
  static const String tfType = 'google_container_registry';

  GoogleContainerRegistry(
    super.localName, {
    ContainerRegistryLocation? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'location': ?location, 'project': ?project},
       );

  @override
  Set<String> get sensitiveFields => _googleContainerRegistrySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleContainerRegistry>`.
  RefTo<GoogleContainerRegistry> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bucket_self_link` attribute.
  TfRef<String> get bucketSelfLink =>
      TfRef.attribute<String>(this, 'bucket_self_link');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
