// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ce_tags`.
const Set<String> _awsCeTagsSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ce_tags` (derived from provider schema).
@immutable
final class DataCeTagsFilter {
  const DataCeTagsFilter({
    this.and,
    this.costCategory,
    this.dimension,
    this.not,
    this.or,
    this.tags,
  });

  final List<DataCeTagsAnd>? and;

  final DataCeTagsCostCategory? costCategory;

  final DataCeTagsDimension? dimension;

  final DataCeTagsNot? not;

  final List<DataCeTagsOr>? or;

  final DataCeTagsFilterTags? tags;

  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
    'cost_category': ?costCategory?.encode(),
    'dimension': ?dimension?.encode(),
    'not': ?not?.encode(),
    if (or != null) 'or': [for (final e in or!) e.encode()],
    'tags': ?tags?.encode(),
  };
}

/// Typed helper for the `filter.and` block of
/// `aws_ce_tags` (derived from provider schema).
@immutable
final class DataCeTagsAnd {
  const DataCeTagsAnd({this.costCategory, this.dimension, this.tags});

  final DataCeTagsCostCategory? costCategory;

  final DataCeTagsDimension? dimension;

  final DataCeTagsFilterTags? tags;

  Map<String, Object?> encode() => {
    'cost_category': ?costCategory?.encode(),
    'dimension': ?dimension?.encode(),
    'tags': ?tags?.encode(),
  };
}

/// Typed helper for the `filter.cost_category` block of
/// `aws_ce_tags` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataCeTagsCostCategory {
  const DataCeTagsCostCategory({this.key, this.matchOptions, this.values});

  final TfArg<String>? key;

  final TfArg<List<String>>? matchOptions;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'match_options': ?matchOptions?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `filter.dimension` block of
/// `aws_ce_tags` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataCeTagsDimension {
  const DataCeTagsDimension({this.key, this.matchOptions, this.values});

  final TfArg<String>? key;

  final TfArg<List<String>>? matchOptions;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'match_options': ?matchOptions?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `filter.tags` block of
/// `aws_ce_tags` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataCeTagsFilterTags {
  const DataCeTagsFilterTags({this.key, this.matchOptions, this.values});

  final TfArg<String>? key;

  final TfArg<List<String>>? matchOptions;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'match_options': ?matchOptions?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `filter.not` block of
/// `aws_ce_tags` (derived from provider schema).
@immutable
final class DataCeTagsNot {
  const DataCeTagsNot({this.costCategory, this.dimension, this.tags});

  final DataCeTagsCostCategory? costCategory;

  final DataCeTagsDimension? dimension;

  final DataCeTagsFilterTags? tags;

  Map<String, Object?> encode() => {
    'cost_category': ?costCategory?.encode(),
    'dimension': ?dimension?.encode(),
    'tags': ?tags?.encode(),
  };
}

/// Typed helper for the `filter.or` block of
/// `aws_ce_tags` (derived from provider schema).
@immutable
final class DataCeTagsOr {
  const DataCeTagsOr({this.costCategory, this.dimension, this.tags});

  final DataCeTagsCostCategory? costCategory;

  final DataCeTagsDimension? dimension;

  final DataCeTagsFilterTags? tags;

  Map<String, Object?> encode() => {
    'cost_category': ?costCategory?.encode(),
    'dimension': ?dimension?.encode(),
    'tags': ?tags?.encode(),
  };
}

/// Typed helper for the `sort_by` block of
/// `aws_ce_tags` (derived from provider schema).
@immutable
final class DataCeTagsSortBy {
  const DataCeTagsSortBy({this.key, this.sortOrder});

  final TfArg<String>? key;

  final TfArg<String>? sortOrder;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'sort_order': ?sortOrder?.toTfJson(),
  };
}

/// Typed helper for the `time_period` block of
/// `aws_ce_tags` (derived from provider schema).
@immutable
final class DataCeTagsTimePeriod {
  const DataCeTagsTimePeriod({required this.end, required this.start});

  final TfArg<String> end;

  final TfArg<String> start;

  Map<String, Object?> encode() => {
    'end': end.toTfJson(),
    'start': start.toTfJson(),
  };
}

/// Factory wrapper for `aws_ce_tags`.
final class DataAwsCeTags extends Data {
  static const String tfType = 'aws_ce_tags';

  DataAwsCeTags(
    super.localName, {
    TfArg<String>? searchString,
    TfArg<String>? tagKey,
    DataCeTagsFilter? filter,
    List<DataCeTagsSortBy>? sortBy,
    required DataCeTagsTimePeriod timePeriod,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'search_string': ?searchString,
           'tag_key': ?tagKey,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
           if (sortBy != null)
             'sort_by': TfArg.literal([for (final e in sortBy) e.encode()]),
           'time_period': TfArg.literal(timePeriod.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCeTagsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `tags` attribute.
  TfRef<List<String>> get tags => TfRef.attribute<List<String>>(this, 'tags');

  /// Reference to `search_string` attribute.
  TfRef<String> get searchString =>
      TfRef.attribute<String>(this, 'search_string');

  /// Reference to `tag_key` attribute.
  TfRef<String> get tagKey => TfRef.attribute<String>(this, 'tag_key');
}
