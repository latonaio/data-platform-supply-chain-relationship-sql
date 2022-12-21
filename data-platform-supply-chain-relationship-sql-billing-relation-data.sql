CREATE TABLE `data_platform_supply_chain_relationship_billing_relation_data`
(
    `SupplyChainRelationshipID`            int(16) NOT NULL,
    `SupplyChainRelationshipBillingID`     int(4) NOT NULL,
    `Buyer`                                int(12) NOT NULL,
    `Seller`                               int(12) NOT NULL,
    `BillToParty`                          int(12) NOT NULL,
    `BillFromParty`                        int(12) NOT NULL,
    `DefaultRelation`                      tinyint(1) DEFAULT NULL,
    `BillToCountry`                        varchar(3) NOT NULL,
    `BillFromCountry`                      varchar(3) NOT NULL,
    `IsExportImport`                       tinyint(1) DEFAULT NULL,
    `TransactionTaxCategory`               varchar(4) DEFAULT NULL,
    `TransactionTaxClassification`         varchar(1) DEFAULT NULL,
    `CreationDate`                         date DEFAULT NULL,
    `LastChangeDate`                       date DEFAULT NULL,
    `IsMarkedForDeletion`                  tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipBillingID`, `Buyer`, `Seller`, `BillToParty`, `BillFromParty`),
    
    CONSTRAINT `DataPlatformSupplyChainRelationshipBillingRelationData_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `Buyer`, `Seller`) REFERENCES `data_platform_supply_chain_relationship_general_data` (`SupplyChainRelationshipID`, `Buyer`, `Seller`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipBillingRelationDataBillToParty_fk` FOREIGN KEY (`BillToParty`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipBillingRelationDataBillFromParty_fk` FOREIGN KEY (`BillFromParty`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
