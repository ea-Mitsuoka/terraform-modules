# 初期設定時のGitコマンド

## HTTP

### コマンドラインから新しいリポジトリを作成

```shell
touch README.md
git init
git checkout -b main
git add README.md
git commit -m "first commit"
git remote add origin http://localhost:3000/admin/terraform-modules.git
git push -u origin main
```

### コマンドラインから既存のリポジトリをプッシュ

```shell
git remote add origin http://localhost:3000/admin/terraform-modules.git
git push -u origin main
```

## SSH

### コマンドラインから新しいリポジトリを作成

```shell
touch README.md
git init
git checkout -b main
git add README.md
git commit -m "first commit"
git remote add origin yukihide.mitsuoka@localhost:admin/terraform-modules.git
git push -u origin main
```

### コマンドラインから既存のリポジトリをプッシュ

```shell
git remote add origin yukihide.mitsuoka@localhost:admin/terraform-modules.git
git push -u origin main
```
