// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prisma_generated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AggregateUser _$AggregateUserFromJson(Map<String, dynamic> json) =>
    AggregateUser(
      $count: json['_count'] == null
          ? null
          : UserCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : UserAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : UserSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : UserMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : UserMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateUserToJson(AggregateUser instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

UserGroupByOutputType _$UserGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserGroupByOutputType(
      id: json['id'] as int,
      email: json['email'] as String,
      name: json['name'] as String,
      role: (json['role'] as List<dynamic>?)?.map((e) => e as String).toList(),
      $count: json['_count'] == null
          ? null
          : UserCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : UserAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : UserSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : UserMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : UserMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserGroupByOutputTypeToJson(
        UserGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'role': instance.role,
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregateAd _$AggregateAdFromJson(Map<String, dynamic> json) => AggregateAd(
      $count: json['_count'] == null
          ? null
          : AdCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : AdAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : AdSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : AdMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : AdMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateAdToJson(AggregateAd instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AdGroupByOutputType _$AdGroupByOutputTypeFromJson(Map<String, dynamic> json) =>
    AdGroupByOutputType(
      id: json['id'] as int,
      title: json['title'] as String,
      filter: json['filter'] as Map<String, dynamic>,
      content: json['content'] as Map<String, dynamic>,
      createdAt: DateTime.parse(json['createdAt'] as String),
      expiredAt: DateTime.parse(json['expiredAt'] as String),
      $count: json['_count'] == null
          ? null
          : AdCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : AdAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : AdSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : AdMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : AdMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdGroupByOutputTypeToJson(
        AdGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'filter': instance.filter,
      'content': instance.content,
      'createdAt': instance.createdAt.toIso8601String(),
      'expiredAt': instance.expiredAt.toIso8601String(),
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AffectedRowsOutput _$AffectedRowsOutputFromJson(Map<String, dynamic> json) =>
    AffectedRowsOutput(
      count: json['count'] as int,
    );

Map<String, dynamic> _$AffectedRowsOutputToJson(AffectedRowsOutput instance) =>
    <String, dynamic>{
      'count': instance.count,
    };

UserCountAggregateOutputType _$UserCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserCountAggregateOutputType(
      id: json['id'] as int,
      email: json['email'] as int,
      name: json['name'] as int,
      role: json['role'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$UserCountAggregateOutputTypeToJson(
        UserCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'role': instance.role,
      '_all': instance.$all,
    };

UserAvgAggregateOutputType _$UserAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$UserAvgAggregateOutputTypeToJson(
        UserAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

UserSumAggregateOutputType _$UserSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserSumAggregateOutputType(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$UserSumAggregateOutputTypeToJson(
        UserSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

UserMinAggregateOutputType _$UserMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserMinAggregateOutputType(
      id: json['id'] as int?,
      email: json['email'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$UserMinAggregateOutputTypeToJson(
        UserMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
    };

UserMaxAggregateOutputType _$UserMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserMaxAggregateOutputType(
      id: json['id'] as int?,
      email: json['email'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$UserMaxAggregateOutputTypeToJson(
        UserMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
    };

AdCountAggregateOutputType _$AdCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AdCountAggregateOutputType(
      id: json['id'] as int,
      title: json['title'] as int,
      filter: json['filter'] as int,
      content: json['content'] as int,
      createdAt: json['createdAt'] as int,
      expiredAt: json['expiredAt'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$AdCountAggregateOutputTypeToJson(
        AdCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'filter': instance.filter,
      'content': instance.content,
      'createdAt': instance.createdAt,
      'expiredAt': instance.expiredAt,
      '_all': instance.$all,
    };

AdAvgAggregateOutputType _$AdAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AdAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AdAvgAggregateOutputTypeToJson(
        AdAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

AdSumAggregateOutputType _$AdSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AdSumAggregateOutputType(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$AdSumAggregateOutputTypeToJson(
        AdSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

AdMinAggregateOutputType _$AdMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AdMinAggregateOutputType(
      id: json['id'] as int?,
      title: json['title'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      expiredAt: json['expiredAt'] == null
          ? null
          : DateTime.parse(json['expiredAt'] as String),
    );

Map<String, dynamic> _$AdMinAggregateOutputTypeToJson(
        AdMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'createdAt': instance.createdAt?.toIso8601String(),
      'expiredAt': instance.expiredAt?.toIso8601String(),
    };

AdMaxAggregateOutputType _$AdMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AdMaxAggregateOutputType(
      id: json['id'] as int?,
      title: json['title'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      expiredAt: json['expiredAt'] == null
          ? null
          : DateTime.parse(json['expiredAt'] as String),
    );

Map<String, dynamic> _$AdMaxAggregateOutputTypeToJson(
        AdMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'createdAt': instance.createdAt?.toIso8601String(),
      'expiredAt': instance.expiredAt?.toIso8601String(),
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int,
      email: json['email'] as String,
      name: json['name'] as String,
      role: (json['role'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'role': instance.role,
    };

Ad _$AdFromJson(Map<String, dynamic> json) => Ad(
      id: json['id'] as int,
      title: json['title'] as String,
      filter: json['filter'] as Map<String, dynamic>,
      content: json['content'] as Map<String, dynamic>,
      createdAt: DateTime.parse(json['createdAt'] as String),
      expiredAt: DateTime.parse(json['expiredAt'] as String),
    );

Map<String, dynamic> _$AdToJson(Ad instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'filter': instance.filter,
      'content': instance.content,
      'createdAt': instance.createdAt.toIso8601String(),
      'expiredAt': instance.expiredAt.toIso8601String(),
    };
