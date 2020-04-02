class Post {
  final String name;
  final String comment;
  final String imageUrl;
  final String image2;
  final String likes;
  final String desc;
  final String time;
  final String user;
  final bool hitLike;

  Post({ this.name, this.comment, this.imageUrl,this.image2, this.likes, this.desc, this.time, this.user, this.hitLike});
}

final List <Post> post = [
  Post(
    name: 'John23',
    imageUrl: 'images/post0.jpg',
    image2: 'images2/image20.jpg',
    comment: 'This is amazing! Awesome View!!!',
    likes: '1,012',
    desc: 'hhfikdsajbfdkjsbaggreigrewuiajgewabuig\nfbeiwau',
    time: '45 mins ago',
    user:'Jacob234',
  ),
  Post(
    name: 'JessicaSmith',
    comment: 'Really liking your collection!',
    imageUrl: 'images/post1.jpg',
    image2: 'images2/image21.jpg',
    likes: '654',
    desc: 'hhfikdsajbfdkjsbaggreagriehagre',
    time: '1 hour ago',
    user: 'Bobby88',
    ),
  Post(
    name: 'Kelsey383',
    comment: 'Amazing photos! Keep it up!',
    imageUrl: 'images/post2.jpg',
    image2: 'images2/image22.jpg',
    likes: '2,013',
    desc: 'hhfikdsajbfdkjsbagGERKOWANIUGREA',
    time: '2 hours ago',
    user: 'Clair100',
  ),
];

