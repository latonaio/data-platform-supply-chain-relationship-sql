CREATE TABLE `data_platform_supply_chain_relationship_delivery_plant_relation_product_mrp_area_data`
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
    `MRPType`                                   varchar(2) DEFAULT NULL,
    `MRPArea`                                   varchar(10) NOT NULL,
    `MRPController`                             varchar(3) DEFAULT NULL,
    `ReorderThresholdQuantity`                  float(15) DEFAULT NULL,
    `PlanningTimeFence`                         int(3) DEFAULT NULL,
    `MRPPlanningCalendar`                       varchar(3) DEFAULT NULL,
    `SafetyStockQuantityInBaseUnit`             float(15) DEFAULT NULL,
    `SafetyDuration`                            float(11) DEFAULT NULL,
    `SafetyDurationUnit`                        varchar(3) DEFAULT NULL,
    `MaximumStockQuantityInBaseUnit`            float(15) DEFAULT NULL,
    `MinimumDeliveryQuantityInBaseUnit`         float(15) DEFAULT NULL,
    `MinimumDeliveryLotSizeQuantityInBaseUnit`  float(15) DEFAULT NULL,
    `StandardDeliveryLotSizeQuantityInBaseUnit` float(15) DEFAULT NULL,
    `DeliveryLotSizeRoundingQuantityInBaseUnit` float(15) DEFAULT NULL,
    `MaximumDeliveryLotSizeQuantityInBaseUnit`  float(15) DEFAULT NULL,
    `MaximumDeliveryQuantityInBaseUnit`         float(15) DEFAULT NULL,
    `DeliveryLotSizeIsFixed`                    tinyint(1) DEFAULT NULL,
    `StandardDeliveryDuration`                  float(11) DEFAULT NULL,
    `StandardDeliveryDurationUnit`              varchar(3) DEFAULT NULL,
    `IsAutoOrderCreationAllowed`                tinyint(1) DEFAULT NULL,
    `IsOrderAcknowledgementRequired`            tinyint(1) DEFAULT NULL,
    `CreationDate`                              date DEFAULT NULL,
    `LastChangeDate`                            date DEFAULT NULL,
    `IsMarkedForDeletion`                       tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`, `Product`, `MRPArea`),
    
    CONSTRAINT `DataPlatformSupplyChainRelationshipDeliveryPlantRelationProductMRPAreaData_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`, `Product`) REFERENCES `data_platform_supply_chain_relationship_plant_relation_product_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`, `Product`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipDeliveryPlantRelationProductMRPAreaDataDeliverToPlantProduct_fk` FOREIGN KEY (`Product`, `DeliverToParty`, `DeliverToPlant`) REFERENCES `data_platform_product_master_bp_plant_data` (`Product`, `BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipDeliveryPlantRelationProductMRPAreaDataDeliverFromPlantProduct_fk` FOREIGN KEY (`Product`, `DeliverFromParty`, `DeliverFromPlant`) REFERENCES `data_platform_product_master_bp_plant_data` (`Product`, `BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipDeliveryPlantRelationProductMRPAreaDataDeliverToPlantStorageLocation_fk` FOREIGN KEY (`Product`, `DeliverToParty`, `DeliverToPlant`, `DeliverToStorageLocation`) REFERENCES `data_platform_product_master_storage_location_data` (`Product`, `BusinessPartner`, `Plant`, `StorageLocation`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipDeliveryPlantRelationProductMRPAreaDataDeliverFromPlantStorageLocation_fk` FOREIGN KEY (`Product`, `DeliverFromParty`, `DeliverFromPlant`, `DeliverFromStorageLocation`) REFERENCES `data_platform_product_master_storage_location_data` (`Product`, `BusinessPartner`, `Plant`, `StorageLocation`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipDeliveryPlantRelationProductMRPAreaDataDeliveryUnit_fk` FOREIGN KEY (`DeliveryUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipDeliveryPlantRelationProductMRPAreaDataSafetyDurationUnit_fk` FOREIGN KEY (`SafetyDurationUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DataPlatformSupplyChainRelationshipDeliveryPlantRelationProductMRPAreaDataStandardDeliveryDurationUnit_fk` FOREIGN KEY (`StandardDeliveryDurationUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
