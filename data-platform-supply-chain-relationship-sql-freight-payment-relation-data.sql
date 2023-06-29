CREATE TABLE `data_platform_scr_freight_payment_relation_data`
(
    `SupplyChainRelationshipID`                    int(16) NOT NULL,
    `SupplyChainRelationshipFreightID`             int(16) NOT NULL,
    `SupplyChainRelationshipFreightBillingID`      int(4) NOT NULL,
    `SupplyChainRelationshipFreightPaymentID`      int(2) NOT NULL,
    `Buyer`                                        int(12) NOT NULL,
    `Seller`                                       int(12) NOT NULL,
    `FreightPartner`                               int(12) NOT NULL,
    `FreightBillToParty`                           int(12) NOT NULL,
    `FreightBillFromParty`                         int(12) NOT NULL,
    `FreightPayer`                                 int(12) NOT NULL,
    `FreightPayee`                                 int(12) NOT NULL,
    `DefaultRelation`                              tinyint(1) DEFAULT NULL,
    `PayerHouseBank`                               varchar(5) DEFAULT NULL,
    `PayerHouseBankAccount`                        varchar(5) DEFAULT NULL,
    `PayeeHouseBank`                               varchar(5) DEFAULT NULL,
    `PayeeHouseBankAccount`                        varchar(5) DEFAULT NULL,
    `CreationDate`                                 date NOT NULL,
    `LastChangeDate`                               date NOT NULL,
    `IsMarkedForDeletion`                          tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipFreightID`, `SupplyChainRelationshipFreightBillingID`, `SupplyChainRelationshipFreightPaymentID`, `Buyer`, `Seller`, `FreightPartner`, `FreightBillToParty`, `FreightBillFromParty`, `FreightPayer`, `FreightPayee`),
    
    CONSTRAINT `DPFMSCRFreightPaymentRelationData_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipFreightID`, `SupplyChainRelationshipFreightBillingID`, `Buyer`, `Seller`, `FreightPartner`, `FreightBillToParty`, `FreightBillFromParty`) REFERENCES `data_platform_scr_freight_billing_relation_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipFreightID`, `SupplyChainRelationshipFreightBillingID`, `Buyer`, `Seller`, `FreightPartner`, `FreightBillToParty`, `FreightBillFromParty`),
    CONSTRAINT `DPFMSCRFreightPaymentRelationDataFreightPayer_fk` FOREIGN KEY (`FreightPayer`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMSCRFreightPaymentRelationDataFreightPayee_fk` FOREIGN KEY (`FreightPayee`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMSCRFreightPaymentRelationDataPayerHouseBankAccount_fk` FOREIGN KEY (`PayerHouseBank`, `PayerHouseBankAccount`) REFERENCES `data_platform_house_bank_house_bank_data` (`HouseBank`, `HouseBankAccount`),
    CONSTRAINT `DPFMSCRFreightPaymentRelationDataPayeeHouseBankAccount_fk` FOREIGN KEY (`PayeeHouseBank`, `PayeeHouseBankAccount`) REFERENCES `data_platform_house_bank_house_bank_data` (`HouseBank`, `HouseBankAccount`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
