/*
CREATE TABLE tbl_branch (
    branchCode INT NOT NULL,
    br_name VARCHAR(100) NOT NULL,
    br_city VARCHAR(100) NOT NULL,
    br_assests DECIMAL(15, 2) NOT NULL,
    PRIMARY KEY (branchCode)
);

CREATE TABLE tbl_account (
    accountNo INT NOT NULL,
    ac_balance DECIMAL(15, 2) NOT NULL,
    branchCode INT NOT NULL,
    PRIMARY KEY (accountNo)
);

CREATE TABLE tbl_customer (
    customerID INT NOT NULL,
    cs_city VARCHAR(100) NOT NULL,
    cs_street VARCHAR(100) NOT NULL,
    cs_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (customerID)
);

CREATE TABLE tbl_loan (
    loanNO INT NOT NULL,
    branchCode INT NOT NULL,
    ln_amount DECIMAL(15, 2) NOT NULL,
    PRIMARY KEY (loanNO)
);

CREATE TABLE tbl_depositor (
    accountNO INT NOT NULL,
    customerID INT NOT NULL,
    PRIMARY KEY (accountNO, customerID)
);

CREATE TABLE tbl_borrower (
    customerID INT NOT NULL,
    loanNO INT NOT NULL,
    PRIMARY KEY (customerID, loanNO)
);

ALTER TABLE tbl_account
ADD COLUMN ac_type ENUM('SAVINGS', 'CURRENT', 'FIXED') AFTER ac_balance,
ADD CONSTRAINT
    `fk_tbl_account_tbl_branch` FOREIGN KEY (branchCode)
    REFERENCES tbl_branch(branchCode)
    ON DELETE NO ACTION
    ON UPDATE CASCADE;

ALTER TABLE tbl_loan
ADD CONSTRAINT
    `fk_tbl_loan_tbl_branch` FOREIGN KEY (branchCode)
    REFERENCES tbl_branch(branchCode)
    ON DELETE NO ACTION
    ON UPDATE CASCADE;

ALTER TABLE tbl_depositor
ADD CONSTRAINT
    `fk_tbl_depositor_tbl_account` FOREIGN KEY (accountNO)
    REFERENCES tbl_account(accountNo)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
ADD CONSTRAINT
    `fk_tbl_depositor_tbl_customer` FOREIGN KEY (customerID)
    REFERENCES tbl_customer(customerID)
    ON DELETE NO ACTION
    ON UPDATE CASCADE;

ALTER TABLE tbl_borrower
ADD CONSTRAINT
    `fk_tbl_borrower_tbl_customer` FOREIGN KEY (customerID)
    REFERENCES tbl_customer(customerID)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
ADD CONSTRAINT
    `fk_tbl_borrower_tbl_loan` FOREIGN KEY (loanNO)
    REFERENCES tbl_loan(loanNO)
    ON DELETE NO ACTION
    ON UPDATE CASCADE;


*/
Select database(),now(),user();
ALTER TABLE tbl_account
ADD COLUMN ac_type ENUM('SAVINGS', 'CURRENT', 'FIXED') AFTER ac_balance;
