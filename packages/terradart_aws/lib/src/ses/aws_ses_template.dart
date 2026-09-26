// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ses_template`.
const Set<String> _awsSesTemplateSensitive = <String>{};

/// Factory wrapper for `aws_ses_template`.
final class AwsSesTemplate extends Resource {
  static const String tfType = 'aws_ses_template';

  AwsSesTemplate({
    required super.localName,
    TfArg<String>? html,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? subject,
    TfArg<String>? text,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (html != null) 'html': html,
           'name': name,
           if (region != null) 'region': region,
           if (subject != null) 'subject': subject,
           if (text != null) 'text': text,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSesTemplateSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
