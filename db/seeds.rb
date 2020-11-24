User.create(name: "kiril", email:"k@d.com", dob:"030298", password: "1234")
User.create(name: "kris", email:"k@j.com", dob:"030298", password: "1234")
User.create(name: "maggie", email:"m@h.com", dob:"030298", password: "1234")
User.create(name: "mace", email:"m@a.com", dob:"030298", password: "1234")

Post.create(text_content: "hey, this is kiril", user_id: 1)
Post.create(text_content: "hey, this is kris", user_id: 2)
Post.create(text_content: "hey, this is maggie", user_id: 3)
Post.create(text_content: "hey, this is mace", user_id: 4)