// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetGuestModelCollection on Isar {
  IsarCollection<GuestModel> get guestModels => this.collection();
}

const GuestModelSchema = CollectionSchema(
  name: r'GuestModel',
  id: 1855346397792212998,
  properties: {
    r'userType': PropertySchema(
      id: 0,
      name: r'userType',
      type: IsarType.string,
      enumMap: _GuestModeluserTypeEnumValueMap,
    )
  },
  estimateSize: _guestModelEstimateSize,
  serialize: _guestModelSerialize,
  deserialize: _guestModelDeserialize,
  deserializeProp: _guestModelDeserializeProp,
  idName: r'dbId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _guestModelGetId,
  getLinks: _guestModelGetLinks,
  attach: _guestModelAttach,
  version: '3.1.0+1',
);

int _guestModelEstimateSize(
  GuestModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.userType.name.length * 3;
  return bytesCount;
}

void _guestModelSerialize(
  GuestModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.userType.name);
}

GuestModel _guestModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GuestModel();
  object.dbId = id;
  return object;
}

P _guestModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_GuestModeluserTypeValueEnumMap[
              reader.readStringOrNull(offset)] ??
          UserType.guest) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _GuestModeluserTypeEnumValueMap = {
  r'guest': r'guest',
  r'member': r'member',
  r'admin': r'admin',
};
const _GuestModeluserTypeValueEnumMap = {
  r'guest': UserType.guest,
  r'member': UserType.member,
  r'admin': UserType.admin,
};

Id _guestModelGetId(GuestModel object) {
  return object.dbId;
}

List<IsarLinkBase<dynamic>> _guestModelGetLinks(GuestModel object) {
  return [];
}

void _guestModelAttach(IsarCollection<dynamic> col, Id id, GuestModel object) {
  object.dbId = id;
}

extension GuestModelQueryWhereSort
    on QueryBuilder<GuestModel, GuestModel, QWhere> {
  QueryBuilder<GuestModel, GuestModel, QAfterWhere> anyDbId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension GuestModelQueryWhere
    on QueryBuilder<GuestModel, GuestModel, QWhereClause> {
  QueryBuilder<GuestModel, GuestModel, QAfterWhereClause> dbIdEqualTo(Id dbId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: dbId,
        upper: dbId,
      ));
    });
  }

  QueryBuilder<GuestModel, GuestModel, QAfterWhereClause> dbIdNotEqualTo(
      Id dbId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: dbId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: dbId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: dbId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: dbId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<GuestModel, GuestModel, QAfterWhereClause> dbIdGreaterThan(
      Id dbId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: dbId, includeLower: include),
      );
    });
  }

  QueryBuilder<GuestModel, GuestModel, QAfterWhereClause> dbIdLessThan(Id dbId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: dbId, includeUpper: include),
      );
    });
  }

  QueryBuilder<GuestModel, GuestModel, QAfterWhereClause> dbIdBetween(
    Id lowerDbId,
    Id upperDbId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerDbId,
        includeLower: includeLower,
        upper: upperDbId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension GuestModelQueryFilter
    on QueryBuilder<GuestModel, GuestModel, QFilterCondition> {
  QueryBuilder<GuestModel, GuestModel, QAfterFilterCondition> dbIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dbId',
        value: value,
      ));
    });
  }

  QueryBuilder<GuestModel, GuestModel, QAfterFilterCondition> dbIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dbId',
        value: value,
      ));
    });
  }

  QueryBuilder<GuestModel, GuestModel, QAfterFilterCondition> dbIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dbId',
        value: value,
      ));
    });
  }

  QueryBuilder<GuestModel, GuestModel, QAfterFilterCondition> dbIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dbId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<GuestModel, GuestModel, QAfterFilterCondition> userTypeEqualTo(
    UserType value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GuestModel, GuestModel, QAfterFilterCondition>
      userTypeGreaterThan(
    UserType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GuestModel, GuestModel, QAfterFilterCondition> userTypeLessThan(
    UserType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GuestModel, GuestModel, QAfterFilterCondition> userTypeBetween(
    UserType lower,
    UserType upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GuestModel, GuestModel, QAfterFilterCondition>
      userTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GuestModel, GuestModel, QAfterFilterCondition> userTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GuestModel, GuestModel, QAfterFilterCondition> userTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GuestModel, GuestModel, QAfterFilterCondition> userTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GuestModel, GuestModel, QAfterFilterCondition>
      userTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userType',
        value: '',
      ));
    });
  }

  QueryBuilder<GuestModel, GuestModel, QAfterFilterCondition>
      userTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userType',
        value: '',
      ));
    });
  }
}

extension GuestModelQueryObject
    on QueryBuilder<GuestModel, GuestModel, QFilterCondition> {}

extension GuestModelQueryLinks
    on QueryBuilder<GuestModel, GuestModel, QFilterCondition> {}

extension GuestModelQuerySortBy
    on QueryBuilder<GuestModel, GuestModel, QSortBy> {
  QueryBuilder<GuestModel, GuestModel, QAfterSortBy> sortByUserType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userType', Sort.asc);
    });
  }

  QueryBuilder<GuestModel, GuestModel, QAfterSortBy> sortByUserTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userType', Sort.desc);
    });
  }
}

extension GuestModelQuerySortThenBy
    on QueryBuilder<GuestModel, GuestModel, QSortThenBy> {
  QueryBuilder<GuestModel, GuestModel, QAfterSortBy> thenByDbId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dbId', Sort.asc);
    });
  }

  QueryBuilder<GuestModel, GuestModel, QAfterSortBy> thenByDbIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dbId', Sort.desc);
    });
  }

  QueryBuilder<GuestModel, GuestModel, QAfterSortBy> thenByUserType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userType', Sort.asc);
    });
  }

  QueryBuilder<GuestModel, GuestModel, QAfterSortBy> thenByUserTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userType', Sort.desc);
    });
  }
}

extension GuestModelQueryWhereDistinct
    on QueryBuilder<GuestModel, GuestModel, QDistinct> {
  QueryBuilder<GuestModel, GuestModel, QDistinct> distinctByUserType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userType', caseSensitive: caseSensitive);
    });
  }
}

extension GuestModelQueryProperty
    on QueryBuilder<GuestModel, GuestModel, QQueryProperty> {
  QueryBuilder<GuestModel, int, QQueryOperations> dbIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dbId');
    });
  }

  QueryBuilder<GuestModel, UserType, QQueryOperations> userTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userType');
    });
  }
}
