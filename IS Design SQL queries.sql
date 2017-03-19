CREATE TABLE User(
userID INT NOT NULL,
userName VARCHAR(30) NOT NULL,
password VARCHAR(30) NOT NULL,
firstName VARCHAR(30) NOT NULL,
lastName VARCHAR(30) NOT NULL,
emailID VARCHAR(30) NOT NULL,
imageURL VARCHAR(300) NOT NULL,
adminFlag BOOLEAN NOT NULL,
approvalFlag BOOLEAN NOT NULL,
creationDate DATE NOT NULL
);


CREATE TABLE cookInfo(
userID INT NOT NULL,
phoneNo CHAR(10),
address VARCHAR(150),
description VARCHAR(100)
);


CREATE TABLE foodItem(
foodID INT NOT NULL,
userID INT NOT NULL,
foodName VARCHAR(50) NOT NULL,
image VARCHAR(300) NOT NULL,
price DECIMAL(5,2) NOT NULL,
approvalFlag BOOLEAN NOT NULL,
creationDate DATE NOT NULL
);


CREATE TABLE Recipes(
recipeID INT NOT NULL,
userID INT NOT NULL,
recipeName VARCHAR(50) NOT NULL,
recipeIngredients VARCHAR(1000) NOT NULL,
recipeDirections VARCHAR(1000) NOT NULL,
image VARCHAR(300) NOT NULL,
approvalFlag BOOLEAN NOT NULL,
creationDate DATE NOT NULL
);



CREATE TABLE Reviews(
reviewID INT NOT NULL,
userID INT NOT NULL,
recipeID INT NOT NULL,
rating INT NOT NULL,
reviewComments VARCHAR(1000) NOT NULL,
creationDate DATE NOT NULL
);


CREATE TABLE Tags(
tagID INT,
tagName VARCHAR(50)
);


CREATE TABLE foodTags(
foodID INT,
tagID int
);


CREATE TABLE recipeTags(
recipeID INT,
tagID int
);