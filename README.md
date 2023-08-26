# data-platform-supply-chain-relationship-sql
data-platform-supply-chain-relationship-sqlは、データ連携基盤において、サプライチェーンリレーションシップデータを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-supply-chain-relationship-sqlは、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview 

## sqlの設定ファイル  
data-platform-supply-chain-relationship-sqlには、sqlの設定ファイルとして、以下のファイルが含まれます。 

* data-platform-supply-chain-relationship-sql-general-data.sql （データ連携基盤 サプライチェーンリレーションシップ - 一般データ）
* data-platform-supply-chain-relationship-sql-general-doc-data.sql （データ連携基盤 サプライチェーンリレーションシップ - 一般文書データ）
* data-platform-supply-chain-relationship-sql-transaction-data.sql （データ連携基盤 サプライチェーンリレーションシップ - 取引データ）
* data-platform-supply-chain-relationship-sql-delivery-plant-relation-data.sql （データ連携基盤 サプライチェーンリレーションシップ - 入出荷関係データ）
* data-platform-supply-chain-relationship-sql-billing-relation-data.sql （データ連携基盤 サプライチェーンリレーションシップ - 請求関係データ）
* data-platform-supply-chain-relationship-sql-payment-relation-data.sql （データ連携基盤 サプライチェーンリレーションシップ - 支払関係データ）
* data-platform-supply-chain-relationship-sql-plant-delivery-relation-data.sql （データ連携基盤 サプライチェーンリレーションシップ - プラント入出荷関係データ）
* data-platform-supply-chain-relationship-sql-plant-delivery-relation-product-data.sql （データ連携基盤 サプライチェーンリレーションシップ - プラント入出荷関係品目データ）
* data-platform-supply-chain-relationship-sql-plant-delivery-plant-relation-product-mrp-area-data.sql （データ連携基盤 サプライチェーンリレーションシップ - プラント入出荷関係品目MRPエリアデータ）
* data-platform-supply-chain-relationship-sql-stock-conf-plant-relation-data.sql （データ連携基盤 サプライチェーンリレーションシップ - 在庫確認プラント関係データ）
* data-platform-supply-chain-relationship-sql-stock-conf-plant-relation-product-data.sql （データ連携基盤 サプライチェーンリレーションシップ - 在庫確認プラント関係品目データ）
* data-platform-supply-chain-relationship-sql-production-plant-relation-data.sql （データ連携基盤 サプライチェーンリレーションシップ - 製造プラント関係データ）
* data-platform-supply-chain-relationship-sql-production-plant-relation-product-mrp-area-data.sql （データ連携基盤 サプライチェーンリレーションシップ - 製造プラント関係品目MRPエリアデータ）
* data-platform-supply-chain-relationship-sql-freight-relation-data.sql （データ連携基盤 サプライチェーンリレーションシップ - 貨物関係データ）
* data-platform-supply-chain-relationship-sql-freight-transaction-data.sql （データ連携基盤 サプライチェーンリレーションシップ - 貨物取引データ）
* data-platform-supply-chain-relationship-sql-freight-billing-relation-data.sql （データ連携基盤 サプライチェーンリレーションシップ - 貨物請求関係データ）
* data-platform-supply-chain-relationship-sql-freight-payment-relation-data.sql （データ連携基盤 サプライチェーンリレーションシップ - 貨物支払関係データ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法  
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  
