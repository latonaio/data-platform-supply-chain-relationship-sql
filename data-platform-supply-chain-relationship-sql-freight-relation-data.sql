CREATE TABLE `data_platform_scr_freight_relation_data`
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
    
    CONSTRAINT `DPFMSCRFreightRelationData_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `Buyer`, `Seller`) REFERENCES `data_platform_scr_general_data` (`SupplyChainRelationshipID`, `Buyer`, `Seller`),
    CONSTRAINT `DPFMSCRFreightRelationDataFreightPartner_fk` FOREIGN KEY (`FreightPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)    

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
