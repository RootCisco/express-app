## Node.js(Express) on docker
Node.js(Express)+Dockerでの構成プロジェクト。

- node v10.14.2
- 作業ディレクトリは`myapp`です。

### get start
      cd myapp
      npm install

（念のため`npm start`して`localhost:3000`でアクセスできるか確認）

<br>

その後、rootディレクトリ内で以下コマンド。<br>
イメージをビルドしてコンテナ生成、バックグラウンドで起動させる。

      make start    // locahost:4000で起動。(コンテナの3000番にポートフォワード)

停止させたいとき

      make stop   // コンテナを停止。
      make down   // コンテナを停止させて、そのコンテナとネットワークを削除。

<br>

その他`docker-compose`で使いそうなコマンドはMakefileでまとめてあります。
