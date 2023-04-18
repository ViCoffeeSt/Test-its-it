CREATE TABLE SKU (
  ID INTEGER PRIMARY KEY AUTOINCREMENT,
  Code VARCHAR(50) NOT NULL UNIQUE DEFAULT '',
  Name VARCHAR(255) NOT NULL,
  CONSTRAINT CK_SKU_Code CHECK (Code LIKE 's%')
);



CREATE TABLE Family(
	ID ID INT IDENTITY NOT NULL,
	SurName VARCHAR(255) NOT NULL,
	BudgetValue INT NOT NULL
);

CREATE TABLE Basket (
  ID INTEGER PRIMARY KEY AUTOINCREMENT,
  ID_SKU INTEGER NOT NULL,
  ID_Family INTEGER NOT NULL,
  Quantity INTEGER NOT NULL CHECK (Quantity >= 0),
  Value DECIMAL(18,2) NOT NULL CHECK (Value >= 0),
  PurchaseDate DATE NOT NULL DEFAULT(date('now')),
  DiscountValue INT NOT NULL,
  FOREIGN KEY (ID_SKU) REFERENCES SKU(ID),
  FOREIGN KEY (ID_Family) REFERENCES Family(ID)
);

