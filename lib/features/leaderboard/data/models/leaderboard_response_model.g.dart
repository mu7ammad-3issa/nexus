// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaderboard_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeaderboardResponseModel _$LeaderboardResponseModelFromJson(
        Map<String, dynamic> json) =>
    LeaderboardResponseModel(
      users: (json['users'] as List<dynamic>)
          .map((e) => LeaderboardUser.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LeaderboardResponseModelToJson(
        LeaderboardResponseModel instance) =>
    <String, dynamic>{
      'users': instance.users,
    };

LeaderboardUser _$LeaderboardUserFromJson(Map<String, dynamic> json) =>
    LeaderboardUser(
      rank: (json['rank'] as num).toInt(),
      photoUrl: json['photoUrl'] as String?,
      fullName: json['fullName'] as String,
      score: (json['score'] as num).toInt(),
    );

Map<String, dynamic> _$LeaderboardUserToJson(LeaderboardUser instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'photoUrl': instance.photoUrl,
      'fullName': instance.fullName,
      'score': instance.score,
    };
