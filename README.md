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
      "status": "challenging",
      "issue_id": 2,
      "detail": "頑張りました",
      "pull_request_url": "https://github.com/takahashi/test-repo/pull/2",
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
  "issue": {
    "title": "Ruby help!",
    "price": 1000,
    "detail": "Rubyについてです。助けてください",
    "repository_url": "https://github.com/takahashi/jobhub",
    "issue_url": "https://github.com/takahashi/jobhub/issues/1",
  },
  "challenges": [
    {
      "status": "challenging",
      "issue_id": 2,
      "detail": "頑張りました",
      "pull_request_url": "https://github.com/takahashi/test-repo/pull/2",
    }
  ]
}
```
