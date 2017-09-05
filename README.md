# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## users_groupテーブル

|column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :groups
- belongs_to :user


## messageテーブル

|column|Type|Options|
|------|----|-------|

|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
|content|string|
|image|string|

### Assosiation
- belongs_to :group
- belongs_to :user


 ##usersテーブル

|column|Type|Options|
|------|----|-------|
|name|string|null: false, index:true, unique: true|
|email|string|null: false|

### Assosiation
-has_meny :messages
-has_many :user_group, through: :users_group


 ##groupsテーブル

|column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Assosiation
-has_many :messages
-has_many :users, through: :users_group