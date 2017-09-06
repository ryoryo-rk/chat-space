# README


## users_groupテーブル

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
-has_meny :messages
-has_many :group, through: :users_group


 ##groupsテーブル

|column|Type|Options|
|------|----|-------|
|name|string|null: false, index:true, unique: true|

### Assosiation
-has_many :messages
-has_many :users, through: :users_group

