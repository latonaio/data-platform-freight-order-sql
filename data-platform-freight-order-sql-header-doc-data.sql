CREATE TABLE `data_platform_freight_order_header_doc_data`
(
  `FreightOrder`                   int(16) NOT NULL,
  `DocType`                        varchar(100) NOT NULL,
  `DocVersionID`                   int(4) NOT NULL,
  `DocID`                          varchar(100) NOT NULL,
  `FileExtension`                  varchar(20) NOT NULL,
  `FileName`                       varchar(200) DEFAULT NULL,
  `FilePath`                       varchar(1000) DEFAULT NULL,
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,
  
    PRIMARY KEY (`FreightOrder`, `DocType`, `DocVersionID`, `DocID`),
    
    CONSTRAINT `DataPlatformFreightOrderHeaderDocData_fk` FOREIGN KEY (`FreightOrder`) REFERENCES `data_platform_freight_order_header_data` (`FreightOrder`),
    CONSTRAINT `DataPlatformFreightOrderHeaderDocDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`),
    CONSTRAINT `DataPlatformFreightOrderHeaderDocDataDocIssuerBusinessPartner_fk` FOREIGN KEY (`DocIssuerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
