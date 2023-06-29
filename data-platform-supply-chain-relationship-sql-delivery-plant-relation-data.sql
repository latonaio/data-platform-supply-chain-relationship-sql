CREATE TABLE `data_platform_scr_delivery_plant_relation_data`
(
    `SupplyChainRelationshipID`                 int(16) NOT NULL,
    `SupplyChainRelationshipDeliveryID`         int(6) NOT NULL,
    `SupplyChainRelationshipDeliveryPlantID`    int(4) NOT NULL,
    `Buyer`                                     int(12) NOT NULL,
    `Seller`                                    int(12) NOT NULL,
    `DeliverToParty`                            int(12) NOT NULL,
    `DeliverFromParty`                          int(12) NOT NULL,
    `DeliverToPlant`                            varchar(4) NOT NULL,
    `DeliverFromPlant`                          varchar(4) NOT NULL,
    `DefaultRelation`                           tinyint(1) DEFAULT NULL, 
    `MRPType`                                   varchar(2) DEFAULT NULL,
    `MRPController`                             varchar(3) DEFAULT NULL,
    `CreationDate`                              date NOT NULL,
    `LastChangeDate`                            date NOT NULL,
    `IsMarkedForDeletion`                       tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`),
    
    CONSTRAINT `DPFMSCRDeliveryPlantRelationData_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`) REFERENCES `data_platform_scr_delivery_relation_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`),
    CONSTRAINT `DPFMSCRDeliveryPlantRelationDataDeliverToPlant_fk` FOREIGN KEY (`DeliverToParty`, `DeliverToPlant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`),
    CONSTRAINT `DPFMSCRDeliveryPlantRelationDataDeliverFromPlant_fk` FOREIGN KEY (`DeliverFromParty`, `DeliverFromPlant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
