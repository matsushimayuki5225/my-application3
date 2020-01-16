# my アプリ DB設計
## users テーブル
### 相談を受けたいユーザーの情報

Column|Type|Options|
|------|----|-------|
|email|string|null: false| 
## 名前なしで、emailが同じの場合、区別が付かない
|password|string|null: false|
|username|string||

### Association
-has_many :messages
-has_many :comments


## messages テーブル
### ユーザーが医師に対してのメッセージ発信
Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|users_id|integer|null:false,foreign_key: true|

### Association
-belongs_to :user
-has_many :comments

## conmments テーブル
### 医師がユーザーに対してのメッセージ返信
Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|message_id|integer|null: false, foreign_key: true|

### Association
-belong_to :user
-belong_to :message