// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMemberModelCollection on Isar {
  IsarCollection<MemberModel> get memberModels => this.collection();
}

const MemberModelSchema = CollectionSchema(
  name: r'MemberModel',
  id: 8595147604790784312,
  properties: {
    r'dob': PropertySchema(
      id: 0,
      name: r'dob',
      type: IsarType.string,
    ),
    r'emailAddress': PropertySchema(
      id: 1,
      name: r'emailAddress',
      type: IsarType.string,
    ),
    r'firstName': PropertySchema(
      id: 2,
      name: r'firstName',
      type: IsarType.string,
    ),
    r'gender': PropertySchema(
      id: 3,
      name: r'gender',
      type: IsarType.string,
      enumMap: _MemberModelgenderEnumValueMap,
    ),
    r'id': PropertySchema(
      id: 4,
      name: r'id',
      type: IsarType.string,
    ),
    r'lastName': PropertySchema(
      id: 5,
      name: r'lastName',
      type: IsarType.string,
    ),
    r'phoneNumber': PropertySchema(
      id: 6,
      name: r'phoneNumber',
      type: IsarType.string,
    ),
    r'relationshipStatus': PropertySchema(
      id: 7,
      name: r'relationshipStatus',
      type: IsarType.string,
      enumMap: _MemberModelrelationshipStatusEnumValueMap,
    ),
    r'residentialAddress': PropertySchema(
      id: 8,
      name: r'residentialAddress',
      type: IsarType.string,
    ),
    r'userType': PropertySchema(
      id: 9,
      name: r'userType',
      type: IsarType.string,
      enumMap: _MemberModeluserTypeEnumValueMap,
    )
  },
  estimateSize: _memberModelEstimateSize,
  serialize: _memberModelSerialize,
  deserialize: _memberModelDeserialize,
  deserializeProp: _memberModelDeserializeProp,
  idName: r'dbId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _memberModelGetId,
  getLinks: _memberModelGetLinks,
  attach: _memberModelAttach,
  version: '3.1.0+1',
);

int _memberModelEstimateSize(
  MemberModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.dob.length * 3;
  bytesCount += 3 + object.emailAddress.length * 3;
  bytesCount += 3 + object.firstName.length * 3;
  bytesCount += 3 + object.gender.name.length * 3;
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.lastName.length * 3;
  bytesCount += 3 + object.phoneNumber.length * 3;
  bytesCount += 3 + object.relationshipStatus.name.length * 3;
  bytesCount += 3 + object.residentialAddress.length * 3;
  bytesCount += 3 + object.userType.name.length * 3;
  return bytesCount;
}

void _memberModelSerialize(
  MemberModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.dob);
  writer.writeString(offsets[1], object.emailAddress);
  writer.writeString(offsets[2], object.firstName);
  writer.writeString(offsets[3], object.gender.name);
  writer.writeString(offsets[4], object.id);
  writer.writeString(offsets[5], object.lastName);
  writer.writeString(offsets[6], object.phoneNumber);
  writer.writeString(offsets[7], object.relationshipStatus.name);
  writer.writeString(offsets[8], object.residentialAddress);
  writer.writeString(offsets[9], object.userType.name);
}

MemberModel _memberModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MemberModel(
    dob: reader.readString(offsets[0]),
    emailAddress: reader.readString(offsets[1]),
    firstName: reader.readString(offsets[2]),
    gender:
        _MemberModelgenderValueEnumMap[reader.readStringOrNull(offsets[3])] ??
            Gender.male,
    id: reader.readString(offsets[4]),
    lastName: reader.readString(offsets[5]),
    phoneNumber: reader.readString(offsets[6]),
    relationshipStatus: _MemberModelrelationshipStatusValueEnumMap[
            reader.readStringOrNull(offsets[7])] ??
        RelationshipStatus.single,
    residentialAddress: reader.readString(offsets[8]),
  );
  object.dbId = id;
  return object;
}

P _memberModelDeserializeProp<P>(
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
      return (_MemberModelgenderValueEnumMap[reader.readStringOrNull(offset)] ??
          Gender.male) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (_MemberModelrelationshipStatusValueEnumMap[
              reader.readStringOrNull(offset)] ??
          RelationshipStatus.single) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (_MemberModeluserTypeValueEnumMap[
              reader.readStringOrNull(offset)] ??
          UserType.guest) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _MemberModelgenderEnumValueMap = {
  r'male': r'male',
  r'female': r'female',
};
const _MemberModelgenderValueEnumMap = {
  r'male': Gender.male,
  r'female': Gender.female,
};
const _MemberModelrelationshipStatusEnumValueMap = {
  r'single': r'single',
  r'married': r'married',
  r'divorse': r'divorse',
};
const _MemberModelrelationshipStatusValueEnumMap = {
  r'single': RelationshipStatus.single,
  r'married': RelationshipStatus.married,
  r'divorse': RelationshipStatus.divorse,
};
const _MemberModeluserTypeEnumValueMap = {
  r'guest': r'guest',
  r'member': r'member',
  r'admin': r'admin',
};
const _MemberModeluserTypeValueEnumMap = {
  r'guest': UserType.guest,
  r'member': UserType.member,
  r'admin': UserType.admin,
};

Id _memberModelGetId(MemberModel object) {
  return object.dbId;
}

List<IsarLinkBase<dynamic>> _memberModelGetLinks(MemberModel object) {
  return [];
}

void _memberModelAttach(
    IsarCollection<dynamic> col, Id id, MemberModel object) {
  object.dbId = id;
}

extension MemberModelQueryWhereSort
    on QueryBuilder<MemberModel, MemberModel, QWhere> {
  QueryBuilder<MemberModel, MemberModel, QAfterWhere> anyDbId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MemberModelQueryWhere
    on QueryBuilder<MemberModel, MemberModel, QWhereClause> {
  QueryBuilder<MemberModel, MemberModel, QAfterWhereClause> dbIdEqualTo(
      Id dbId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: dbId,
        upper: dbId,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterWhereClause> dbIdNotEqualTo(
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

  QueryBuilder<MemberModel, MemberModel, QAfterWhereClause> dbIdGreaterThan(
      Id dbId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: dbId, includeLower: include),
      );
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterWhereClause> dbIdLessThan(
      Id dbId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: dbId, includeUpper: include),
      );
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterWhereClause> dbIdBetween(
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

extension MemberModelQueryFilter
    on QueryBuilder<MemberModel, MemberModel, QFilterCondition> {
  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> dbIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dbId',
        value: value,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> dbIdGreaterThan(
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

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> dbIdLessThan(
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

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> dbIdBetween(
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

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> dobEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dob',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> dobGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dob',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> dobLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dob',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> dobBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dob',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> dobStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dob',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> dobEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dob',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> dobContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dob',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> dobMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dob',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> dobIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dob',
        value: '',
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      dobIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dob',
        value: '',
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      emailAddressEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'emailAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      emailAddressGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'emailAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      emailAddressLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'emailAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      emailAddressBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'emailAddress',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      emailAddressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'emailAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      emailAddressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'emailAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      emailAddressContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'emailAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      emailAddressMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'emailAddress',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      emailAddressIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'emailAddress',
        value: '',
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      emailAddressIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'emailAddress',
        value: '',
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      firstNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      firstNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      firstNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      firstNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'firstName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      firstNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      firstNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      firstNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      firstNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'firstName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      firstNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstName',
        value: '',
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      firstNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'firstName',
        value: '',
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> genderEqualTo(
    Gender value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      genderGreaterThan(
    Gender value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> genderLessThan(
    Gender value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> genderBetween(
    Gender lower,
    Gender upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gender',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      genderStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> genderEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> genderContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> genderMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'gender',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      genderIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gender',
        value: '',
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      genderIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'gender',
        value: '',
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> idContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> lastNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      lastNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      lastNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> lastNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      lastNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      lastNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      lastNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> lastNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lastName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      lastNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastName',
        value: '',
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      lastNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastName',
        value: '',
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      phoneNumberEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      phoneNumberGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      phoneNumberLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      phoneNumberBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phoneNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      phoneNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      phoneNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      phoneNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      phoneNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phoneNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      phoneNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phoneNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      phoneNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phoneNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      relationshipStatusEqualTo(
    RelationshipStatus value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'relationshipStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      relationshipStatusGreaterThan(
    RelationshipStatus value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'relationshipStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      relationshipStatusLessThan(
    RelationshipStatus value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'relationshipStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      relationshipStatusBetween(
    RelationshipStatus lower,
    RelationshipStatus upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'relationshipStatus',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      relationshipStatusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'relationshipStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      relationshipStatusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'relationshipStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      relationshipStatusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'relationshipStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      relationshipStatusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'relationshipStatus',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      relationshipStatusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'relationshipStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      relationshipStatusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'relationshipStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      residentialAddressEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'residentialAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      residentialAddressGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'residentialAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      residentialAddressLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'residentialAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      residentialAddressBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'residentialAddress',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      residentialAddressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'residentialAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      residentialAddressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'residentialAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      residentialAddressContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'residentialAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      residentialAddressMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'residentialAddress',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      residentialAddressIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'residentialAddress',
        value: '',
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      residentialAddressIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'residentialAddress',
        value: '',
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> userTypeEqualTo(
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

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
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

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      userTypeLessThan(
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

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> userTypeBetween(
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

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
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

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      userTypeEndsWith(
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

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      userTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition> userTypeMatches(
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

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      userTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userType',
        value: '',
      ));
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterFilterCondition>
      userTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userType',
        value: '',
      ));
    });
  }
}

extension MemberModelQueryObject
    on QueryBuilder<MemberModel, MemberModel, QFilterCondition> {}

extension MemberModelQueryLinks
    on QueryBuilder<MemberModel, MemberModel, QFilterCondition> {}

extension MemberModelQuerySortBy
    on QueryBuilder<MemberModel, MemberModel, QSortBy> {
  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> sortByDob() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dob', Sort.asc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> sortByDobDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dob', Sort.desc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> sortByEmailAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emailAddress', Sort.asc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy>
      sortByEmailAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emailAddress', Sort.desc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> sortByFirstName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.asc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> sortByFirstNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.desc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> sortByGender() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.asc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> sortByGenderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.desc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> sortByLastName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.asc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> sortByLastNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.desc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> sortByPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.asc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> sortByPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.desc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy>
      sortByRelationshipStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relationshipStatus', Sort.asc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy>
      sortByRelationshipStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relationshipStatus', Sort.desc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy>
      sortByResidentialAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'residentialAddress', Sort.asc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy>
      sortByResidentialAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'residentialAddress', Sort.desc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> sortByUserType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userType', Sort.asc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> sortByUserTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userType', Sort.desc);
    });
  }
}

extension MemberModelQuerySortThenBy
    on QueryBuilder<MemberModel, MemberModel, QSortThenBy> {
  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> thenByDbId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dbId', Sort.asc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> thenByDbIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dbId', Sort.desc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> thenByDob() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dob', Sort.asc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> thenByDobDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dob', Sort.desc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> thenByEmailAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emailAddress', Sort.asc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy>
      thenByEmailAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emailAddress', Sort.desc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> thenByFirstName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.asc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> thenByFirstNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.desc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> thenByGender() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.asc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> thenByGenderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.desc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> thenByLastName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.asc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> thenByLastNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.desc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> thenByPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.asc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> thenByPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.desc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy>
      thenByRelationshipStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relationshipStatus', Sort.asc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy>
      thenByRelationshipStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relationshipStatus', Sort.desc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy>
      thenByResidentialAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'residentialAddress', Sort.asc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy>
      thenByResidentialAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'residentialAddress', Sort.desc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> thenByUserType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userType', Sort.asc);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QAfterSortBy> thenByUserTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userType', Sort.desc);
    });
  }
}

extension MemberModelQueryWhereDistinct
    on QueryBuilder<MemberModel, MemberModel, QDistinct> {
  QueryBuilder<MemberModel, MemberModel, QDistinct> distinctByDob(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dob', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QDistinct> distinctByEmailAddress(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'emailAddress', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QDistinct> distinctByFirstName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'firstName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QDistinct> distinctByGender(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gender', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QDistinct> distinctByLastName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QDistinct> distinctByPhoneNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phoneNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QDistinct>
      distinctByRelationshipStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'relationshipStatus',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QDistinct>
      distinctByResidentialAddress({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'residentialAddress',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MemberModel, MemberModel, QDistinct> distinctByUserType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userType', caseSensitive: caseSensitive);
    });
  }
}

extension MemberModelQueryProperty
    on QueryBuilder<MemberModel, MemberModel, QQueryProperty> {
  QueryBuilder<MemberModel, int, QQueryOperations> dbIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dbId');
    });
  }

  QueryBuilder<MemberModel, String, QQueryOperations> dobProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dob');
    });
  }

  QueryBuilder<MemberModel, String, QQueryOperations> emailAddressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'emailAddress');
    });
  }

  QueryBuilder<MemberModel, String, QQueryOperations> firstNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'firstName');
    });
  }

  QueryBuilder<MemberModel, Gender, QQueryOperations> genderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gender');
    });
  }

  QueryBuilder<MemberModel, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MemberModel, String, QQueryOperations> lastNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastName');
    });
  }

  QueryBuilder<MemberModel, String, QQueryOperations> phoneNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phoneNumber');
    });
  }

  QueryBuilder<MemberModel, RelationshipStatus, QQueryOperations>
      relationshipStatusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'relationshipStatus');
    });
  }

  QueryBuilder<MemberModel, String, QQueryOperations>
      residentialAddressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'residentialAddress');
    });
  }

  QueryBuilder<MemberModel, UserType, QQueryOperations> userTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userType');
    });
  }
}
