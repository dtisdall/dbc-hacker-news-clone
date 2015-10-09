u = User.create(display_name: "David Tisdall", username: 'dtisdall', password: 'password', email:'david.tisdall@thursday5th.com.au')
p = Post.create(user: u, url: 'hellokitty.com', title:"hellokitty")
c = Comment.create(text: "yay", user: u, post: p)

u = User.create(display_name: "Joe Blogs",username: 'hurkulanieum', password: 'password', email:'fake@fake.com')
p = Post.create(user: u, url: 'techspot.com', title: 'man invents food')
ca = Comment.create(text: "THIS IS AMAZING AND I WANT IT", user: u, post: p)
c = Comment.create(text: "Seed that site", user: u, post: p, parent: ca)

u = User.create(display_name: "Steve McQueen",username: 'derpmaster', password: 'password', email:'more@fake.com')
p = Post.create(user: u, url: 'theverge.com', title: 'man invents wine')
c = Comment.create(text: "Not even remotely worth it fool", user: u, post: p)