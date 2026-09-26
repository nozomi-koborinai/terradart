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

  final List<DataCeTagsFilterAnd>? and;

  final DataCeTagsFilterCostCategory? costCategory;

  final DataCeTagsFilterDimension? dimension;

  final DataCeTagsFilterNot? not;

  final List<DataCeTagsFilterOr>? or;

  final DataCeTagsFilterTags? tags;

  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
    if (costCategory != null) 'cost_category': costCategory!.encode(),
    if (dimension != null) 'dimension': dimension!.encode(),
    if (not != null) 'not': not!.encode(),
    if (or != null) 'or': [for (final e in or!) e.encode()],
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `filter.and` block of
/// `aws_ce_tags` (derived from provider schema).
@immutable
final class DataCeTagsFilterAnd {
  const DataCeTagsFilterAnd({this.costCategory, this.dimension, this.tags});

  final DataCeTagsFilterAndCostCategory? costCategory;

  final DataCeTagsFilterAndDimension? dimension;

  final DataCeTagsFilterAndTags? tags;

  Map<String, Object?> encode() => {
    if (costCategory != null) 'cost_category': costCategory!.encode(),
    if (dimension != null) 'dimension': dimension!.encode(),
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `filter.and.cost_category` block of
/// `aws_ce_tags` (derived from provider schema).
@immutable
final class DataCeTagsFilterAndCostCategory {
  const DataCeTagsFilterAndCostCategory({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter.and.dimension` block of
/// `aws_ce_tags` (derived from provider schema).
@immutable
final class DataCeTagsFilterAndDimension {
  const DataCeTagsFilterAndDimension({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter.and.tags` block of
/// `aws_ce_tags` (derived from provider schema).
@immutable
final class DataCeTagsFilterAndTags {
  const DataCeTagsFilterAndTags({this.key, this.matchOptions, this.values});

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter.cost_category` block of
/// `aws_ce_tags` (derived from provider schema).
@immutable
final class DataCeTagsFilterCostCategory {
  const DataCeTagsFilterCostCategory({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter.dimension` block of
/// `aws_ce_tags` (derived from provider schema).
@immutable
final class DataCeTagsFilterDimension {
  const DataCeTagsFilterDimension({this.key, this.matchOptions, this.values});

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter.not` block of
/// `aws_ce_tags` (derived from provider schema).
@immutable
final class DataCeTagsFilterNot {
  const DataCeTagsFilterNot({this.costCategory, this.dimension, this.tags});

  final DataCeTagsFilterNotCostCategory? costCategory;

  final DataCeTagsFilterNotDimension? dimension;

  final DataCeTagsFilterNotTags? tags;

  Map<String, Object?> encode() => {
    if (costCategory != null) 'cost_category': costCategory!.encode(),
    if (dimension != null) 'dimension': dimension!.encode(),
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `filter.not.cost_category` block of
/// `aws_ce_tags` (derived from provider schema).
@immutable
final class DataCeTagsFilterNotCostCategory {
  const DataCeTagsFilterNotCostCategory({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter.not.dimension` block of
/// `aws_ce_tags` (derived from provider schema).
@immutable
final class DataCeTagsFilterNotDimension {
  const DataCeTagsFilterNotDimension({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter.not.tags` block of
/// `aws_ce_tags` (derived from provider schema).
@immutable
final class DataCeTagsFilterNotTags {
  const DataCeTagsFilterNotTags({this.key, this.matchOptions, this.values});

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter.or` block of
/// `aws_ce_tags` (derived from provider schema).
@immutable
final class DataCeTagsFilterOr {
  const DataCeTagsFilterOr({this.costCategory, this.dimension, this.tags});

  final DataCeTagsFilterOrCostCategory? costCategory;

  final DataCeTagsFilterOrDimension? dimension;

  final DataCeTagsFilterOrTags? tags;

  Map<String, Object?> encode() => {
    if (costCategory != null) 'cost_category': costCategory!.encode(),
    if (dimension != null) 'dimension': dimension!.encode(),
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `filter.or.cost_category` block of
/// `aws_ce_tags` (derived from provider schema).
@immutable
final class DataCeTagsFilterOrCostCategory {
  const DataCeTagsFilterOrCostCategory({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter.or.dimension` block of
/// `aws_ce_tags` (derived from provider schema).
@immutable
final class DataCeTagsFilterOrDimension {
  const DataCeTagsFilterOrDimension({this.key, this.matchOptions, this.values});

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter.or.tags` block of
/// `aws_ce_tags` (derived from provider schema).
@immutable
final class DataCeTagsFilterOrTags {
  const DataCeTagsFilterOrTags({this.key, this.matchOptions, this.values});

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter.tags` block of
/// `aws_ce_tags` (derived from provider schema).
@immutable
final class DataCeTagsFilterTags {
  const DataCeTagsFilterTags({this.key, this.matchOptions, this.values});

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
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
    if (key != null) 'key': key!.toTfJson(),
    if (sortOrder != null) 'sort_order': sortOrder!.toTfJson(),
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

  DataAwsCeTags({
    required super.localName,
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
           if (searchString != null) 'search_string': searchString,
           if (tagKey != null) 'tag_key': tagKey,
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
}
