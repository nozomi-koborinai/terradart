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
    'default_substitutions': ?defaultSubstitutions?.toTfJson(),
    'description': ?description?.toTfJson(),
    'html_part': ?htmlPart?.toTfJson(),
    'recommender_id': ?recommenderId?.toTfJson(),
    'subject': ?subject?.toTfJson(),
    'text_part': ?textPart?.toTfJson(),
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
    'name': ?name?.toTfJson(),
    'value': ?value?.toTfJson(),
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
           'region': ?region,
           'tags': ?tags,
           'template_name': templateName,
           if (emailTemplate != null)
             'email_template': TfArg.literal([
               for (final e in emailTemplate) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPinpointEmailTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPinpointEmailTemplate>`.
  RefTo<AwsPinpointEmailTemplate> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `template_name` attribute.
  TfRef<String> get templateNameRef =>
      TfRef.attribute<String>(this, 'template_name');
}
