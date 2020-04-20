import 'dart:convert';

import 'package:http/http.dart';
import 'package:twitter_api/api/tweets/data/tweet.dart';
import 'package:twitter_api/api/users/data/user.dart';

Tweet defaultTweetTransform(Response response) {
  return Tweet.fromJson(json.decode(response.body));
}

List<Tweet> defaultTweetListTransform(Response response) {
  final tweets = <Tweet>[];

  for (Map<String, dynamic> tweetJson in json.decode(response.body)) {
    tweets.add(Tweet.fromJson(tweetJson));
  }

  return tweets;
}

User defaultUserTransform(Response response) {
  return User.fromJson(json.decode(response.body));
}

List<User> defaultUserListTransform(Response response) {
  final users = <User>[];

  for (Map<String, dynamic> userJson in json.decode(response.body)) {
    users.add(User.fromJson(userJson));
  }

  return users;
}