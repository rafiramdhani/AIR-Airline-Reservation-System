/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Rofiq
 * Created: Jul 10, 2021
 */

CREATE DATABASE airline;
USE airline;

CREATE TABLE customer (
    id VARCHAR(255),
    firstname VARCHAR(255),
    lastname VARCHAR(255),
    nic VARCHAR(255),
    passport VARCHAR(255),
    address TEXT,
    dob VARCHAR(255),
    gender VARCHAR(255),
    contact VARCHAR(255),
    photo LONGBLOB
);

CREATE TABLE flight (
    id VARCHAR(255),
    flightname VARCHAR(255),
    source VARCHAR(255),
    depart VARCHAR(255),
    date VARCHAR(255),
    deptime VARCHAR(255),
    arrtime VARCHAR(255),
    flightcharge VARCHAR(255)
);

CREATE TABLE ticket (
    id VARCHAR(255),
    flightid VARCHAR(255),
    custid VARCHAR(255),
    class VARCHAR(255),
    price INT,
    date VARCHAR(255)
);

CREATE TABLE user (
    id VARCHAR(255),
    firstname VARCHAR(255),
    lastname VARCHAR(255),
    username VARCHAR(255),
    password VARCHAR(255)
);

insert into user(id,firstname,lastname,username,password)values("U0001","admin","admin","admin","admin");