# Tester son code avec Rspec

[Apprendre Ruby on Rails (30/30) : Tester son code avec Rspec][1]

#### This project was created:

```ruby
rails new -d postgresql -C --skip-coffee --skip-turbolinks --skip-javascript --skip-sprockets --no-rc tester_avec_rspec
```
||Version|
| :--- | :---: |
Ruby|2.4.6
Rails|5.1.7

### Gemfile

Gem name|Version
| :--- | :---: |
rspec-rails|3.8

## Setup
> **run:** `rails db:create`

> **run:** `rails g rspec:install`
```shell
create  .rspec
      create  spec
      create  spec/spec_helper.rb
      create  spec/rails_helper.rb
```

> **run:** `rails g model Post name comments_count:integer`
```shell
invoke  active_record
      create    db/migrate/20191024004927_create_posts.rb
      create    app/models/post.rb
      invoke    rspec
      create      spec/models/post_spec.rb
```

> **run:** `rails g model Comment content post:references`
```shell
invoke  active_record
      create    db/migrate/20191024005223_create_comments.rb
      create    app/models/comment.rb
      invoke    rspec
      create      spec/models/comment_spec.rb
```

> **run:** `rails db:migrate`
```shell
== 20191024004927 CreatePosts: migrating ======================================
-- create_table(:posts)
   -> 0.0094s
== 20191024004927 CreatePosts: migrated (0.0094s) =============================

== 20191024005223 CreateComments: migrating ===================================
-- create_table(:comments)
   -> 0.0155s
== 20191024005223 CreateComments: migrated (0.0156s) ==========================
```

> **run:** `rspec`
```shell
**

Pending: (Failures listed here are expected and do not affect your suite's status)

  1) Comment add some examples to (or delete) /Users/user_name/Projects/Rails/tester_avec_rspec/spec/models/comment_spec.rb
     # Not yet implemented
     # ./spec/models/comment_spec.rb:4

  2) Post add some examples to (or delete) /Users/user_name/Projects/Rails/tester_avec_rspec/spec/models/post_spec.rb
     # Not yet implemented
     # ./spec/models/post_spec.rb:4


Finished in 0.00773 seconds (files took 4.37 seconds to load)
2 examples, 0 failures, 2 pending
```

[1]: https://youtu.be/c9xe9VxkAjI
