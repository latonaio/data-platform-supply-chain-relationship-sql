CREATE TABLE `data_platform_supply_chain_relationship_delivery_relation_data`
(
    `SupplyChainRelationshipID`             int(16) NOT NULL,
    `SupplyChainRelationshipDeliveryID`     int(6) NOT NULL,
    `Buyer`                                 int(12) NOT NULL,
    `Seller`                                int(12) NOT NULL,
    `DeliverToParty`                        int(12) NOT NULL,
    `DeliverFromParty`                      int(12) NOT NULL,
    `DefaultRelation`                       tinyint(1) DEFAULT NULL,
    `CreationDate`                          date DEFAULT NULL,
    `LastChangeDate`                        date DEFAULT NULL,
    `IsMarkedForDeletion`                   tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`),
    
    CONSTRAINT `DataPlatformSupplyChainRelationshipDeliveryRelationData_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `Buyer`, `Seller`) REFERENCES `data_platform_supply_chain_relationship_general_data` (`SupplyChainRelationshipID`, `Buyer`, `Seller`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipDeliveryRelationDataDeliverToParty_fk` FOREIGN KEY (`DeliverToParty`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipDeliveryRelationDataDeliverFromParty_fk` FOREIGN KEY (`DeliverFromParty`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
