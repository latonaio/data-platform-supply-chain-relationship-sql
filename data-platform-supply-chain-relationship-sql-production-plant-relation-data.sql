CREATE TABLE `data_platform_supply_chain_relationship_production_plant_relation_data`
(
    `SupplyChainRelationshipID`                  int(16) NOT NULL,
    `SupplyChainRelationshipProductionPlantID`   int(4) NOT NULL,
    `Buyer`                                      int(12) NOT NULL,
    `Seller`                                     int(12) NOT NULL,
    `ProductionPlantBusinessPartner`             int(12) NOT NULL,
    `ProductionPlant`                            varchar(4) NOT NULL,
    `DefaultRelation`                            tinyint(1) DEFAULT NULL, 
    `MRPType`                                    varchar(2) DEFAULT NULL,
    `MRPController`                              varchar(3) DEFAULT NULL,
    `CreationDate`                               date DEFAULT NULL,
    `LastChangeDate`                             date DEFAULT NULL,
    `IsMarkedForDeletion`                        tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipProductionPlantID`, `Buyer`, `Seller`, `ProductionPlantBusinessPartner`, `ProductionPlant`),
    
    CONSTRAINT `DataPlatformSupplyChainRelationshipProductionPlantRelationData_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `Buyer`, `Seller`) REFERENCES `data_platform_supply_chain_relationship_general_data` (`SupplyChainRelationshipID`, `Buyer`, `Seller`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipProductionPlantRelationDataProductionPlant_fk` FOREIGN KEY (`ProductionPlantBusinessParnter`, `ProductionPlant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;