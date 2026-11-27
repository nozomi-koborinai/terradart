class WrapInitDraft {
  const WrapInitDraft({
    required this.terraformType,
    required this.axes,
    required this.bannerDate,
  });

  final String terraformType;

  final List<WrapInitAxis> axes;

  final DateTime bannerDate;
}

sealed class WrapInitAxis {
  const WrapInitAxis(this.key);

  final String key;
}

final class FilledAxis extends WrapInitAxis {
  const FilledAxis(super.key, this.value);

  final Object value;
}

final class CommentedAxis extends WrapInitAxis {
  const CommentedAxis(super.key, {required this.value, this.banner});

  final Object value;
  final String? banner;
}

final class TodoAxis extends WrapInitAxis {
  const TodoAxis(
    super.key, {
    required this.todoMessage,
    this.seed,
    this.skeleton,
  });

  final String todoMessage;
  final Object? seed;
  final Object? skeleton;
}

final class BannerOnlyAxis extends WrapInitAxis {
  const BannerOnlyAxis(super.key, this.banner);

  final String banner;
}
