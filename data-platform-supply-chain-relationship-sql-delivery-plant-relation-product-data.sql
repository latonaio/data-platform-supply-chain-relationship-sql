CREATE TABLE `data_platform_scr_delivery_plant_relation_product_data`
(
    `SupplyChainRelationshipID`                 int(16) NOT NULL,
    `SupplyChainRelationshipDeliveryID`         int(6) NOT NULL,
    `SupplyChainRelationshipDeliveryPlantID`    int(4) NOT NULL,
    `Buyer`                                     int(12) NOT NULL,
    `Seller`                                    int(12) NOT NULL,
    `DeliverToParty`                            int(12) NOT NULL,
    `DeliverFromParty`                          int(12) NOT NULL,
    `DeliverToPlant`                            varchar(4) NOT NULL,
    `DeliverFromPlant`                          varchar(4) NOT NULL,
    `Product`                                   varchar(40) NOT NULL,
    `DeliverToPlantStorageLocation`             varchar(4) NOT NULL,
    `DeliverFromPlantStorageLocation`           varchar(4) NOT NULL,
    `DeliveryUnit`                              varchar(3) NOT NULL,
    `QuantityPerPackage`                        float(15) DEFAULT NULL,
    `MRPType`                                   varchar(2) NOT NULL,
    `MRPController`                             varchar(3) DEFAULT NULL,
    `ReorderThresholdQuantityInBaseUnit`        float(15) DEFAULT NULL,
    `PlanningTimeFenceInDays`                   int(3) DEFAULT NULL,
    `MRPPlanningCalendar`                       varchar(3) DEFAULT NULL,
    `SafetyStockQuantityInBaseUnit`             float(15) DEFAULT NULL,
    `SafetyDuration`                            float(11) DEFAULT NULL,
    `SafetyDurationUnit`                        varchar(3) DEFAULT NULL,
    `MaximumStockQuantityInBaseUnit`            float(15) DEFAULT NULL,
    `MinimumDeliveryQuantityInBaseUnit`         float(15) NOT NULL,
    `MinimumDeliveryLotSizeQuantityInBaseUnit`  float(15) NOT NULL,
    `StandardDeliveryQuantityInBaseUnit`        float(15) NOT NULL,
    `StandardDeliveryLotSizeQuantityInBaseUnit` float(15) NOT NULL,
    `MaximumDeliveryQuantityInBaseUnit`         float(15) NOT NULL,
    `MaximumDeliveryLotSizeQuantityInBaseUnit`  float(15) NOT NULL,
    `DeliveryLotSizeRoundingQuantityInBaseUnit` float(15) DEFAULT NULL,
    `DeliveryLotSizeIsFixed`                    tinyint(1) DEFAULT NULL,
    `StandardDeliveryDuration`                  float(11) NOT NULL,
    `StandardDeliveryDurationUnit`              varchar(3) NOT NULL,
    `CreationDate`                              date NOT NULL,
    `LastChangeDate`                            date NOT NULL,
    `IsMarkedForDeletion`                       tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`, `Product`),
    
    CONSTRAINT `DPFMSCRDeliveryPlantRelationProductData_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`) REFERENCES `data_platform_scr_delivery_plant_relation_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`),
    CONSTRAINT `DPFMSCRDeliveryPlantRelationProductDataDeliverToPlantProduct_fk` FOREIGN KEY (`Product`, `DeliverToParty`, `DeliverToPlant`) REFERENCES `data_platform_product_master_bp_plant_data` (`Product`, `BusinessPartner`, `Plant`),
    -- CONSTRAINT `DPFMSCRDeliveryPlantRelationProductDataDeliverFromPlantProduct_fk` FOREIGN KEY (`Product`, `DeliverFromParty`, `DeliverFromPlant`) REFERENCES `data_platform_product_master_bp_plant_data` (`Product`, `BusinessPartner`, `Plant`),  too long
    -- CONSTRAINT `DPFMSCRDeliveryPlantRelationProductDataDeliverToPlantStorageLocation_fk` FOREIGN KEY (`Product`, `DeliverToParty`, `DeliverToPlant`, `DeliverToPlantStorageLocation`) REFERENCES `data_platform_product_master_storage_location_data` (`Product`, `BusinessPartner`, `Plant`, `StorageLocation`),  too long
    -- CONSTRAINT `DPFMSCRDeliveryPlantRelationProductDataDeliverFromPlantStorageLocation_fk` FOREIGN KEY (`Product`, `DeliverFromParty`, `DeliverFromPlant`, `DeliverFromPlantStorageLocation`) REFERENCES `data_platform_product_master_storage_location_data` (`Product`, `BusinessPartner`, `Plant`, `StorageLocation`),  too long
    CONSTRAINT `DPFMSCRDeliveryPlantRelationProductDataDeliveryUnit_fk` FOREIGN KEY (`DeliveryUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DPFMSCRDeliveryPlantRelationProductDataSafetyDurationUnit_fk` FOREIGN KEY (`SafetyDurationUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    -- CONSTRAINT `DPFMSCRDeliveryPlantRelationProductDataStandardDeliveryDurationUnit_fk` FOREIGN KEY (`StandardDeliveryDurationUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`)  too long

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
