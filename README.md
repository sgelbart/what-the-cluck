                                               
# What the Cluck
The social network for chickens and their keepers.

This project was built as a Rails learning project. It is a WIP.

**Please see "Hatches" for example form for posting and adding images**

![alt text](https://raw.githubusercontent.com/sgelbart/what-the-cluck/master/homescreen.png)

# What I did
- Simple schema design and scaffolding of objects and relationships: hatches, projects, chickens, breeds, images, posts, and more
- Posts and images created as polymorphic relationships to projects, hatches and chickens for easy image and social actions (experimental)
- Image upload
- Nested has_many form for posting images for objects (**see Hatches page**)
- Post creation when objects created (can abstract this into modules for all postable)
- Homepage grid view
- Branding (excluding illustration), concept, and design using Bootstrap.

# Todo
- [ ] **Update to secure dependencies!!!**
- [ ] Add posts for additional objects
- [ ] Add likes and commenting
- [ ] Add devise!
- [ ] Add admin backend
- [ ] And more...


