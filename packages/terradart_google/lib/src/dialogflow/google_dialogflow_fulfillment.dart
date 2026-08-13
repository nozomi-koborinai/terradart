// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_fulfillment`.
const Set<String> _googleDialogflowFulfillmentSensitive = <String>{};

/// Typed helper for the `features` block of
/// `google_dialogflow_fulfillment` (derived from provider schema).
@immutable
final class DialogflowFulfillmentFeatures {
  const DialogflowFulfillmentFeatures({required this.type});

  final TfArg<String> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Typed helper for the `generic_web_service` block of
/// `google_dialogflow_fulfillment` (derived from provider schema).
@immutable
final class DialogflowFulfillmentGenericWebService {
  const DialogflowFulfillmentGenericWebService({
    this.password,
    this.requestHeaders,
    required this.uri,
    this.username,
  });

  final TfArg<String>? password;

  final TfArg<Map<String, String>>? requestHeaders;

  final TfArg<String> uri;

  final TfArg<String>? username;

  Map<String, Object?> encode() => {
    if (password != null) 'password': password!.toTfJson(),
    if (requestHeaders != null) 'request_headers': requestHeaders!.toTfJson(),
    'uri': uri.toTfJson(),
    if (username != null) 'username': username!.toTfJson(),
  };
}

/// Factory wrapper for `google_dialogflow_fulfillment`.
///
/// By default, your agent responds to a matched intent with a static response.
/// If you're using one of the integration options, you can provide a more
/// dynamic response by using fulfillment. When you enable fulfillment for an
/// intent, Dialogflow responds to that intent by calling a service that you
/// define. For example, if an end-user wants to schedule a haircut on Friday,
/// your service can check your database and respond to the end-user with
/// availability information for Friday.
///
/// Dialogflow ES **fulfillment** — singleton webhook config on the
/// per-project ES agent (`PATCH` create / update / delete).
///
/// Creating this resource overwrites the agent's existing fulfillment
/// the same way upstream Terraform does.
///
/// **Cost:** gcp-cost: Cloud Dialogflow `FBC0-AA4A-C89A` Intent Detection
/// Text Query Operations for Enterprise Essentials Agents `114B-F183-612D`
/// **$0.002/count**. billing-behavior: fulfillment is design-time
/// config; query SKUs fire only on DetectIntent (this factory never
/// invokes it). A configured `generic_web_service` URI is not called
/// until an intent match. Enable `dialogflow.googleapis.com` before
/// apply. The ES agent is a per-project singleton — create
/// [GoogleDialogflowAgent] first.
final class GoogleDialogflowFulfillment extends Resource {
  static const String tfType = 'google_dialogflow_fulfillment';

  GoogleDialogflowFulfillment({
    required super.localName,
    required TfArg<String> displayName,
    TfArg<bool>? enabled,
    List<DialogflowFulfillmentFeatures>? features,
    DialogflowFulfillmentGenericWebService? genericWebService,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           if (enabled != null) 'enabled': enabled,
           if (features != null)
             'features': TfArg.literal([for (final e in features) e.encode()]),
           if (genericWebService != null)
             'generic_web_service': TfArg.literal(genericWebService.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowFulfillmentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
