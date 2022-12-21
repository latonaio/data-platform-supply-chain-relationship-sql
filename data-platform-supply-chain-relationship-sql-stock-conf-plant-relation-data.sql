CREATE TABLE `data_platform_supply_chain_relationship_stock_conf_plant_relation_data`
(
    `SupplyChainRelationshipID`             int(16) NOT NULL,
    `SupplyChainRelationshipStockConfID`    int(4) NOT NULL,
    `Buyer`                                 int(12) NOT NULL,
    `Seller`                                int(12) NOT NULL,
    `DeliverToParty`                        int(12) NOT NULL,
    `DeliverToPlant`                        varchar(4) NOT NULL,
    `StockConfirmationBusinessPartner`      varchar(4) NOT NULL,
    `StockConfirmationPlant`                varchar(4) NOT NULL,
    `DefaultRelation`                       tinyint(1) DEFAULT NULL, 
    `MRPType`                               varchar(2) DEFAULT NULL,
    `MRPController`                         varchar(3) DEFAULT NULL,
    `CreationDate`                          date DEFAULT NULL,
    `LastChangeDate`                        date DEFAULT NULL,
    `IsMarkedForDeletion`                   tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipStockConfID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverToPlant`, `StockConfirmationBusinessPartner`, `StockConfirmationPlant`),
    
    CONSTRAINT `DataPlatformSupplyChainRelationshipStockConfRelationData_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `Buyer`, `Seller`) REFERENCES `data_platform_supply_chain_relationship_general_data` (`SupplyChainRelationshipID`, `Buyer`, `Seller`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipStockConfRelationDataDeliverToPlant_fk` FOREIGN KEY (`DeliverToParty`, `DeliverToPlant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipStockConfRelationDataStockConfirmationPlant_fk` FOREIGN KEY (`StockConfirmationBusinessParnter`, `StockConfirmationBusinessPlant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
