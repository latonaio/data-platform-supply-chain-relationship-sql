CREATE TABLE `data_platform_supply_chain_relationship_payment_relation_data`
(
    `SupplyChainRelationshipID`            int(16) NOT NULL,
    `SupplyChainRelationshipBillingID`     int(4) NOT NULL,
    `SupplyChainRelationshipPaymentID`     int(2) NOT NULL,
    `Buyer`                                int(12) NOT NULL,
    `Seller`                               int(12) NOT NULL,
    `BillToParty`                          int(12) NOT NULL,
    `BillFromParty`                        int(12) NOT NULL,
    `Payer`                                int(12) NOT NULL,
    `Payee`                                int(12) NOT NULL,
    `DefaultRelation`                      tinyint(1) DEFAULT NULL,
    `PayerHouseBank`                       varchar(5) DEFAULT NULL,
    `PayerHouseBankAccount`                varchar(5) DEFAULT NULL,
    `PayeeHouseBank`                       varchar(5) DEFAULT NULL,
    `PayeeHouseBankAccount`                varchar(5) DEFAULT NULL,
    `CreationDate`                         date DEFAULT NULL,
    `LastChangeDate`                       date DEFAULT NULL,
    `IsMarkedForDeletion`                  tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipBillingID`, `SupplyChainRelationshipPaymentID`, `Buyer`, `Seller`, `BillToParty`, `BillFromParty`, `Payer`, `Payee`),
    
    CONSTRAINT `DataPlatformSupplyChainRelationshipPaymentRelationData_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipBillingID`, `Buyer`, `Seller`, `BillToParty`, `BillFromParty`) REFERENCES `data_platform_supply_chain_relationship_billing_relation_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipBillingID`, `Buyer`, `Seller`, `BillToParty`, `BillFromParty`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipPaymentRelationDataPayer_fk` FOREIGN KEY (`Payer`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipPaymentRelationDataPayee_fk` FOREIGN KEY (`Payee`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipPaymentRelationDataPayerHouseBankAccount_fk` FOREIGN KEY (`PayerHouseBank`, `PayerHouseBankAccount`) REFERENCES `data_platform_house_bank_house_bank_data` (`HouseBank`, `HouseBankAccount`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipPaymentRelationDataPayeeHouseBankAccount_fk` FOREIGN KEY (`PayeeHouseBank`, `PayeeHouseBankAccount`) REFERENCES `data_platform_house_bank_house_bank_data` (`HouseBank`, `HouseBankAccount`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
