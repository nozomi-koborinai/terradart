// render_coverage_page.dart — generate the site's /docs/coverage/ pages.
//
// Renders website/src/content/docs/docs/coverage/: an overview (index.md)
// plus one page per provider package, each from that package's
// wrap-generated catalog (package:terradart_<provider>/catalog.dart) and a
// tfType → example back-reference map walked out of synthed
// examples/*_quickstart/tf-out/main.tf.json files. The committed pages are
// GENERATED artifacts: humans edit this generator, never the markdown.
//
// Usage:
//   dart tool/example_synth_gates.dart --skip-validate   # populate tf-out
//   dart tool/render_coverage_page.dart                  # write the pages
//   dart tool/render_coverage_page.dart --check          # verify freshness
//
// --check exits 1 when a committed page differs from a fresh render, or a
// page no provider renders is left in the directory (CI runs it on the
// synth-equipped job; a bump that moves a catalog needs the pages
// regenerated before it can merge).
// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:terradart_appwrite/catalog.dart' as appwrite;
import 'package:terradart_aws/catalog.dart' as aws;
import 'package:terradart_cloudflare/catalog.dart' as cloudflare;
import 'package:terradart_google/catalog.dart' as google;
import 'package:terradart_google_beta/catalog.dart' as google_beta;

const _outputDir = 'website/src/content/docs/docs/coverage';

typedef CatalogItem = ({
  String tfType,
  String className,
  String barrel,
  String kind,
});

typedef CoverageRow = ({
  String tfType,
  String className,
  String barrel,
  String kind,
  List<String> examples,
});

/// One provider package's coverage page: [slug] names the page
/// (`coverage/<slug>.md`), [title] the provider, [source] its registry
/// address.
typedef CoverageProvider = ({
  String slug,
  String title,
  String package,
  String source,
  List<CatalogItem> catalog,
});

/// Every provider package with a catalog, in the order the site lists them.
final List<CoverageProvider> providers = [
  (
    slug: 'google',
    title: 'Google Cloud',
    package: 'terradart_google',
    source: 'hashicorp/google',
    catalog: [
      for (final e in google.terradartCatalog)
        (
          tfType: e.tfType,
          className: e.className,
          barrel: e.barrel,
          kind: e.kind.name,
        ),
    ],
  ),
  (
    slug: 'google-beta',
    title: 'Google Cloud (beta-only)',
    package: 'terradart_google_beta',
    source: 'hashicorp/google-beta',
    catalog: [
      for (final e in google_beta.terradartCatalog)
        (
          tfType: e.tfType,
          className: e.className,
          barrel: e.barrel,
          kind: e.kind.name,
        ),
    ],
  ),
  (
    slug: 'aws',
    title: 'AWS',
    package: 'terradart_aws',
    source: 'hashicorp/aws',
    catalog: [
      for (final e in aws.terradartCatalog)
        (
          tfType: e.tfType,
          className: e.className,
          barrel: e.barrel,
          kind: e.kind.name,
        ),
    ],
  ),
  (
    slug: 'cloudflare',
    title: 'Cloudflare',
    package: 'terradart_cloudflare',
    source: 'cloudflare/cloudflare',
    catalog: [
      for (final e in cloudflare.terradartCatalog)
        (
          tfType: e.tfType,
          className: e.className,
          barrel: e.barrel,
          kind: e.kind.name,
        ),
    ],
  ),
  (
    slug: 'appwrite',
    title: 'Appwrite',
    package: 'terradart_appwrite',
    source: 'appwrite/appwrite',
    catalog: [
      for (final e in appwrite.terradartCatalog)
        (
          tfType: e.tfType,
          className: e.className,
          barrel: e.barrel,
          kind: e.kind.name,
        ),
    ],
  ),
];

/// Joins catalog items with their example back-references, sorted by barrel
/// then tfType (deterministic regardless of input order).
List<CoverageRow> buildRows({
  required List<CatalogItem> catalog,
  required Map<String, List<String>> tfTypeToExamples,
}) {
  final rows =
      [
        for (final item in catalog)
          (
            tfType: item.tfType,
            className: item.className,
            barrel: item.barrel,
            kind: item.kind,
            examples: ([
              ...?tfTypeToExamples[_coverageKey(item.kind, item.tfType)],
            ]..sort()),
          ),
      ]..sort((a, b) {
        final byBarrel = a.barrel.compareTo(b.barrel);
        return byBarrel != 0 ? byBarrel : a.tfType.compareTo(b.tfType);
      });
  return rows;
}

/// Distinguishes resource / data-source twins that share a terraform type.
String _coverageKey(String kind, String tfType) => '$kind:$tfType';

/// `N curated resource factories + M data sources (T catalog entries)`.
String countsPhrase(List<CoverageRow> rows) {
  final resources = rows.where((r) => r.kind == 'resource').length;
  final dataSources = rows.length - resources;
  final ds = dataSources == 1 ? '1 data source' : '$dataSources data sources';
  return '$resources curated resource factories + $ds '
      '(${rows.length} catalog entries)';
}

int _inExample(List<CoverageRow> rows) =>
    rows.where((r) => r.examples.isNotEmpty).length;

String _exampleCell(List<String> examples) {
  if (examples.isEmpty) return '—';
  return examples
      .map(
        (slug) =>
            '[$slug](https://github.com/nozomi-koborinai/terradart/tree/main/examples/$slug)',
      )
      .join(', ');
}

const _generatedMarker =
    '<!-- GENERATED by tool/render_coverage_page.dart — do not edit; '
    'edit the generator and re-run it. -->';

/// Renders one provider's page (deterministic for a given input).
String renderProviderPage({
  required CoverageProvider provider,
  required List<CoverageRow> rows,
}) {
  final barrels = <String, List<CoverageRow>>{};
  for (final row in rows) {
    barrels.putIfAbsent(row.barrel, () => []).add(row);
  }
  final barrelNames = barrels.keys.toList()..sort();

  final buf = StringBuffer()
    ..writeln('---')
    ..writeln('title: ${provider.title} coverage')
    ..writeln(
      'description: Every ${provider.package} factory, its barrel import, '
      'and the runnable examples that exercise it.',
    )
    ..writeln('---')
    ..writeln()
    ..writeln(_generatedMarker)
    ..writeln()
    ..writeln(
      '`${provider.package}` wraps `${provider.source}` and currently ships '
      '**${countsPhrase(rows)}**, ${_inExample(rows)} of them in a runnable '
      'example. Each factory below is generated from the pinned provider '
      'schema, exported from the barrel shown, and — where an example is '
      'listed — synthesized and checked with `terraform validate` in CI.',
    )
    ..writeln()
    ..writeln(
      'Import per service: '
      '`import \'package:${provider.package}/<barrel>.dart\';`',
    )
    ..writeln()
    ..writeln('## Barrels')
    ..writeln();
  for (final name in barrelNames) {
    buf.writeln('- [`$name`](#$name)');
  }
  buf.writeln();
  for (final name in barrelNames) {
    buf
      ..writeln('## $name')
      ..writeln()
      ..writeln('| Terraform type | Dart factory | Example |')
      ..writeln('| --- | --- | --- |');
    for (final row in barrels[name]!) {
      final suffix = row.kind == 'resource' ? '' : ' (data source)';
      buf.writeln(
        '| `${row.tfType}`$suffix | `${row.className}` | '
        '${_exampleCell(row.examples)} |',
      );
    }
    buf.writeln();
  }
  buf.writeln(
    'Release history: '
    '[GitHub Releases](https://github.com/nozomi-koborinai/terradart/releases)'
    ' · per-package CHANGELOGs.',
  );
  return buf.toString();
}

/// Renders the overview page: one row per provider package.
String renderOverviewPage(
  List<({CoverageProvider provider, List<CoverageRow> rows})> pages,
) {
  final buf = StringBuffer()
    ..writeln('---')
    ..writeln('title: Coverage')
    ..writeln(
      'description: Every curated factory of every TerraDart provider '
      'package, its barrel import, and the runnable examples that exercise '
      'it.',
    )
    ..writeln('---')
    ..writeln()
    ..writeln(_generatedMarker)
    ..writeln()
    ..writeln(
      'Each provider package wraps its provider\'s catalog at the pinned '
      'release. Its page lists every factory with the barrel that exports '
      'it and the examples that synthesize it and check it with '
      '`terraform validate` in CI.',
    )
    ..writeln()
    ..writeln(
      '| Provider | Package | Resources | Data sources | In an example |',
    )
    ..writeln('| --- | --- | ---: | ---: | ---: |');
  for (final (:provider, :rows) in pages) {
    final resources = rows.where((r) => r.kind == 'resource').length;
    buf.writeln(
      '| [${provider.title}](/docs/coverage/${provider.slug}/) '
      '| `${provider.package}` | $resources | ${rows.length - resources} '
      '| ${_inExample(rows)} |',
    );
  }
  buf
    ..writeln()
    ..writeln(
      'A factory without an example is recorded with a reason in '
      '[`tool/example_debt.yaml`](https://github.com/nozomi-koborinai/terradart/blob/main/tool/example_debt.yaml).',
    );
  return buf.toString();
}

/// Every page this generator owns: `index.md` plus one per provider, keyed
/// by file name.
Map<String, String> renderPages(Map<String, List<String>> tfTypeToExamples) {
  final pages = [
    for (final provider in providers)
      (
        provider: provider,
        rows: buildRows(
          catalog: provider.catalog,
          tfTypeToExamples: tfTypeToExamples,
        ),
      ),
  ];
  return {
    'index.md': renderOverviewPage(pages),
    for (final (:provider, :rows) in pages)
      '${provider.slug}.md': renderProviderPage(provider: provider, rows: rows),
  };
}

Map<String, List<String>> _walkTfOuts() {
  final map = <String, Set<String>>{};
  final dirs = Directory('examples').listSync().whereType<Directory>().toList()
    ..sort((a, b) => a.path.compareTo(b.path));
  var seen = 0;
  var quickstarts = 0;
  final missing = <String>[];
  for (final dir in dirs) {
    final slug = dir.path.split(Platform.pathSeparator).last;
    if (!slug.endsWith('_quickstart')) continue;
    quickstarts++;
    final tfJson = File('${dir.path}/tf-out/main.tf.json');
    if (!tfJson.existsSync()) {
      missing.add(slug);
      continue;
    }
    seen++;
    final root = jsonDecode(tfJson.readAsStringSync()) as Map<String, dynamic>;
    for (final section in ['resource', 'data']) {
      final block = root[section];
      if (block is! Map<String, dynamic>) continue;
      final kind = section == 'data' ? 'dataSource' : 'resource';
      for (final tfType in block.keys) {
        map.putIfAbsent(_coverageKey(kind, tfType), () => <String>{}).add(slug);
      }
    }
  }
  // Partial tf-out is as wrong as none: rendering from a subset silently
  // blanks the other examples' back-references (first canary, PR #277).
  if (seen < quickstarts) {
    print(
      'render_coverage_page: tf-out present for only $seen of $quickstarts '
      'quickstarts — run `dart tool/example_synth_gates.dart '
      '--skip-validate` first (missing: ${missing.take(5).join(', ')}'
      '${missing.length > 5 ? ', …' : ''}).',
    );
    exit(1);
  }
  return {
    for (final entry in map.entries) entry.key: entry.value.toList()..sort(),
  };
}

void main(List<String> args) {
  final check = args.contains('--check');
  final rendered = renderPages(_walkTfOuts());
  final dir = Directory(_outputDir);
  final existing = dir.existsSync()
      ? {
          for (final f in dir.listSync().whereType<File>())
            f.uri.pathSegments.last,
        }
      : <String>{};
  final orphans = existing.difference(rendered.keys.toSet()).toList()..sort();
  if (check) {
    final stale = [
      for (final MapEntry(:key, :value) in rendered.entries)
        if (!existing.contains(key) ||
            File('$_outputDir/$key').readAsStringSync() != value)
          key,
    ];
    if (stale.isEmpty && orphans.isEmpty) {
      print(
        'render_coverage_page: OK ($_outputDir: ${rendered.length} pages '
        'fresh)',
      );
      exit(0);
    }
    print(
      'render_coverage_page: STALE — $_outputDir does not match a fresh '
      'render (stale: ${stale.join(', ')}; not rendered: '
      '${orphans.join(', ')}). Run `dart tool/render_coverage_page.dart` '
      'and commit.',
    );
    exit(1);
  }
  dir.createSync(recursive: true);
  for (final name in orphans) {
    File('$_outputDir/$name').deleteSync();
  }
  for (final MapEntry(:key, :value) in rendered.entries) {
    File('$_outputDir/$key').writeAsStringSync(value);
  }
  print('render_coverage_page: wrote ${rendered.length} pages to $_outputDir');
}
