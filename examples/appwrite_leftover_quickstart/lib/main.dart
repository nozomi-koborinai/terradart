// GENERATED — dart tool/coverage_stack.dart --lane appwrite

/// Coverage stack for the `terradart_appwrite` factories that
/// `appwrite_quickstart` does not construct, at the current pin.
/// Dummy constructor values; synth + terraform validate only.
/// Never apply.
library;

import 'package:terradart_appwrite/terradart_appwrite.dart';

final class AppwriteLeftoverStack extends Stack {
  AppwriteLeftoverStack() : super(providers: [const AppwriteProvider()]) {
    add(AppwriteDocumentsdb('documentsdb', name: .literal('leftover')));
    add(
      AppwriteDocumentsdbCollection(
        'documentsdb_collection',
        databaseId: .literal('leftover'),
        name: .literal('leftover'),
      ),
    );
    add(
      AppwriteDocumentsdbDocument(
        'documentsdb_document',
        collectionId: .literal('leftover'),
        data: .literal('{}'),
        databaseId: .literal('leftover'),
      ),
    );
    add(
      AppwriteDocumentsdbIndex(
        'documentsdb_index',
        attributes: .literal(['leftover']),
        collectionId: .literal('leftover'),
        databaseId: .literal('leftover'),
        key: .literal('leftover'),
        type: .literal('leftover'),
      ),
    );
    add(AppwriteVectorsdb('vectorsdb', name: .literal('leftover')));
    add(
      AppwriteVectorsdbCollection(
        'vectorsdb_collection',
        databaseId: .literal('leftover'),
        dimension: .literal(1),
        name: .literal('leftover'),
      ),
    );
    add(
      AppwriteVectorsdbDocument(
        'vectorsdb_document',
        collectionId: .literal('leftover'),
        data: .literal('{}'),
        databaseId: .literal('leftover'),
      ),
    );
    add(
      AppwriteVectorsdbIndex(
        'vectorsdb_index',
        attributes: .literal(['leftover']),
        collectionId: .literal('leftover'),
        databaseId: .literal('leftover'),
        key: .literal('leftover'),
        type: .literal('leftover'),
      ),
    );
    add(DataAppwriteDocumentsdb('documentsdb', id: .literal('leftover')));
    add(DataAppwriteDocumentsdbSpecifications('documentsdb_specifications'));
    add(DataAppwriteVectorsdb('vectorsdb', id: .literal('leftover')));
    add(DataAppwriteVectorsdbSpecifications('vectorsdb_specifications'));
  }
}
