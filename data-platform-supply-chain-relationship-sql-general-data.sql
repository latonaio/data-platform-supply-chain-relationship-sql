CREATE TABLE `data_platform_supply_chain_relationship_general_data`
(
    `SupplyChainRelationshipID`     int(16) NOT NULL,
    `DeliverFrom`                   int(12) NOT NULL,
    `DeliverTo`                     int(12) NOT NULL,

    PRIMARY KEY (`SupplyChainRelationshipID`, `DeliverFrom`, `DeliverTo`),
    
    CONSTRAINT `DataPlatformSupplyChainRelationshipGeneralDataDeliverFrom_fk` FOREIGN KEY (`DeliverFrom`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipGeneralDataDeliverTo_fk` FOREIGN KEY (`DeliverTo`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
