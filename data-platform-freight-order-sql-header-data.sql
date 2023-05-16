CREATE TABLE `data_platform_freight_order_header_data`
(
	`FreightOrder`                              int(16) NOT NULL,
	`FreightOrderType`                          varchar(4) DEFAULT NULL,
    `ExternalFreightNumber`                     varchar(100) DEFAULT NULL,
    `PlannedFreight`                            int(16) NOT NULL,
    `FreightAgreement`                          int(16) NOT NULL,
    `FreightAgreementItem`                      int(6) NOT NULL,
    `FreightAgreementItemAvailableFreight`      int(4) NOT NULL,
    `FreightType`                               varchar(6) NOT NULL,
    `FreightSpec`                               varchar(6) NOT NULL,
    `FreightCalendar`                           varchar(6) NOT NULL,
    `PlannedFreightDepartureDate`               date NOT NULL,
    `PlannedFreightDepartureTime`               date NOT NULL,
    `ActualFreightDepartureDate`                date DEFAULT NULL,
    `ActualFreightDepartureTime`                date DEFAULT NULL,
    `LogisticsPartner`                          int(12) NOT NULL,
    `DeliverToParty`                            int(12) NOT NULL,
    `DeliverToPlant`                            varchar(4) NOT NULL,
    `DeliverFromParty`                          int(12) NOT NULL,
    `DeliverFromPlant`                          varchar(4) NOT NULL,
    `MRPArea`                                   varchar(10) DEFAULT NULL,
	`MRPController`                             varchar(3) DEFAULT NULL,
    `FreightCapacityWeight`                     float(15) DEFAULT NULL,
    `FreightCapacityWeightUnit`                 varchar(3) DEFAULT NULL,
    `CreationDateTime`                          date NOT NULL,
    `LastChangeDateTime`                        date NOT NULL,
	`IsMarkedForDeletion`                       tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`FreightOrder`),
	
    CONSTRAINT `DPFMFreightOrderHeaderDataFreightAgreementItem_fk` FOREIGN KEY (`FreightAgreement`, `FreightAgreementItem`) REFERENCES `data_platform_freight_agreement_item_data` (`FreightAgreement`, `FreightAgreementItem`),
    CONSTRAINT `DPFMFreightOrderHeaderDataPlannedFreight_fk` FOREIGN KEY (`PlannedFreight`) REFERENCES `data_platform_planned_freight_header_data` (`PlannedFreight`),
    CONSTRAINT `DPFMFreightOrderHeaderDataFreightFreightCapacityWeightUnit_fk` FOREIGN KEY (`FreightCapacityWeightUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`)


) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
