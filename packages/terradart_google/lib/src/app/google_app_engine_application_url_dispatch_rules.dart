// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_app_engine_application_url_dispatch_rules`.
const Set<String> _googleAppEngineApplicationUrlDispatchRulesSensitive =
    <String>{};

/// Typed helper for the `dispatch_rules` block of
/// `google_app_engine_application_url_dispatch_rules` (derived from provider schema).
@immutable
final class AppEngineApplicationUrlDispatchRules {
  const AppEngineApplicationUrlDispatchRules({
    this.domain,
    required this.path,
    required this.service,
  });

  final TfArg<String>? domain;

  final TfArg<String> path;

  final TfArg<String> service;

  Map<String, Object?> encode() => {
    'domain': ?domain?.toTfJson(),
    'path': path.toTfJson(),
    'service': service.toTfJson(),
  };
}

/// Factory wrapper for `google_app_engine_application_url_dispatch_rules`.
///
/// Rules to match an HTTP request and dispatch that request to a service.
final class GoogleAppEngineApplicationUrlDispatchRules extends Resource {
  static const String tfType =
      'google_app_engine_application_url_dispatch_rules';

  GoogleAppEngineApplicationUrlDispatchRules({
    required super.localName,
    required List<AppEngineApplicationUrlDispatchRules> dispatchRules,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dispatch_rules': TfArg.literal([
             for (final e in dispatchRules) e.encode(),
           ]),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAppEngineApplicationUrlDispatchRulesSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAppEngineApplicationUrlDispatchRules>`.
  RefTo<GoogleAppEngineApplicationUrlDispatchRules> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
