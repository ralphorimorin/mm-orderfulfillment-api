DROP TABLE IF EXISTS CUSTOMER;
DROP TABLE IF EXISTS `ORDER`;
DROP TABLE IF EXISTS ORDERITEM;


create table CUSTOMER (
   customerId VARCHAR(50) NOT NULL,
   companyName VARCHAR(50) NOT NULL,
   contactName VARCHAR(50) NOT NULL,
   street VARCHAR(100) NOT NULL,
   city VARCHAR(50) NOT NULL,
   state VARCHAR(50) NOT NULL,
   country VARCHAR(50) NOT NULL,
   zipCode INT NOT NULL,
   phone BIGINT NOT NULL,
   PRIMARY KEY ( customerId )
);

create table `ORDER` (
    orderId VARCHAR(50) NOT NULL,
    customerId VARCHAR(50) NOT NULL,
    status ENUM('ORDER_INITIATED','ORDER_SUBMITTED','PARTIALLY_FULFILLED','FULFILLED','SHIPPED_TO_ADDRESS','CANCELLED'),
    dateFulfilled DATE,
    orderDate DATE,
    shippedDate DATE,
    taxFederal FLOAT(10,4),
    taxState FLOAT(10,4),
    taxLocal FLOAT(10,4),
    subTotalBeforeTax FLOAT(10,4),
    shipToName FLOAT(10,4),
    shipToStreet VARCHAR(100),
    shipToCity VARCHAR(50),
    shipToState VARCHAR(50),
    shipToCountry VARCHAR(50),
    shipToZipCode INT,
    shipToPhone BIGINT,
    billToName FLOAT(10,4),
    billToStreet VARCHAR(100),
    billToCity VARCHAR(50),
    billToState VARCHAR(50),
    billToCountry VARCHAR(50),
    billToZipCode INT,
    billToPhone BIGINT,
    PRIMARY KEY ( orderId )
);

create table ORDERITEM (
    orderId VARCHAR(50) NOT NULL,
    customerId VARCHAR(50) NOT NULL,
    vendorId VARCHAR(50) NOT NULL,
    status VARCHAR(50),
    itemSeq INT,
    itemNo BIGINT,
    productId VARCHAR(50),
    unitPrice FLOAT(10,4),
    quantity INT,
    discount FLOAT(10,4),
    totalPriceExtended FLOAT(10,4),
    PRIMARY KEY ( itemNo )
);
