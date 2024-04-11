// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_storage.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLocalThemeStorageCollection on Isar {
  IsarCollection<LocalThemeStorage> get localThemeStorages => this.collection();
}

const LocalThemeStorageSchema = CollectionSchema(
  name: r'LocalThemeStorage',
  id: 5583319690133013603,
  properties: {
    r'themeName': PropertySchema(
      id: 0,
      name: r'themeName',
      type: IsarType.string,
    )
  },
  estimateSize: _localThemeStorageEstimateSize,
  serialize: _localThemeStorageSerialize,
  deserialize: _localThemeStorageDeserialize,
  deserializeProp: _localThemeStorageDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _localThemeStorageGetId,
  getLinks: _localThemeStorageGetLinks,
  attach: _localThemeStorageAttach,
  version: '3.1.0+1',
);

int _localThemeStorageEstimateSize(
  LocalThemeStorage object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.themeName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _localThemeStorageSerialize(
  LocalThemeStorage object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.themeName);
}

LocalThemeStorage _localThemeStorageDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LocalThemeStorage();
  object.id = id;
  object.themeName = reader.readStringOrNull(offsets[0]);
  return object;
}

P _localThemeStorageDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _localThemeStorageGetId(LocalThemeStorage object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _localThemeStorageGetLinks(
    LocalThemeStorage object) {
  return [];
}

void _localThemeStorageAttach(
    IsarCollection<dynamic> col, Id id, LocalThemeStorage object) {
  object.id = id;
}

extension LocalThemeStorageQueryWhereSort
    on QueryBuilder<LocalThemeStorage, LocalThemeStorage, QWhere> {
  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LocalThemeStorageQueryWhere
    on QueryBuilder<LocalThemeStorage, LocalThemeStorage, QWhereClause> {
  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QAfterWhereClause>
      idBetween(
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
}

extension LocalThemeStorageQueryFilter
    on QueryBuilder<LocalThemeStorage, LocalThemeStorage, QFilterCondition> {
  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QAfterFilterCondition>
      themeNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'themeName',
      ));
    });
  }

  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QAfterFilterCondition>
      themeNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'themeName',
      ));
    });
  }

  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QAfterFilterCondition>
      themeNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'themeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QAfterFilterCondition>
      themeNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'themeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QAfterFilterCondition>
      themeNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'themeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QAfterFilterCondition>
      themeNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'themeName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QAfterFilterCondition>
      themeNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'themeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QAfterFilterCondition>
      themeNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'themeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QAfterFilterCondition>
      themeNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'themeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QAfterFilterCondition>
      themeNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'themeName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QAfterFilterCondition>
      themeNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'themeName',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QAfterFilterCondition>
      themeNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'themeName',
        value: '',
      ));
    });
  }
}

extension LocalThemeStorageQueryObject
    on QueryBuilder<LocalThemeStorage, LocalThemeStorage, QFilterCondition> {}

extension LocalThemeStorageQueryLinks
    on QueryBuilder<LocalThemeStorage, LocalThemeStorage, QFilterCondition> {}

extension LocalThemeStorageQuerySortBy
    on QueryBuilder<LocalThemeStorage, LocalThemeStorage, QSortBy> {
  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QAfterSortBy>
      sortByThemeName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeName', Sort.asc);
    });
  }

  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QAfterSortBy>
      sortByThemeNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeName', Sort.desc);
    });
  }
}

extension LocalThemeStorageQuerySortThenBy
    on QueryBuilder<LocalThemeStorage, LocalThemeStorage, QSortThenBy> {
  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QAfterSortBy>
      thenByThemeName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeName', Sort.asc);
    });
  }

  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QAfterSortBy>
      thenByThemeNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeName', Sort.desc);
    });
  }
}

extension LocalThemeStorageQueryWhereDistinct
    on QueryBuilder<LocalThemeStorage, LocalThemeStorage, QDistinct> {
  QueryBuilder<LocalThemeStorage, LocalThemeStorage, QDistinct>
      distinctByThemeName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'themeName', caseSensitive: caseSensitive);
    });
  }
}

extension LocalThemeStorageQueryProperty
    on QueryBuilder<LocalThemeStorage, LocalThemeStorage, QQueryProperty> {
  QueryBuilder<LocalThemeStorage, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LocalThemeStorage, String?, QQueryOperations>
      themeNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'themeName');
    });
  }
}
