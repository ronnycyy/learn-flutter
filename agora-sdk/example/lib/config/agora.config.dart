/// Get your own App ID at https://dashboard.agora.io/
String get appId {
  // Allow pass an `appId` as an environment variable with name `TEST_APP_ID` by using --dart-define
  return const String.fromEnvironment('TEST_APP_ID',
      defaultValue: '266f134282c446abb440836e8ce66f48');
}

/// Please refer to https://docs.agora.io/en/Agora%20Platform/token
String get token {
  // Allow pass a `token` as an environment variable with name `TEST_TOEKN` by using --dart-define
  return const String.fromEnvironment('TEST_TOEKN',
      defaultValue:
          '006266f134282c446abb440836e8ce66f48IABuyFlKa2DvO+QQdu+d+AT4y+Xy7LfXGXXfzOfRtYL6sAx+f9gAAAAAEABg4SwUPsxKYgEAAQA+zEpi');
}

/// Your channel ID
String get channelId {
  // Allow pass a `channelId` as an environment variable with name `TEST_CHANNEL_ID` by using --dart-define
  return const String.fromEnvironment(
    'TEST_CHANNEL_ID',
    defaultValue: 'test',
  );
}

/// Your int user ID
const int uid = 0;

/// Your user ID for the screen sharing
const int screenSharingUid = 10;

/// Your string user ID
const String stringUid = '0';
