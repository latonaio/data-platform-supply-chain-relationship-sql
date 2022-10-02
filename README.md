# data-platform-supply-chain-relationship-sql
data-platform-supply-chain-relationship-sqlは、データ連携基盤において、サプライチェーンリレーションシップデータを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-supply-chain-relationship-sqlは、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview 

## sqlの設定ファイル  
data-platform-supply-chain-relationship-sqlには、sqlの設定ファイルとして、以下のファイルが含まれます。 

* data-platform-supply-chain-relationship-sql-header-data.sql （データ連携基盤 サプライチェーンリレーションシップ - ヘッダデータ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法  
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  
