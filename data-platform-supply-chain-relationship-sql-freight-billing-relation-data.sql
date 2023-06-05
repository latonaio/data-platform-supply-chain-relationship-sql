CREATE TABLE `data_platform_supply_chain_relationship_freight_billing_relation_data`
(
    `SupplyChainRelationshipID`                    int(16) NOT NULL,
    `SupplyChainRelationshipFreightID`             int(16) NOT NULL,
    `SupplyChainRelationshipFreightBillingID`      int(4) NOT NULL,
    `Buyer`                                        int(12) NOT NULL,
    `Seller`                                       int(12) NOT NULL,
    `FreightPartner`                               int(12) NOT NULL,
    `FreightBillToParty`                           int(12) NOT NULL,
    `FreightBillFromParty`                         int(12) NOT NULL,
    `DefaultRelation`                              tinyint(1) DEFAULT NULL,
    `FreightBillToCountry`                         varchar(3) NOT NULL,
    `FreightBillFromCountry`                       varchar(3) NOT NULL,
    `IsExportImport`                               tinyint(1) DEFAULT NULL,
    `TransactionTaxCategory`                       varchar(4) DEFAULT NULL,
    `TransactionTaxClassification`                 varchar(1) DEFAULT NULL,
    `CreationDate`                                 date DEFAULT NULL,
    `LastChangeDate`                               date DEFAULT NULL,
    `IsMarkedForDeletion`                          tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipFreightID`, `SupplyChainRelationshipFreightBillingID`, `Buyer`, `Seller`, `FreightPartner`, `FreightBillToParty`, `FreightBillFromParty`),
    
    CONSTRAINT `DataPlatformSupplyChainRelationshipFreightBillingRelationData_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipFreightID`, `Buyer`, `Seller`, `FreightPartner`) REFERENCES `data_platform_supply_chain_relationship_freight_relation_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipFreightID`, `Buyer`, `Seller`, `FreightPartner`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipFreightBillingRelationDataFreightBillToParty_fk` FOREIGN KEY (`FreightBillToParty`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipFreightBillingRelationDataFreightBillFromParty_fk` FOREIGN KEY (`FreightBillFromParty`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
