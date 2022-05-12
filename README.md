# Github Actions 教學
注意！！本篇教學以Unix-like(Linux、MacOS)環境為主軸，並提供指令範例，Windows的環境請自行上網查。

## 準備以下東西
  1. JAVA專案 * 1
  2. 伺服器 * 1
  3. 空的Github Repository

## 流程
  主要分成２個部分：
    1. 專案準備(本機)
    2. 伺服器準備(遠端登入)

### 1-1 在專案目錄下新增.github/workflows/資料夾
```bash
mkdir -p .github/workflows
```

### 1-2 準備*.yml檔案
```bash
vim .github/workflows/deploy.yml
```
檔案內容語法可以參考[這裡](https://ithelp.ithome.com.tw/articles/10262682)

### 2-1 請先到[網頁](https://github.com/actions/runner/releases)下載安裝檔
```bash
wget https://github.com/actions/runner/releases/download/v2.291.1/actions-runner-linux-x64-2.291.1.tar.gz
```

### 2-2 解壓縮
```bash
tar -xvzf actions-runner-linux-x64-2.291.1.tar.gz
```

### 2-3 安裝需要的套件
```bash
sudo apt install actions-runner-linux-x64-2.291.1.tar.gz ibkrb5-3 zlib1g libssl1.1 libicu63
```
對應不同的系統，所需要的套件名稱也會不同，可以參考[這邊](https://github.com/actions/runner/blob/main/docs/start/envlinux.md)


