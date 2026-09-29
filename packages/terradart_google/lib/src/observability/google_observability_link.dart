// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_observability_link`.
const Set<String> _googleObservabilityLinkSensitive = <String>{};

/// Factory wrapper for `google_observability_link`.
///
/// Link configuration for exposing observability dataset data.
final class GoogleObservabilityLink extends Resource {
  static const String tfType = 'google_observability_link';

  GoogleObservabilityLink({
    required super.localName,
    required TfArg<String> bucket,
    required TfArg<String> dataset,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? displayName,
    required TfArg<String> linkId,
    required TfArg<String> location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           'dataset': dataset,
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'display_name': ?displayName,
           'link_id': linkId,
           'location': location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleObservabilityLinkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleObservabilityLink>`.
  RefTo<GoogleObservabilityLink> get ref => RefTo.of(this);
}
