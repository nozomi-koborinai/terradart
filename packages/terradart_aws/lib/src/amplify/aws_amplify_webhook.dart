// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_amplify_webhook`.
const Set<String> _awsAmplifyWebhookSensitive = <String>{};

/// Factory wrapper for `aws_amplify_webhook`.
final class AwsAmplifyWebhook extends Resource {
  static const String tfType = 'aws_amplify_webhook';

  AwsAmplifyWebhook({
    required super.localName,
    required TfArg<String> appId,
    required TfArg<String> branchName,
    TfArg<String>? description,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_id': appId,
           'branch_name': branchName,
           if (description != null) 'description': description,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAmplifyWebhookSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');
}
