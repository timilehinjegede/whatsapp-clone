class Call {
  final String imagePath;
  final String contactName;
  final String date;
  final bool isVideo;
  final bool isMissed;
  final bool isCallMade;

  Call(
      {this.imagePath,
      this.contactName,
      this.date,
      this.isVideo,
      this.isMissed,
      this.isCallMade});

  static final List<Call> getAllCalls = [
    // model item 0
    Call(
        contactName: 'Temi',
        isMissed: true,
        isCallMade: false,
        isVideo: false,
        date: '28 April, 17:59',),
    // model item 1
    Call(
        contactName: 'Emmanuel',
        isMissed: false,
        isCallMade: false,
        isVideo: false,
        date: '26 April, 21:04',),
    // model item 2
    Call(
        contactName: 'Samuel',
        isMissed: true,
        isCallMade: false,
        isVideo: false,
        date: '26 April, 14:54'),,
    // model item 3
    Call(
        contactName: 'Tolu',
        isMissed: false,
        isCallMade: true,
        isVideo: false,
        date: '22 April, 04:21'),
    // model item 4
    Call(
        contactName: 'David',
        isMissed: false,
        isCallMade: false,
        isVideo: true,
        date: '21 April, 16:06'),
    // model item 5
    Call(
        contactName: 'David',
        isMissed: true,
        isCallMade: false,
        isVideo: true,
        date: '21 April, 16:05'),
    // model item 6
    Call(
        contactName: 'Kunle',
        isMissed: true,
        isCallMade: false,
        isVideo: false,
        date: '20 April, 16:14'),
    // model item 7
    Call(
        contactName: 'Pelumi',
        isMissed: true,
        isCallMade: false,
        isVideo: false,
        date: '20 April, 16:08'),
    // model item 8
    Call(
        contactName: '+234 900 100 0000',
        isMissed: false,
        isCallMade: false,
        isVideo: true,
        date: '9 April, 23:56'),
    // model item 9
    Call(
        contactName: 'Adeniyi',
        isMissed: false,
        isCallMade: true,
        isVideo: true,
        date: '7 April, 23:52'),
  ];
}
