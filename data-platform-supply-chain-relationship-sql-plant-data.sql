CREATE TABLE `data_platform_supply_chain_relationship_plant_data`
(
    `SupplyChainRelationshipID`     int(16) NOT NULL,
    `DeliverFrom`                   int(12) NOT NULL,
    `DeliverTo`                     int(12) NOT NULL,
    `DeliverFromPlant`              varchar(4) NOT NULL,
    `DeliverToPlant`                varchar(4) NOT NULL,

    PRIMARY KEY (`SupplyChainRelationshipID`, `DeliverFrom`, `DeliverTo`, `DeliverFromPlant`, `DeliverToPlant`),
    
    CONSTRAINT `DataPlatformSupplyChainRelationshipPlantData_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `DeliverFrom`, `DeliverTo`) REFERENCES `data_platform_supply_chain_relationship_general_data` (`SupplyChainRelationshipID`, `DeliverFrom`, `DeliverTo`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipPlantDataDeliverFromPlant_fk` FOREIGN KEY (`DeliverFrom`, `DeliverFromPlant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipPlantDataDeliverToPlant_fk` FOREIGN KEY (`DeliverTo`, `DeliverToPlant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
