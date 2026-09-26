// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_pinpoint_email_template`.
const Set<String> _awsPinpointEmailTemplateSensitive = <String>{};

/// Typed helper for the `email_template` block of
/// `aws_pinpoint_email_template` (derived from provider schema).
@immutable
final class PinpointEmailTemplateEmailTemplate {
  const PinpointEmailTemplateEmailTemplate({
    this.defaultSubstitutions,
    this.description,
    this.htmlPart,
    this.recommenderId,
    this.subject,
    this.textPart,
    this.header,
  });

  final TfArg<String>? defaultSubstitutions;

  final TfArg<String>? description;

  final TfArg<String>? htmlPart;

  final TfArg<String>? recommenderId;

  final TfArg<String>? subject;

  final TfArg<String>? textPart;

  final List<PinpointEmailTemplateEmailTemplateHeader>? header;

  Map<String, Object?> encode() => {
    if (defaultSubstitutions != null)
      'default_substitutions': defaultSubstitutions!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (htmlPart != null) 'html_part': htmlPart!.toTfJson(),
    if (recommenderId != null) 'recommender_id': recommenderId!.toTfJson(),
    if (subject != null) 'subject': subject!.toTfJson(),
    if (textPart != null) 'text_part': textPart!.toTfJson(),
    if (header != null) 'header': [for (final e in header!) e.encode()],
  };
}

/// Typed helper for the `email_template.header` block of
/// `aws_pinpoint_email_template` (derived from provider schema).
@immutable
final class PinpointEmailTemplateEmailTemplateHeader {
  const PinpointEmailTemplateEmailTemplateHeader({this.name, this.value});

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Factory wrapper for `aws_pinpoint_email_template`.
final class AwsPinpointEmailTemplate extends Resource {
  static const String tfType = 'aws_pinpoint_email_template';

  AwsPinpointEmailTemplate({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> templateName,
    List<PinpointEmailTemplateEmailTemplate>? emailTemplate,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'template_name': templateName,
           if (emailTemplate != null)
             'email_template': TfArg.literal([
               for (final e in emailTemplate) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPinpointEmailTemplateSensitive;

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
