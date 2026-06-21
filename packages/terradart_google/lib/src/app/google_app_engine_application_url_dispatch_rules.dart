// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_app_engine_application_url_dispatch_rules`.
const Set<String> _googleAppEngineApplicationUrlDispatchRulesSensitive =
    <String>{};

/// Factory wrapper for `google_app_engine_application_url_dispatch_rules`.
///
/// Rules to match an HTTP request and dispatch that request to a service.
final class GoogleAppEngineApplicationUrlDispatchRules extends Resource {
  static const String tfType =
      'google_app_engine_application_url_dispatch_rules';

  GoogleAppEngineApplicationUrlDispatchRules({
    required super.localName,
    required TfArg<List<Map<String, dynamic>>> dispatchRules,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dispatch_rules': dispatchRules,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAppEngineApplicationUrlDispatchRulesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
