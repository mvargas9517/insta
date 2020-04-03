class Post {
  const Post(this.name, this.comment, this.imageUrl,this.image2, this.likes, this.desc, this.time, this.user,);
  final String name;
  final String comment;
  final String imageUrl;
  final String image2;
  final String likes;
  final String desc;
  final String time;
  final String user;
}

final List <Post> post = [
  Post(
    'John23',
    'images/post0.jpg',
    'images2/image20.jpg',
    'This is amazing! Awesome View!!!',
    '1,012',
    'hhfikdsajbfdkjsbaggreigrewuiajgewabuig\nfbeiwau',
    '45 mins ago',
    'Jacob234',
  ),
  Post(
    'JessicaSmith',
    'Really liking your collection!',
    'images/post1.jpg',
    'images2/image21.jpg',
    '654',
    'hhfikdsajbfdkjsbaggreagriehagre',
    '1 hour ago',
    'Bobby88',
    ),
  Post(
    'Kelsey383',
    'Amazing photos! Keep it up!',
    'images/post2.jpg',
    'images2/image22.jpg',
    '2,013',
    'hhfikdsajbfdkjsbagGERKOWANIUGREA',
    '2 hours ago',
    'Clair100',
  ),
];

