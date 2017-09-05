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

## user_groupテーブル

|column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
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
|name|string|null: false, add_index :users, :name, unique: true|
|email|string|null: false, add_index :users, :email, unique: true|

### Assosiation
-has_meny :messages
-has_many :user_group
