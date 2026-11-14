// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_google/src/eventarc/google_eventarc_message_bus.dart'
    show EventarcMessageBusLoggingConfig;
import 'package:terradart_core/terradart_core.dart';

import '../eventarc/google_eventarc_message_bus.dart'
    show GoogleEventarcMessageBus;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_eventarc_google_api_source`.
const Set<String> _googleEventarcGoogleApiSourceSensitive = <String>{};

/// At most one of `organization_subscription`, `project_subscriptions` on `google_eventarc_google_api_source`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.organizationSubscription(...)`.
sealed class EventarcGoogleApiSourceSubscriptions {
  const EventarcGoogleApiSourceSubscriptions();

  /// Sets `organization_subscription`.
  const factory EventarcGoogleApiSourceSubscriptions.organizationSubscription(
    EventarcGoogleApiSourceOrganizationSubscription organizationSubscription,
  ) = EventarcGoogleApiSourceSubscriptionsOrganizationSubscription;

  /// Sets `project_subscriptions`.
  const factory EventarcGoogleApiSourceSubscriptions.projectSubscriptions(
    EventarcGoogleApiSourceProjectSubscriptions projectSubscriptions,
  ) = EventarcGoogleApiSourceProjectSubscriptionsChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [EventarcGoogleApiSourceSubscriptions.organizationSubscription] choice: sets `organization_subscription`.
final class EventarcGoogleApiSourceSubscriptionsOrganizationSubscription
    extends EventarcGoogleApiSourceSubscriptions {
  const EventarcGoogleApiSourceSubscriptionsOrganizationSubscription(
    this.organizationSubscription,
  );

  final EventarcGoogleApiSourceOrganizationSubscription
  organizationSubscription;

  @internal
  @override
  String get blockKey => 'organization_subscription';

  @internal
  @override
  Map<String, Object?> encode() => {
    'organization_subscription': organizationSubscription.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'organization_subscription': TfArg.literal(
      organizationSubscription.encode(),
    ),
  };
}

/// The [EventarcGoogleApiSourceSubscriptions.projectSubscriptions] choice: sets `project_subscriptions`.
final class EventarcGoogleApiSourceProjectSubscriptionsChoice
    extends EventarcGoogleApiSourceSubscriptions {
  const EventarcGoogleApiSourceProjectSubscriptionsChoice(
    this.projectSubscriptions,
  );

  final EventarcGoogleApiSourceProjectSubscriptions projectSubscriptions;

  @internal
  @override
  String get blockKey => 'project_subscriptions';

  @internal
  @override
  Map<String, Object?> encode() => {
    'project_subscriptions': projectSubscriptions.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'project_subscriptions': TfArg.literal(projectSubscriptions.encode()),
  };
}

/// Typed helper for the `organization_subscription` block of
/// `google_eventarc_google_api_source` (derived from provider schema).
@immutable
final class EventarcGoogleApiSourceOrganizationSubscription {
  const EventarcGoogleApiSourceOrganizationSubscription({
    required this.enabled,
  });

  final TfArg<bool> enabled;

  @internal
  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `project_subscriptions` block of
/// `google_eventarc_google_api_source` (derived from provider schema).
@immutable
final class EventarcGoogleApiSourceProjectSubscriptions {
  const EventarcGoogleApiSourceProjectSubscriptions({required this.list});

  final TfArg<List<String>> list;

  @internal
  Map<String, Object?> encode() => {'list': list.toTfJson()};
}

/// Factory wrapper for `google_eventarc_google_api_source`.
///
/// The Eventarc GoogleApiSource resource
final class GoogleEventarcGoogleApiSource extends Resource {
  static const String tfType = 'google_eventarc_google_api_source';

  GoogleEventarcGoogleApiSource(
    super.localName, {
    TfArg<Map<String, String>>? annotations,
    RefTo<GoogleKmsCryptoKey>? cryptoKeyName,
    required RefTo<GoogleEventarcMessageBus> destination,
    TfArg<String>? displayName,
    required TfArg<String> googleApiSourceId,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    EventarcMessageBusLoggingConfig? loggingConfig,
    EventarcGoogleApiSourceSubscriptions? subscriptions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'annotations': ?annotations,
           'crypto_key_name': ?cryptoKeyName?.encodeAs('id'),
           'destination': destination.encodeAs('name'),
           'display_name': ?displayName,
           'google_api_source_id': googleApiSourceId,
           'labels': ?labels,
           'location': location,
           'project': ?project,
           if (loggingConfig != null)
             'logging_config': TfArg.literal([loggingConfig.encode()]),
           ...?subscriptions?.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEventarcGoogleApiSourceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleEventarcGoogleApiSource>`.
  RefTo<GoogleEventarcGoogleApiSource> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `crypto_key_name` attribute.
  TfRef<String> get cryptoKeyName =>
      TfRef.attribute<String>(this, 'crypto_key_name');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `destination` attribute.
  TfRef<String> get destination => TfRef.attribute<String>(this, 'destination');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `google_api_source_id` attribute.
  TfRef<String> get googleApiSourceId =>
      TfRef.attribute<String>(this, 'google_api_source_id');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
