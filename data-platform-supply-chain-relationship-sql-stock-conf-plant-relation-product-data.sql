CREATE TABLE `data_platform_scr_stock_conf_plant_relation_product_data`
(
    `SupplyChainRelationshipID`                  int(16) NOT NULL,
    `SupplyChainRelationshipStockConfPlantID`    int(4) NOT NULL,
    `Buyer`                                      int(12) NOT NULL,
    `Seller`                                     int(12) NOT NULL,
    `StockConfirmationBusinessPartner`           int(12) NOT NULL,
    `StockConfirmationPlant`                     varchar(4) NOT NULL,
    `Product`                                    varchar(40) NOT NULL,
    `MRPType`                                    varchar(2) DEFAULT NULL,
    `MRPController`                              varchar(3) DEFAULT NULL,
    `CreationDate`                               date NOT NULL,
    `LastChangeDate`                             date NOT NULL,
    `IsMarkedForDeletion`                        tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipStockConfPlantID`, `Buyer`, `Seller`, `StockConfirmationBusinessPartner`, `StockConfirmationPlant`, `Product`),
    
    CONSTRAINT `DPFMSCRStockConfPlantRelationProductData_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipStockConfPlantID`, `Buyer`, `Seller`, `StockConfirmationBusinessPartner`, `StockConfirmationPlant`) REFERENCES `data_platform_scr_stock_conf_plant_relation_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipStockConfPlantID`, `Buyer`, `Seller`, `StockConfirmationBusinessPartner`, `StockConfirmationPlant`),
    CONSTRAINT `DPFMSCRStockConfPlantRelationProductDataProduct_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
