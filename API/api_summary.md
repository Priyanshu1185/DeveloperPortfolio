# API Interaction Summary

## 1. What is a REST API?

A REST API is a way for two applications to communicate with each other over the internet. It allows applications to request and exchange data using HTTP methods such as GET, POST, PUT and DELETE.

## 2. HTTP Status Codes

- 200 OK: The request was successful and the server returned the requested data.
- 404 Not Found: The requested resource could not be found on the server.

## 3. GitHub API

API URL: https://api.github.com/users/Priyanshu1185

The GitHub API was used to fetch my public profile information.

The following fields were extracted:

- name: GitHub profile name.
- public_repos: Number of public repositories.
- followers: Number of followers.
- created_at: Date when the GitHub account was created.

## 4. jq Filter

Command used:

jq '{name:.name, repos:.public_repos, followers:.followers, joined:.created_at}'

Explanation:

- name:.name extracts the profile name.
- repos:.public_repos extracts the public repository count.
- followers:.followers extracts the follower count.
- joined:.created_at extracts the account creation date.

## 5. JSONPlaceholder API

API URL: https://jsonplaceholder.typicode.com/posts

The JSONPlaceholder API was used to fetch sample posts.

Total posts received: 100

Command used to count posts:

jq length

## 6. Conclusion

This exercise helped me understand REST APIs, HTTP status codes, JSON data, curl and jq. I successfully fetched my GitHub profile and 100 sample posts from JSONPlaceholder.
