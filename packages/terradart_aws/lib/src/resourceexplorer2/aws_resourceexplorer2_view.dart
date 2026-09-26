// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_resourceexplorer2_view`.
const Set<String> _awsResourceexplorer2ViewSensitive = <String>{};

/// Typed helper for the `filters` block of
/// `aws_resourceexplorer2_view` (derived from provider schema).
@immutable
final class Resourceexplorer2ViewFilters {
  const Resourceexplorer2ViewFilters({required this.filterString});

  final TfArg<String> filterString;

  Map<String, Object?> encode() => {'filter_string': filterString.toTfJson()};
}

/// Typed helper for the `included_property` block of
/// `aws_resourceexplorer2_view` (derived from provider schema).
@immutable
final class Resourceexplorer2ViewIncludedProperty {
  const Resourceexplorer2ViewIncludedProperty({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Factory wrapper for `aws_resourceexplorer2_view`.
final class AwsResourceexplorer2View extends Resource {
  static const String tfType = 'aws_resourceexplorer2_view';

  AwsResourceexplorer2View({
    required super.localName,
    TfArg<bool>? defaultView,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? scope,
    TfArg<Map<String, String>>? tags,
    List<Resourceexplorer2ViewFilters>? filters,
    List<Resourceexplorer2ViewIncludedProperty>? includedProperty,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (defaultView != null) 'default_view': defaultView,
           'name': name,
           if (region != null) 'region': region,
           if (scope != null) 'scope': scope,
           if (tags != null) 'tags': tags,
           if (filters != null)
             'filters': TfArg.literal([for (final e in filters) e.encode()]),
           if (includedProperty != null)
             'included_property': TfArg.literal([
               for (final e in includedProperty) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsResourceexplorer2ViewSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
