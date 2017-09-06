# README


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
|content|string|null: false, foreign_key: true|
|image|string|null: false, foreign_key: true|

### Assosiation
- belongs_to :group
- belongs_to :user


 ##usersテーブル

|column|Type|Options|
|------|----|-------|
|name|string|null: false, index:true, unique: true|
|email|string|null: false, unique: true|

### Assosiation
<<<<<<< HEAD
-has_meny :messages
-has_many :user_group, through: :users_group
=======
- has_many :messages
- has_many :user_group
>>>>>>> origin/作業用


 ##groupsテーブル

|column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Assosiation
<<<<<<< HEAD
-has_many :messages
-has_many :users, through: :users_group
=======
- has_many :messages
>>>>>>> origin/作業用
