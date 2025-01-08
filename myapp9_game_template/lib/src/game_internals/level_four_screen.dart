// Copyright 2022, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


const gameLevels = [
  GameLevel(
    number: 1,
    difficulty: 5,
    // TODO: When ready, change these achievement IDs.
    // Configure this in App Store Connect and Play Console.
    achievementIdIOS: 'first_win',
    achievementIdAndroid: 'NhkIwB69ejkMAOOLDb',
  ),
  GameLevel(
    number: 2,
    difficulty: 42,
  ),
  GameLevel(
    number: 3,
    difficulty: 100,
    achievementIdIOS: 'finished',
    achievementIdAndroid: 'CdfIhE96aspNWLGSQg',
  ),
];


class GameLevel {
  final int number;
  final int difficulty;


  final String? achievementIdIOS;


  final String? achievementIdAndroid;


  bool get awardsAchievement => achievementIdAndroid != null;


  const GameLevel({
    required this.number,
    required this.difficulty,
    this.achievementIdIOS,
    this.achievementIdAndroid,
  }) : assert(
  (achievementIdAndroid != null && achievementIdIOS != null) ||
      (achievementIdAndroid == null && achievementIdIOS == null),
  'Either both iOS and Android achievement IDs must be provided, '
      'or none.');
}


final levels = [
  Level(number: 1, name: 'Level 1'),
  Level(number: 2, name: 'Level 2'),
  Level(number: 3, name: 'Level 3'),
  Level(number: 4, name: 'Level 4 - Guess the Percentage'), // New level
];


class Level {
  final int number;
  final String name;

  const Level({
    required this.number,
    required this.name,
  });
}
