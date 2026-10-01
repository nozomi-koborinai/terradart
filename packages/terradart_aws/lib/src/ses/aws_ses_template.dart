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
           'html': ?html,
           'name': name,
           'region': ?region,
           'subject': ?subject,
           'text': ?text,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSesTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSesTemplate>`.
  RefTo<AwsSesTemplate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `html` attribute.
  TfRef<String> get html => TfRef.attribute<String>(this, 'html');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `subject` attribute.
  TfRef<String> get subject => TfRef.attribute<String>(this, 'subject');

  /// Reference to `text` attribute.
  TfRef<String> get text => TfRef.attribute<String>(this, 'text');
}
