SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tbl_PTDMODD_PY2016_Header](
	[RecordTypeCode] [varchar](1) NULL,
	[ContractNumber] [varchar](5) NULL,
	[RunDate] [varchar](8) NULL,
	[PaymentYearAndMonth] [varchar](6) NULL,
	[Filler] [varchar](148) NULL,
	[ImportFileName] [varchar](64) NULL,
	[ImportDate] [datetime] NULL
) ON [PRIMARY]

GO

Create Index ix_ImportFileName On tbl_PTDMODD_PY2016_Header(ImportFileName)

SET ANSI_PADDING OFF
GO
