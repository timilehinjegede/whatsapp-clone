class Chat {
  final String imagePath;
  final String contactName;
  final String groupName;
  final String messsage;
  final bool isSentMessage;
  final bool isReceivedMessage;
  final bool isRead;
  final bool isDelivered;
  final int numOfMessage;
  final String date;
  final bool isGroup;
  final bool isMuted;
  final bool isDeleted;

  Chat(
      {this.imagePath,
      this.contactName,
      this.groupName,
      this.messsage,
      this.isSentMessage,
      this.isReceivedMessage,
      this.isRead,
      this.isDelivered,
      this.numOfMessage,
      this.date,
      this.isGroup,
      this.isMuted,
      this.isDeleted});

  static final List<Chat> getAllChat = [
    Chat(
      imagePath: '',
      contactName: 'Kunle',
      messsage: 'Gee, Wassup?',
      isSentMessage: false,
      isReceivedMessage: true,
      numOfMessage: 1,
      isRead: false,
      isDelivered: false,
      isDeleted: false,
      isMuted: false,
      isGroup: false,
      groupName: 'Flutter Lagos',
      date: '07:57'
    ),
    Chat(
        imagePath: '',
        contactName: 'David',
        messsage: 'Have you made the pull request?',
        isSentMessage: true,
        isReceivedMessage: false,
        numOfMessage: 2,
        isRead: false,
        isDelivered: true,
        isDeleted: false,
        isMuted: false,
        isGroup: false,
        groupName: 'Flutter Lagos',
        date: '5:01'
    ),
    Chat(
        imagePath: '',
        contactName: 'Victor',
        messsage: 'Alright the, two it is?',
        isSentMessage: true,
        isReceivedMessage: false,
        numOfMessage: 2,
        isRead: true,
        isDelivered: true,
        isDeleted: false,
        isMuted: true,
        isGroup: false,
        groupName: 'Flutter Lagos',
        date: '02:57'
    ),
    Chat(
        imagePath: '',
        contactName: '+234 806 295 1693',
        messsage: 'I\'m on that skipped my mind!',
        isSentMessage: false,
        isReceivedMessage: true,
        numOfMessage: 1,
        isRead: false,
        isDelivered: false,
        isDeleted: false,
        isMuted: true,
        isGroup: false,
        groupName: 'Flutter Lagos',
        date: 'Yesterday'
    ),
    Chat(
        imagePath: '',
        contactName: 'Kunle',
        messsage: 'Gee, Wassup?',
        isSentMessage: false,
        isReceivedMessage: true,
        numOfMessage: 2,
        isRead: false,
        isDelivered: false,
        isDeleted: false,
        isMuted: false,
        isGroup: false,
        groupName: 'Flutter Lagos',
        date: 'Yesterday'
    ),
    Chat(
        imagePath: '',
        contactName: 'Kunle',
        messsage: 'Gee, Wassup?',
        isSentMessage: false,
        isReceivedMessage: true,
        numOfMessage: 2,
        isRead: false,
        isDelivered: false,
        isDeleted: false,
        isMuted: true,
        isGroup: false,
        groupName: 'Flutter Lagos',
        date: 'Yesterday'
    ),
    Chat(
        imagePath: '',
        contactName: 'Wunmi',
        messsage: 'Gee, Wassup?',
        isSentMessage: false,
        isReceivedMessage: true,
        numOfMessage: 2,
        isRead: false,
        isDelivered: false,
        isDeleted: false,
        isMuted: false,
        isGroup: false,
        groupName: 'Flutter Lagos',
        date: 'Yesterday'
    ),
    Chat(
        imagePath: '',
        contactName: 'Akin',
        messsage: 'Gee, Wassup?',
        isSentMessage: false,
        isReceivedMessage: true,
        numOfMessage: 2,
        isRead: false,
        isDelivered: false,
        isDeleted: false,
        isMuted: true,
        isGroup: false,
        groupName: 'Flutter Lagos',
        date: '28/04/2020'
    ),
    Chat(
        imagePath: '',
        contactName: 'Tunde',
        messsage: 'Yoo my man',
        isSentMessage: false,
        isReceivedMessage: true,
        numOfMessage: 2,
        isRead: false,
        isDelivered: false,
        isDeleted: true,
        isMuted: false,
        isGroup: false,
        groupName: 'Flutter Lagos',
        date: '28/04/2020'
    ),
    Chat(
        imagePath: '',
        contactName: 'Romeo',
        messsage: 'What\'s good fam?',
        isSentMessage: false,
        isReceivedMessage: true,
        numOfMessage: 5,
        isRead: true,
        isDelivered: false,
        isDeleted: false,
        isMuted: true,
        isGroup: false,
        groupName: 'Flutter Lagos',
        date: '26/04/2020'
    ),
  ];
}
