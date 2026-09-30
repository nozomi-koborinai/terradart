// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../observability/google_observability_bucket.dart'
    show GoogleObservabilityBucket;

/// Sensitive field paths for `google_observability_link`.
const Set<String> _googleObservabilityLinkSensitive = <String>{};

/// Factory wrapper for `google_observability_link`.
///
/// Link configuration for exposing observability dataset data.
final class GoogleObservabilityLink extends Resource {
  static const String tfType = 'google_observability_link';

  GoogleObservabilityLink({
    required super.localName,
    required TfArg<String> linkId,
    required TfArg<String> location,
    required RefTo<GoogleObservabilityBucket> bucket,
    required TfArg<String> dataset,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'link_id': linkId,
           'location': location,
           'bucket': bucket.encodeAs('bucket_id'),
           'dataset': dataset,
           'display_name': ?displayName,
           'description': ?description,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleObservabilityLinkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleObservabilityLink>`.
  RefTo<GoogleObservabilityLink> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');
}
