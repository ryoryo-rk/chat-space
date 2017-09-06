# README


## users_groupテーブル

|column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
|add_index :users_group, :user_id|
|add_index :users_group, :group_id

### Association
- belongs_to :group
- belongs_to :user


## messageテーブル

|column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
|content|string| foreign_key: true|
|image|string| foreign_key: true|
|add_index :message, :user_id|
|add_index :message, :group_id|

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
-has_many :users_groups, through: :users_group


 ##groupsテーブル

|column|Type|Options|
|------|----|-------|
|name|string|null: false, index:true, unique: true|

### Assosiation
-has_many :messages
-has_many :users, through: :users_groups

