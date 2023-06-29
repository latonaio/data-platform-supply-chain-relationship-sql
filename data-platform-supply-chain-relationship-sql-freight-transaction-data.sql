CREATE TABLE `data_platform_scr_freight_transaction_data`
(
    `SupplyChainRelationshipID`             int(16) NOT NULL,
    `SupplyChainRelationshipFreightID`      int(16) NOT NULL,
    `Buyer`                                 int(12) NOT NULL,
    `Seller`                                int(12) NOT NULL,
    `FreightPartner`                        int(12) NOT NULL,
    `TransactionCurrency`                   varchar(5) DEFAULT NULL,
    `PaymentTerms`                          varchar(4) DEFAULT NULL,
    `PaymentMethod`                         varchar(1) DEFAULT NULL,
    `Incoterms`                             varchar(3) DEFAULT NULL,
    `AccountAssignmentGroup`                varchar(2) DEFAULT NULL,
    `CreationDate`                          date NOT NULL,
    `LastChangeDate`                        date NOT NULL,
    `QuotationIsBlocked`                    tinyint(1) DEFAULT NULL,
    `OrderIsBlocked`                        tinyint(1) DEFAULT NULL,
    `DeliveryIsBlocked`                     tinyint(1) DEFAULT NULL,
    `BillingIsBlocked`                      tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`                   tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipFreightID`, `Buyer`, `Seller`, `FreightPartner`),
    
    CONSTRAINT `DPFMSCRFreightTransactionData_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipFreightID`, `Buyer`, `Seller`, `FreightPartner`) REFERENCES `data_platform_scr_freight_relation_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipFreightID`, `Buyer`, `Seller`, `FreightPartner`),
    CONSTRAINT `DPFMSCRFreightTransactionDataTransactionCurrency_fk` FOREIGN KEY (`TransactionCurrency`) REFERENCES `data_platform_currency_currency_data` (`Currency`),
    CONSTRAINT `DPFMSCRFreightTransactionDataPaymentTerms_fk` FOREIGN KEY (`PaymentTerms`) REFERENCES `data_platform_payment_terms_payment_terms_data` (`PaymentTerms`),
    CONSTRAINT `DPFMSCRFreightTransactionDataPaymentMethod_fk` FOREIGN KEY (`PaymentMethod`) REFERENCES `data_platform_payment_method_payment_method_data` (`PaymentMethod`),
    CONSTRAINT `DPFMSCRFreightTransactionDataIncoterms_fk` FOREIGN KEY (`Incoterms`) REFERENCES `data_platform_incoterms_incoterms_data` (`Incoterms`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
