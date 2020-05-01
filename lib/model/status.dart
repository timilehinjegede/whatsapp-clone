class Status {
  final String contactName;
  final String time;
  final String imagePath;
  final bool isRecent;
  final bool isViewed;

  Status(
      {this.contactName,
      this.time,
      this.imagePath,
      this.isRecent,
      this.isViewed});

  static final List<Status> getAllStatus = [
    // model item 0
    Status(
      contactName: 'Emma',
      time: 'Just now',
      imagePath: '',
      isRecent: true,
      isViewed: false,
    ),
    // model item 1
    Status(
      contactName: 'Victor',
      time: 'Today, 09:22',
      imagePath: '',
      isRecent: false,
      isViewed: false,
    ),
    // model item 2
    Status(
      contactName: 'Tobi',
      time: 'Today, 01:14',
      imagePath: '',
      isRecent: true,
      isViewed: false,
    ),
    // model item 3
    Status(
      contactName: 'Segun',
      time: 'Yesterday, 23:48',
      imagePath: '',
      isRecent: false,
      isViewed: true,
    ),
    // model item 4
    Status(
      contactName: 'Bankole',
      time: 'Today, 08:48',
      imagePath: '',
      isRecent: false,
      isViewed: false,
    ),
    // model item 5
    Status(
      contactName: 'David',
      time: 'Yesterday, 22:34',
      imagePath: '',
      isRecent: false,
      isViewed: true,
    ),
    // model item 6
    Status(
      contactName: 'David',
      time: 'Today, 08:30',
      imagePath: '',
      isRecent: false,
      isViewed: false,
    ),
    // model item 7
    Status(
      contactName: 'Emmanuel',
      time: 'Yesterday, 17:59',
      imagePath: '',
      isRecent: false,
      isViewed: true,
    ),
    // model item 8
    Status(
      contactName: 'Julius',
      time: 'Yesterday, 17:45',
      imagePath: '',
      isRecent: true,
      isViewed: false,
    ),
    // model item 9
    Status(
      contactName: 'Kayode',
      time: 'Yesterday, 12:29',
      imagePath: '',
      isRecent: true,
      isViewed: false,
    ),
  ];
}
