# peoplepertask-Db
This repository contains the database schema and setup instructions for PeoplePerTask , a freelance website aimed at connecting clients with skilled freelancers for various tasks and projects.

#Database Structure
Table: users: ID user, Name,password,email,birthday

Table Categories: ID Categorie,Name Categorie

Table Sub-Categories: ID Sub-Categorie, Name Sub-Categorie, ID Categorie

Table Projects: ID Project,Title Project,Description,ID Categorie,ID Sub-Categorie,ID user

Table Freelancer: ID Freelancer,name Freelancer,skills,ID user

Table Offres : ID Offre,price,deadline,ID Freelance,ID Project

Table feedback : ID feedback,Comment, ID user

#Relationships
Users have a role that determines whether they are a client or a freelancer.
Tasks are posted by clients and can receive multiple bids from freelancers.
Each bid is associated with a task and a freelancer.
Reviews or feedbacks are linked to specific tasks and freelancers, provided by user.
#Setup Instructions

#Database Setup

Ensure you have mysql installed.
Create a new database named peoplepertask.
Run the SQL script database_setup.sql to create tables and relationships.
Configuration

