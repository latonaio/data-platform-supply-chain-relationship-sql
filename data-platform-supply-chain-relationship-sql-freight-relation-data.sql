CREATE TABLE `data_platform_scr_freight_relation_data`
(
    `SupplyChainRelationshipID`                 int(16) NOT NULL,
    `SupplyChainRelationshipDeliveryID`         int(6) NOT NULL,
    `SupplyChainRelationshipDeliveryPlantID`    int(4) NOT NULL,
    `SupplyChainRelationshipFreightID`          int(4) NOT NULL,
    `Buyer`                                     int(12) NOT NULL,
    `Seller`                                    int(12) NOT NULL,
    `DeliverToParty`                            int(12) NOT NULL,
    `DeliverFromParty`                          int(12) NOT NULL,
    `DeliverToPlant`                            varchar(4) NOT NULL,
    `DeliverFromPlant`                          varchar(4) NOT NULL,
    `FreightPartner`                            int(12) NOT NULL,
    `CreationDate`                              date DEFAULT NULL,
    `LastChangeDate`                            date DEFAULT NULL,
    `IsMarkedForDeletion`                       tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `SupplyChainRelationshipFreightID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`, `FreightPartner`),
    
    CONSTRAINT `DPFMSCRFreightRelationDataSCRDeliveryPlant_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`) REFERENCES `data_platform_scr_delivery_plant_relation_data` (`SupplyChainRelationshipID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`),
    CONSTRAINT `DPFMSCRFreightRelationDataFreightPartner_fk` FOREIGN KEY (`FreightPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)    

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
