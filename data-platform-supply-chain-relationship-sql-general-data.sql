CREATE TABLE `data_platform_supply_chain_relationship_general_data`
(
    `SupplyChainRelationshipID`     int(16) NOT NULL,
    `Buyer`                         int(12) NOT NULL,
    `Seller`                        int(12) NOT NULL,
    `CreationDate`                  date DEFAULT NULL,
    `LastChangeDate`                date DEFAULT NULL,
    `IsMarkedForDeletion`           tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`SupplyChainRelationshipID`, `Buyer`, `Seller`),
    
    CONSTRAINT `DataPlatformSupplyChainRelationshipGeneralDataBuyer_fk` FOREIGN KEY (`Buyer`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipGeneralDataSeller_fk` FOREIGN KEY (`Seller`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
