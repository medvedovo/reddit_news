// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_news.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDbNewsCollection on Isar {
  IsarCollection<DbNews> get dbNews => this.collection();
}

const DbNewsSchema = CollectionSchema(
  name: r'DbNews',
  id: -980906693121353617,
  properties: {
    r'redditId': PropertySchema(
      id: 0,
      name: r'redditId',
      type: IsarType.string,
    ),
    r'selftext': PropertySchema(
      id: 1,
      name: r'selftext',
      type: IsarType.string,
    ),
    r'thumbnail': PropertySchema(
      id: 2,
      name: r'thumbnail',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 3,
      name: r'title',
      type: IsarType.string,
    )
  },
  estimateSize: _dbNewsEstimateSize,
  serialize: _dbNewsSerialize,
  deserialize: _dbNewsDeserialize,
  deserializeProp: _dbNewsDeserializeProp,
  idName: r'id',
  indexes: {
    r'redditId': IndexSchema(
      id: -299336972686285406,
      name: r'redditId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'redditId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _dbNewsGetId,
  getLinks: _dbNewsGetLinks,
  attach: _dbNewsAttach,
  version: '3.1.0+1',
);

int _dbNewsEstimateSize(
  DbNews object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.redditId.length * 3;
  bytesCount += 3 + object.selftext.length * 3;
  bytesCount += 3 + object.thumbnail.length * 3;
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _dbNewsSerialize(
  DbNews object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.redditId);
  writer.writeString(offsets[1], object.selftext);
  writer.writeString(offsets[2], object.thumbnail);
  writer.writeString(offsets[3], object.title);
}

DbNews _dbNewsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DbNews(
    reader.readString(offsets[0]),
    reader.readString(offsets[3]),
    reader.readString(offsets[1]),
    reader.readString(offsets[2]),
  );
  object.id = id;
  return object;
}

P _dbNewsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _dbNewsGetId(DbNews object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _dbNewsGetLinks(DbNews object) {
  return [];
}

void _dbNewsAttach(IsarCollection<dynamic> col, Id id, DbNews object) {
  object.id = id;
}

extension DbNewsByIndex on IsarCollection<DbNews> {
  Future<DbNews?> getByRedditId(String redditId) {
    return getByIndex(r'redditId', [redditId]);
  }

  DbNews? getByRedditIdSync(String redditId) {
    return getByIndexSync(r'redditId', [redditId]);
  }

  Future<bool> deleteByRedditId(String redditId) {
    return deleteByIndex(r'redditId', [redditId]);
  }

  bool deleteByRedditIdSync(String redditId) {
    return deleteByIndexSync(r'redditId', [redditId]);
  }

  Future<List<DbNews?>> getAllByRedditId(List<String> redditIdValues) {
    final values = redditIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'redditId', values);
  }

  List<DbNews?> getAllByRedditIdSync(List<String> redditIdValues) {
    final values = redditIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'redditId', values);
  }

  Future<int> deleteAllByRedditId(List<String> redditIdValues) {
    final values = redditIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'redditId', values);
  }

  int deleteAllByRedditIdSync(List<String> redditIdValues) {
    final values = redditIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'redditId', values);
  }

  Future<Id> putByRedditId(DbNews object) {
    return putByIndex(r'redditId', object);
  }

  Id putByRedditIdSync(DbNews object, {bool saveLinks = true}) {
    return putByIndexSync(r'redditId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByRedditId(List<DbNews> objects) {
    return putAllByIndex(r'redditId', objects);
  }

  List<Id> putAllByRedditIdSync(List<DbNews> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'redditId', objects, saveLinks: saveLinks);
  }
}

extension DbNewsQueryWhereSort on QueryBuilder<DbNews, DbNews, QWhere> {
  QueryBuilder<DbNews, DbNews, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DbNewsQueryWhere on QueryBuilder<DbNews, DbNews, QWhereClause> {
  QueryBuilder<DbNews, DbNews, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterWhereClause> redditIdEqualTo(
      String redditId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'redditId',
        value: [redditId],
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterWhereClause> redditIdNotEqualTo(
      String redditId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'redditId',
              lower: [],
              upper: [redditId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'redditId',
              lower: [redditId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'redditId',
              lower: [redditId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'redditId',
              lower: [],
              upper: [redditId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension DbNewsQueryFilter on QueryBuilder<DbNews, DbNews, QFilterCondition> {
  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> redditIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'redditId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> redditIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'redditId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> redditIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'redditId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> redditIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'redditId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> redditIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'redditId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> redditIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'redditId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> redditIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'redditId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> redditIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'redditId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> redditIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'redditId',
        value: '',
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> redditIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'redditId',
        value: '',
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> selftextEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selftext',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> selftextGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'selftext',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> selftextLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'selftext',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> selftextBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'selftext',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> selftextStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'selftext',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> selftextEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'selftext',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> selftextContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'selftext',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> selftextMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'selftext',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> selftextIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selftext',
        value: '',
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> selftextIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'selftext',
        value: '',
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> thumbnailEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'thumbnail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> thumbnailGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'thumbnail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> thumbnailLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'thumbnail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> thumbnailBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'thumbnail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> thumbnailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'thumbnail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> thumbnailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'thumbnail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> thumbnailContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'thumbnail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> thumbnailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'thumbnail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> thumbnailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'thumbnail',
        value: '',
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> thumbnailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'thumbnail',
        value: '',
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }
}

extension DbNewsQueryObject on QueryBuilder<DbNews, DbNews, QFilterCondition> {}

extension DbNewsQueryLinks on QueryBuilder<DbNews, DbNews, QFilterCondition> {}

extension DbNewsQuerySortBy on QueryBuilder<DbNews, DbNews, QSortBy> {
  QueryBuilder<DbNews, DbNews, QAfterSortBy> sortByRedditId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'redditId', Sort.asc);
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterSortBy> sortByRedditIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'redditId', Sort.desc);
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterSortBy> sortBySelftext() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selftext', Sort.asc);
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterSortBy> sortBySelftextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selftext', Sort.desc);
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterSortBy> sortByThumbnail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumbnail', Sort.asc);
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterSortBy> sortByThumbnailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumbnail', Sort.desc);
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension DbNewsQuerySortThenBy on QueryBuilder<DbNews, DbNews, QSortThenBy> {
  QueryBuilder<DbNews, DbNews, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterSortBy> thenByRedditId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'redditId', Sort.asc);
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterSortBy> thenByRedditIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'redditId', Sort.desc);
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterSortBy> thenBySelftext() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selftext', Sort.asc);
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterSortBy> thenBySelftextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selftext', Sort.desc);
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterSortBy> thenByThumbnail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumbnail', Sort.asc);
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterSortBy> thenByThumbnailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumbnail', Sort.desc);
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<DbNews, DbNews, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension DbNewsQueryWhereDistinct on QueryBuilder<DbNews, DbNews, QDistinct> {
  QueryBuilder<DbNews, DbNews, QDistinct> distinctByRedditId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'redditId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbNews, DbNews, QDistinct> distinctBySelftext(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'selftext', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbNews, DbNews, QDistinct> distinctByThumbnail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'thumbnail', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbNews, DbNews, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }
}

extension DbNewsQueryProperty on QueryBuilder<DbNews, DbNews, QQueryProperty> {
  QueryBuilder<DbNews, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DbNews, String, QQueryOperations> redditIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'redditId');
    });
  }

  QueryBuilder<DbNews, String, QQueryOperations> selftextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'selftext');
    });
  }

  QueryBuilder<DbNews, String, QQueryOperations> thumbnailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'thumbnail');
    });
  }

  QueryBuilder<DbNews, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }
}
