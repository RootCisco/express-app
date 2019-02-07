## Node.js(Express) on docker
Node.js(Express)+Dockerでの構成プロジェクト。

- node v10.14.2
- 作業ディレクトリは`myapp`です。

### get start
      cd myapp
      npm install

（念のため`npm start`して`localhost:3000`でアクセスできるか確認）

その後、rootディレクトリ内で以下コマンド。<br>
イメージをビルドしてコンテナ生成、バックグラウンドで起動させる。

      make start    // locahost:4000で起動。(コンテナの3000番にポートフォワード)

停止させたいとき

      make stop     // 停止させるとき。
      make down　　　// 停止させてコンテナ、ネットワークを削除。

<br>

その他`docker-compose`で使いそうなコマンドはMakefileでまとめてあります。
