CREATE TABLE `data_platform_scr_production_plant_relation_product_mrp_data`
(
    `SupplyChainRelationshipID`                  int(16) NOT NULL,
    `SupplyChainRelationshipProductionPlantID`   int(4) NOT NULL,
    `Buyer`                                      int(12) NOT NULL,
    `Seller`                                     int(12) NOT NULL,
    `ProductionPlantBusinessPartner`             int(12) NOT NULL,
    `ProductionPlant`                            varchar(4) NOT NULL,
    `Product`                                    varchar(40) NOT NULL,
    `MRPArea`                                    varchar(10) NOT NULL,
    `ProductionPlantStorageLocation`             varchar(4) DEFAULT NULL,
    `MRPType`                                    varchar(2) DEFAULT NULL,
    `MRPController`                              varchar(3) DEFAULT NULL,
    `CreationDate`                               date NOT NULL,
    `LastChangeDate`                             date NOT NULL,
    `IsMarkedForDeletion`                        tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipProductionPlantID`, `Buyer`, `Seller`, `ProductionPlantBusinessPartner`, `ProductionPlant`, `Product`, `MRPArea`),
    
    CONSTRAINT `DPFMSCRProductionPlantRelationProductData_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipProductionPlantID`, `Buyer`, `Seller`, `ProductionPlantBusinessPartner`, `ProductionPlant`) REFERENCES `data_platform_scr_production_plant_relation_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipProductionPlantID`, `Buyer`, `Seller`, `ProductionPlantBusinessPartner`, `ProductionPlant`),
    CONSTRAINT `DPFMSCRProductionPlantRelationProductDataProduct_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`),
    CONSTRAINT `DPFMSCRProductionPlantRelationProductDataProductionPlantStorageLocation_fk` FOREIGN KEY (`Product`, `ProductionPlantBusinessPartner`, `ProductionPlant`, `ProductionPlantStorageLocation`) REFERENCES `data_platform_product_master_storage_location_data` (`Product`, `BusinessPartner`, `Plant`, `StorageLocation`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
