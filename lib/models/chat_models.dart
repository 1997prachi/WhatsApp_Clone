class ChatModel {
  final String name;
  final String message;
  final String date;
  final String avatarUrl;

  ChatModel({this.name, this.message, this.date, this.avatarUrl});
}

List<ChatModel> dummydata = [
  new ChatModel(
    name: 'Prachi',
    message: 'Kaise ho?',
    date: '05/11/2020',
    avatarUrl:
        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=300"
  ),
  new ChatModel(
    name: 'Prachi',
    message: 'Kaise ho?',
    date: '05/11/2020',
    avatarUrl:'https://images.pexels.com/photos/556666/pexels-photo-556666.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=200'
       
  ),
];
