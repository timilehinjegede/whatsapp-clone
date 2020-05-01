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
      imagePath: '',
      contactName: 'Temi',
      isMissed: true,
      isCallMade: false,
      isVideo: false,
      date: '28 April, 17:59',
    ),
    // model item 1
    Call(
      imagePath: '',
      contactName: 'Emmanuel',
      isMissed: false,
      isCallMade: false,
      isVideo: false,
      date: '26 April, 21:04',
    ),
    // model item 2
    Call(
      imagePath: '',
      contactName: 'Samuel',
      isMissed: true,
      isCallMade: false,
      isVideo: false,
      date: '26 April, 14:54',
    ),
    // model item 3
    Call(
      imagePath: '',
      contactName: 'Tolu',
      isMissed: false,
      isCallMade: true,
      isVideo: false,
      date: '22 April, 04:21',
    ),
    // model item 4
    Call(
      imagePath: '',
      contactName: 'David',
      isMissed: false,
      isCallMade: false,
      isVideo: true,
      date: '21 April, 16:06',
    ),
    // model item 5
    Call(
      imagePath: '',
      contactName: 'David',
      isMissed: true,
      isCallMade: false,
      isVideo: true,
      date: '21 April, 16:05',
    ),
    // model item 6
    Call(
      imagePath: '',
      contactName: 'Kunle',
      isMissed: true,
      isCallMade: false,
      isVideo: false,
      date: '20 April, 16:14',
    ),
    // model item 7
    Call(
      imagePath: '',
      contactName: 'Pelumi',
      isMissed: true,
      isCallMade: false,
      isVideo: false,
      date: '20 April, 16:08',
    ),
    // model item 8
    Call(
      imagePath: '',
      contactName: '+234 900 100 0000',
      isMissed: false,
      isCallMade: false,
      isVideo: true,
      date: '9 April, 23:56',
    ),
    // model item 9
    Call(
      imagePath: '',
      contactName: 'Adeniyi',
      isMissed: false,
      isCallMade: true,
      isVideo: true,
      date: '7 April, 23:52',
    ),
  ];
}
