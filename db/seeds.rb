brian = User.create(username: "Bsheridan12", 
                    email: "bsheridan12@gmail.com",
                    first_name: "Brian",
                    last_name: "Sheridan",
                    password: "test")

someguy = User.create(username: "Someguy12", 
                    email: "someguy12@gmail.com",
                    first_name: "Some",
                    last_name: "Guy",
                    password: "test")

someotherguy = User.create(username: "Someotherguy12", 
                    email: "someotherguy12@gmail.com",
                    first_name: "SomeOther",
                    last_name: "Guy",
                    password: "test")

b_blog = Blog.create(title: "My Rails Blog", author: brian)

post1 = Post.create(title: "First Post", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", blog: b_blog)
post2 = Post.create(title: "Second Post", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", blog: b_blog)

c1 = Comment.create(body: "Fake and Gay", commenter: someguy, post: post1)
c2 = Comment.create(body: "Laaammmeeee", commenter: someotherguy, post: post1)
c3 = Comment.create(body: "Pics or GTFO", commenter: someotherguy, post: post2)

