CREATE TABLE `data_platform_supply_chain_realtionship_header_data`
(
    `BusinessPartner`               varchar(10) NOT NULL,
    `RelationshipCounter`           varchar(4) NOT NULL,
    `RelationshipBusinessPartner`   varchar(10) DEFAULT NULL,
    `RelationshipType`              varchar(2) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `RelationshipCounter`),
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
