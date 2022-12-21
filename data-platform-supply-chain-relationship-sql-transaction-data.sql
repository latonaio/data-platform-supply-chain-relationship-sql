CREATE TABLE `data_platform_supply_chain_relationship_transaction_data`
(
    `SupplyChainRelationshipID`     int(16) NOT NULL,
    `Buyer`                         int(12) NOT NULL,
    `Seller`                        int(12) NOT NULL,
    `TransactionCurrency`           varchar(5) DEFAULT NULL,
    `PaymentTerms`                  varchar(4) DEFAULT NULL,
    `PaymentMethod`                 varchar(1) DEFAULT NULL,
    `Incoterms`                     varchar(3) DEFAULT NULL,
    `AccountAssignmentGroup`        varchar(2) DEFAULT NULL,
    `CreationDate`                  date DEFAULT NULL,
    `LastChangeDate`                date DEFAULT NULL,
    `QuotationIsBlocked`            tinyint(1) DEFAULT NULL,
    `OrderIsBlocked`                tinyint(1) DEFAULT NULL,
    `DeliveryIsBlocked`             tinyint(1) DEFAULT NULL,
    `BillingIsBlocked`              tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`           tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`SupplyChainRelationshipID`, `Buyer`, `Seller`),
    
    CONSTRAINT `DataPlatformSupplyChainRelationshipTransactionData_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `Buyer`, `Seller`) REFERENCES `data_platform_supply_chain_relationship_general_data` (`SupplyChainRelationshipID`, `Buyer`, `Seller`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipTransactionDataTransactionCurrency_fk` FOREIGN KEY (`TransactionCurrency`) REFERENCES `data_platform_currency_currency_data` (`Currency`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipTransactionDataPaymentTerms_fk` FOREIGN KEY (`PaymentTerms`) REFERENCES `data_platform_payment_terms_payment_terms_data` (`PaymentTerms`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipTransactionDataPaymentMethod_fk` FOREIGN KEY (`PaymentMethod`) REFERENCES `data_platform_payment_method_payment_method_data` (`PaymentMethod`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipTransactionDataIncoterms_fk` FOREIGN KEY (`Incoterms`) REFERENCES `data_platform_incoterms_incoterms_data` (`Incoterms`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
