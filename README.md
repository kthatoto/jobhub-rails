# APIs

## 共通
メソッドの指定がなければ`GET`

ユーザー登録以外のリクエストには、ヘッダーに
```
Authorization: <access_token>
```
が必須
### response
```
{
  "user": {
    "name": "takahashi",
    "detail": "自己紹介...",
  }
}
```
## ユーザー登録 /users
### method
- `post`
### parameters
```
{
  github_access_token: "asdfasdfasdf..."
}
```
### response
```
{
  message: "created",
  access_token: "qwerqwerqwer..."
}
```

## /dashboard
### parameters
なし

### reqponse
```
{
  "user": {
    "name": "takahashi",
    "detail": "自己紹介..."
  },
  "issues": [
    {
      "id": 1,
      "title": "Ruby help!",
      "price": 1000,
      "user": {
        "id": 1,
        "name": "takahashi",
      },
    },
    ...
  ],
  "skills": [
    "Ruby",
    "PHP",
    ...
  ],
}
```

## /mypage
### parameters
なし

### response
```
{
  "user": {
    "name": "takahashi",
    "id": 1,
  },
  "challenges": [
    {
      "detail": "頑張りました",
      "status": "challenging",
      "pull_request_url": "https://github.com/takahashi/test-repo/pull/2",
      "issue": {
        id: 1,
        title: "Rubyについてです、助けてください！",
        owner_name: "takahashi",
        cost: 100,
      },
    },
    ...
  ],
  "issues": [
    {
      "id": 1,
      "title": "Ruby help!",
      "price": 1000,
      "status": "open",
    },
    ...
  ],
}
```

## /issues/:id
### parameters
なし

### response
```
{
  "is_my_issue": true,
  "user": { //ログイン中のユーザー
    "name": "takahashi",
    "detail": "rubyを普段頑張ってます。...",
  }
  "issue": {
    "title": "Ruby help!",
    "detail": "Rubyについてです。助けてください",
    "repository_url": "https://github.com/takahashi/jobhub",
    "issue_url": "https://github.com/takahashi/jobhub/issues/1",
    "cost": 1000,
    "user": { // issueの発注ユーザー
      "name": "tanaka",
      "detail": "perl頑張ってます、たまにrubyやります"
    }
  },
  "challenges": [
    {
      "detail": "頑張りました",
      "status": "challenging",
      "issue_id": 2,
      "user": {
        "id": 1,
        "name": "takahashi",
      }
    }
  ]
}
```
