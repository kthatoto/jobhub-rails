# APIs

## 共通
### response
```
{
  "user": {
    "name": "takahashi",
    "detail": "自己紹介...",
  }
}
```

## /dashboard
### request
なし

### reqponse
```
{
  "issues": [
    {
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
### request
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
### request
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
### response
```
{
  ""
}
```
