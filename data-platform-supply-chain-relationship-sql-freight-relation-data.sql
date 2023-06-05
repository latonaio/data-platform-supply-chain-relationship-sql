CREATE TABLE `data_platform_supply_chain_relationship_freight_relation_data`
(
    `SupplyChainRelationshipID`             int(16) NOT NULL,
    `SupplyChainRelationshipFreightID`      int(16) NOT NULL,
    `Buyer`                                 int(12) NOT NULL,
    `Seller`                                int(12) NOT NULL,
    `FreightPartner`                        int(12) NOT NULL,
    `CreationDate`                          date DEFAULT NULL,
    `LastChangeDate`                        date DEFAULT NULL,
    `IsMarkedForDeletion`                   tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipFreightID`, `Buyer`, `Seller`, `FreightPartner`),
    
    CONSTRAINT `DataPlatformSupplyChainRelationshipFreightRelationData_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `Buyer`, `Seller`) REFERENCES `data_platform_supply_chain_relationship_general_data` (`SupplyChainRelationshipID`, `Buyer`, `Seller`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipFreightRelationDataFreightPartner_fk` FOREIGN KEY (`FreightPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)    

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
