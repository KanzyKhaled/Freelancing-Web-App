
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/02/2021 18:21:45
-- Generated from EDMX file: C:\Users\dell\source\repos\FreelancerSystem\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [FreelancerDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AppliedPost_AppliedPost]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AppliedPost] DROP CONSTRAINT [FK_AppliedPost_AppliedPost];
GO
IF OBJECT_ID(N'[dbo].[FK_AppliedPost_PostsTable]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AppliedPost] DROP CONSTRAINT [FK_AppliedPost_PostsTable];
GO
IF OBJECT_ID(N'[dbo].[FK_Freelancer_Posts]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FreelancerTable] DROP CONSTRAINT [FK_Freelancer_Posts];
GO
IF OBJECT_ID(N'[dbo].[FK_Posts_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PostsTable] DROP CONSTRAINT [FK_Posts_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_SavedPost_PostsTable]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SavedPost] DROP CONSTRAINT [FK_SavedPost_PostsTable];
GO
IF OBJECT_ID(N'[dbo].[FK_SavedPost_SavedPost]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SavedPost] DROP CONSTRAINT [FK_SavedPost_SavedPost];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[AdminTable]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AdminTable];
GO
IF OBJECT_ID(N'[dbo].[AppliedPost]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AppliedPost];
GO
IF OBJECT_ID(N'[dbo].[ClientTable]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ClientTable];
GO
IF OBJECT_ID(N'[dbo].[FreelancerTable]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FreelancerTable];
GO
IF OBJECT_ID(N'[dbo].[PostsTable]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PostsTable];
GO
IF OBJECT_ID(N'[dbo].[SavedPost]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SavedPost];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'AdminTables'
CREATE TABLE [dbo].[AdminTables] (
    [username] nvarchar(50)  NOT NULL,
    [role] int  NOT NULL,
    [first_name] nvarchar(50)  NOT NULL,
    [last_name] nvarchar(50)  NOT NULL,
    [email] nvarchar(100)  NOT NULL,
    [phone] nvarchar(50)  NOT NULL,
    [password] nvarchar(50)  NOT NULL,
    [photo_id] nvarchar(200)  NULL
);
GO

-- Creating table 'AppliedPosts'
CREATE TABLE [dbo].[AppliedPosts] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [PostId] int  NOT NULL,
    [FreelancerName] nvarchar(50)  NOT NULL,
    [StatusId] nvarchar(50)  NOT NULL
);
GO

-- Creating table 'ClientTables'
CREATE TABLE [dbo].[ClientTables] (
    [username] nvarchar(50)  NOT NULL,
    [role] int  NOT NULL,
    [first_name] nvarchar(50)  NOT NULL,
    [last_name] nvarchar(50)  NOT NULL,
    [email] nvarchar(100)  NOT NULL,
    [phone] nvarchar(50)  NOT NULL,
    [password] nvarchar(50)  NOT NULL,
    [photo_id] nvarchar(200)  NULL
);
GO

-- Creating table 'FreelancerTables'
CREATE TABLE [dbo].[FreelancerTables] (
    [username] nvarchar(50)  NOT NULL,
    [role] int  NOT NULL,
    [first_name] nvarchar(50)  NOT NULL,
    [last_name] nvarchar(50)  NOT NULL,
    [email] nvarchar(100)  NOT NULL,
    [phone] nvarchar(50)  NOT NULL,
    [post_id] int  NULL,
    [password] nvarchar(50)  NOT NULL,
    [photo_id] nvarchar(200)  NULL
);
GO

-- Creating table 'PostsTables'
CREATE TABLE [dbo].[PostsTables] (
    [id] int  NOT NULL,
    [client_name] nvarchar(50)  NOT NULL,
    [job_type] nvarchar(50)  NOT NULL,
    [job_budget] decimal(19,4)  NOT NULL,
    [creation_date] datetime  NOT NULL,
    [job_desc] nvarchar(max)  NOT NULL,
    [num_proposal_sub] int  NULL,
    [rate] int  NULL,
    [acceptance] int  NOT NULL
);
GO

-- Creating table 'SavedPosts'
CREATE TABLE [dbo].[SavedPosts] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FreelancerName] nvarchar(50)  NOT NULL,
    [PostId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [username] in table 'AdminTables'
ALTER TABLE [dbo].[AdminTables]
ADD CONSTRAINT [PK_AdminTables]
    PRIMARY KEY CLUSTERED ([username] ASC);
GO

-- Creating primary key on [Id] in table 'AppliedPosts'
ALTER TABLE [dbo].[AppliedPosts]
ADD CONSTRAINT [PK_AppliedPosts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [username] in table 'ClientTables'
ALTER TABLE [dbo].[ClientTables]
ADD CONSTRAINT [PK_ClientTables]
    PRIMARY KEY CLUSTERED ([username] ASC);
GO

-- Creating primary key on [username] in table 'FreelancerTables'
ALTER TABLE [dbo].[FreelancerTables]
ADD CONSTRAINT [PK_FreelancerTables]
    PRIMARY KEY CLUSTERED ([username] ASC);
GO

-- Creating primary key on [id] in table 'PostsTables'
ALTER TABLE [dbo].[PostsTables]
ADD CONSTRAINT [PK_PostsTables]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [Id] in table 'SavedPosts'
ALTER TABLE [dbo].[SavedPosts]
ADD CONSTRAINT [PK_SavedPosts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [FreelancerName] in table 'AppliedPosts'
ALTER TABLE [dbo].[AppliedPosts]
ADD CONSTRAINT [FK_AppliedPost_AppliedPost]
    FOREIGN KEY ([FreelancerName])
    REFERENCES [dbo].[FreelancerTables]
        ([username])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AppliedPost_AppliedPost'
CREATE INDEX [IX_FK_AppliedPost_AppliedPost]
ON [dbo].[AppliedPosts]
    ([FreelancerName]);
GO

-- Creating foreign key on [PostId] in table 'AppliedPosts'
ALTER TABLE [dbo].[AppliedPosts]
ADD CONSTRAINT [FK_AppliedPost_PostsTable]
    FOREIGN KEY ([PostId])
    REFERENCES [dbo].[PostsTables]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AppliedPost_PostsTable'
CREATE INDEX [IX_FK_AppliedPost_PostsTable]
ON [dbo].[AppliedPosts]
    ([PostId]);
GO

-- Creating foreign key on [client_name] in table 'PostsTables'
ALTER TABLE [dbo].[PostsTables]
ADD CONSTRAINT [FK_Posts_Users]
    FOREIGN KEY ([client_name])
    REFERENCES [dbo].[ClientTables]
        ([username])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Posts_Users'
CREATE INDEX [IX_FK_Posts_Users]
ON [dbo].[PostsTables]
    ([client_name]);
GO

-- Creating foreign key on [post_id] in table 'FreelancerTables'
ALTER TABLE [dbo].[FreelancerTables]
ADD CONSTRAINT [FK_Freelancer_Posts]
    FOREIGN KEY ([post_id])
    REFERENCES [dbo].[PostsTables]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Freelancer_Posts'
CREATE INDEX [IX_FK_Freelancer_Posts]
ON [dbo].[FreelancerTables]
    ([post_id]);
GO

-- Creating foreign key on [FreelancerName] in table 'SavedPosts'
ALTER TABLE [dbo].[SavedPosts]
ADD CONSTRAINT [FK_SavedPost_SavedPost]
    FOREIGN KEY ([FreelancerName])
    REFERENCES [dbo].[FreelancerTables]
        ([username])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SavedPost_SavedPost'
CREATE INDEX [IX_FK_SavedPost_SavedPost]
ON [dbo].[SavedPosts]
    ([FreelancerName]);
GO

-- Creating foreign key on [PostId] in table 'SavedPosts'
ALTER TABLE [dbo].[SavedPosts]
ADD CONSTRAINT [FK_SavedPost_PostsTable]
    FOREIGN KEY ([PostId])
    REFERENCES [dbo].[PostsTables]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SavedPost_PostsTable'
CREATE INDEX [IX_FK_SavedPost_PostsTable]
ON [dbo].[SavedPosts]
    ([PostId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------