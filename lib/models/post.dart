class Post {
  final String name;
  final String comment;
  final String imageUrl;
  final String likes;
  final String desc;

  Post({ this.name, this.comment, this.imageUrl, this.likes, this.desc});
}

final List <Post> posts = [
  Post(
    name: 'John23',
    imageUrl: 'images/post0.jpg',
    comment: 'This is amazing! Awesome View!!!',
    likes: '1,012',
    desc: 'hhfikdsajbfdkjsbaggreigrewuiajgewabuig\nfbeiwau'
  ),
  Post(
    name: 'JessicaSmith',
    comment: 'Really liking your collection!',
    imageUrl: 'images/post1.jpg',
    likes: '654',
    desc: 'hhfikdsajbfdkjsbaggreagriehagre'
    ),
  Post(
    name: 'Kelsey383',
    comment: 'Amazing photos! Keep it up!',
    imageUrl: 'images/post2.jpg',
    likes: '2,013',
    desc: 'hhfikdsajbfdkjsbagGERKOWANIUGREA'
  ),
];