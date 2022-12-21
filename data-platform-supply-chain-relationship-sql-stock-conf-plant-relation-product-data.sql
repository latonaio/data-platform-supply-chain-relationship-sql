CREATE TABLE `data_platform_supply_chain_relationship_stock_conf_plant_relation_product_data`
(
    `SupplyChainRelationshipID`             int(16) NOT NULL,
    `SupplyChainRelationshipStockConfID`    int(4) NOT NULL,
    `Buyer`                                 int(12) NOT NULL,
    `Seller`                                int(12) NOT NULL,
    `DeliverToParty`                        int(12) NOT NULL,
    `DeliverToPlant`                        varchar(4) NOT NULL,
    `StockConfirmationBusinessPartner`      varchar(4) NOT NULL,
    `StockConfirmationPlant`                varchar(4) NOT NULL,
    `Product`                               varchar(40) NOT NULL,
    `MRPType`                               varchar(2) DEFAULT NULL,
    `MRPController`                         varchar(3) DEFAULT NULL,
    `CreationDate`                          date DEFAULT NULL,
    `LastChangeDate`                        date DEFAULT NULL,
    `IsMarkedForDeletion`                   tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipStockConfID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverToPlant`, `StockConfirmationBusinessPartner`, `StockConfirmationPlant`, `Product`),
    
    CONSTRAINT `DataPlatformSupplyChainRelationshipStockConfRelationProductData_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipStockConfID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverToPlant`, `StockConfirmationBusinessPartner`, `StockConfirmationPlant`) REFERENCES `data_platform_supply_chain_relationship_stock_conf_plant_relation_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipStockConfID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverToPlant`, `StockConfirmationBusinessPartner`, `StockConfirmationPlant`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipStockConfRelationProductDataProduct_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_general_data` (`Product`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
