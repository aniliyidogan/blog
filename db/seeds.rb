User.create(
email: 'mail@ror.com',
password:'rubyonrails')

Post.create(
title: 'Lorem Ipsum',
body:'Bu bir deneme postudur. Lütfen gerçek post sanıp paylaşmayın. Sonra insanlar bilgilendiklerini sanabilirler.',
image: 'http://cdn1.tnwcdn.com/wp-content/blogs.dir/1/files/2015/02/CoM_Stuk.io-Ruby-on-Rails.jpg',
color: "#12af34")

Post.create(
title: 'Life is short',
body:'Bu bir deneme postudur. Lütfen gerçek post sanıp paylaşmayın. Sonra insanlar bilgilendiklerini sanabilirler.',
image: 'http://ibrahimunyeli.com/wp-content/uploads/2015/01/rubyrails.png',
color: "#fa1234")

Tag.create(
name: "Rails")

Tag.create(
name: "Ruby")

PostTag.create(
post_id: 1,
tag_id: 1)

PostTag.create(
post_id: 2,
tag_id: 2)

Comment.create(
name:'Serdar Doğruyol',
body: "Kemal is perfect!",
website: "http://serdardogruyol.com/",
post_id: 1,
chech: true)

Comment.create(
name: 'David Heinemeier Hansson',
body: "Ruby on Rails is perfect!",
website: "http://david.heinemeierhansson.com/",
post_id: 1,
chech: true)

Hello.create(
name: "Linus Torvalds",
words: "Siz de insanların insan olduğu ve kendi aygıt sürücülerini yazdıkları günlerin özlemini çekmiyor musunuz?")

Hello.create(
name: "Linus Torvalds",
words: "Yazılım sekse benzer; özgür olduğunda daha iyidir.")

Hello.create(
name: "Linus Torvalds",
words: "They are smoking crack.")
