import 'package:json_annotation/json_annotation.dart';
part 'leaderboard_response_model.g.dart';

@JsonSerializable()
class LeaderboardResponseModel {
  List<LeaderboardUser> users;

  LeaderboardResponseModel({
    required this.users,
  });

  factory LeaderboardResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardResponseModelFromJson(json);
}

@JsonSerializable()
class LeaderboardUser {
  int rank;
  String? photoUrl;
  String fullName;
  int score;

  LeaderboardUser({
    required this.rank,
    this.photoUrl,
    required this.fullName,
    required this.score,
  });

  factory LeaderboardUser.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardUserFromJson(json);
}
