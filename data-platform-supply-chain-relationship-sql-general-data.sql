CREATE TABLE `data_platform_scr_general_data`
(
    `SupplyChainRelationshipID`     int(16) NOT NULL,
    `Buyer`                         int(12) NOT NULL,
    `Seller`                        int(12) NOT NULL,
    `CreationDate`                  date NOT NULL,
    `LastChangeDate`                date NOT NULL,
    `IsMarkedForDeletion`           tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`SupplyChainRelationshipID`, `Buyer`, `Seller`),
    
    CONSTRAINT `DPFMSCRGeneralDataBuyer_fk` FOREIGN KEY (`Buyer`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMSCRGeneralDataSeller_fk` FOREIGN KEY (`Seller`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
