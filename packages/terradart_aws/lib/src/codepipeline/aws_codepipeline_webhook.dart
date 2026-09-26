// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codepipeline_webhook`.
const Set<String> _awsCodepipelineWebhookSensitive = <String>{
  'authentication_configuration.secret_token',
};

/// Typed helper for the `authentication_configuration` block of
/// `aws_codepipeline_webhook` (derived from provider schema).
@immutable
final class CodepipelineWebhookAuthenticationConfiguration {
  const CodepipelineWebhookAuthenticationConfiguration({
    this.allowedIpRange,
    this.secretToken,
  });

  final TfArg<String>? allowedIpRange;

  final TfArg<String>? secretToken;

  Map<String, Object?> encode() => {
    if (allowedIpRange != null) 'allowed_ip_range': allowedIpRange!.toTfJson(),
    if (secretToken != null) 'secret_token': secretToken!.toTfJson(),
  };
}

/// Typed helper for the `filter` block of
/// `aws_codepipeline_webhook` (derived from provider schema).
@immutable
final class CodepipelineWebhookFilter {
  const CodepipelineWebhookFilter({
    required this.jsonPath,
    required this.matchEquals,
  });

  final TfArg<String> jsonPath;

  final TfArg<String> matchEquals;

  Map<String, Object?> encode() => {
    'json_path': jsonPath.toTfJson(),
    'match_equals': matchEquals.toTfJson(),
  };
}

/// Factory wrapper for `aws_codepipeline_webhook`.
final class AwsCodepipelineWebhook extends Resource {
  static const String tfType = 'aws_codepipeline_webhook';

  AwsCodepipelineWebhook({
    required super.localName,
    required TfArg<String> authentication,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> targetAction,
    required TfArg<String> targetPipeline,
    CodepipelineWebhookAuthenticationConfiguration? authenticationConfiguration,
    required List<CodepipelineWebhookFilter> filter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authentication': authentication,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'target_action': targetAction,
           'target_pipeline': targetPipeline,
           if (authenticationConfiguration != null)
             'authentication_configuration': TfArg.literal(
               authenticationConfiguration.encode(),
             ),
           'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodepipelineWebhookSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');
}
