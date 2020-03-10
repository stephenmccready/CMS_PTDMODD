SET QUOTED_IDENTIFIER OFF
GO

-- 
-- Exec usp_Import_PTDMODD_PY2017_PY2020 'Put your filepath here' , 'Put your filename here'
--

ALTER PROCEDURE dbo.usp_Import_PTDMODD_PY2017_PY2020 @path As VarChar(512), @ImportFileName As VarChar(512)
AS
BEGIN

Truncate Table tbl_PTDMODD_In

Declare @BulkCmd As nvarChar(4000)
Set		@BulkCmd = "BULK INSERT tbl_PTDMODD_In FROM '"+@path+@ImportFileName+"' WITH (ROWTERMINATOR = '0x0a')"
Exec	(@BulkCmd)

Declare @DateImported As DateTime
Set @DateImported=GetDate()

Insert	Into tbl_PTDMODD_PY2017_PY2020_Header
Select	SubString([Column 0],001,001) As	RecordTypeCode		-- 1
,		SubString([Column 0],002,005) As	ContractNumber
,		SubString([Column 0],007,008) As	RunDate
,		SubString([Column 0],015,006) As	PaymentYearAndMonth
,		SubString([Column 0],021,148) As	Filler
,		@ImportFileName As ImportFileName
,		@DateImported As ImportDate
From	tbl_PTDMODD_In
Where	SubString([Column 0],01,01) = '1'

Insert	Into tbl_PTDMODD_PY2017_PY2020_Record
Select	SubString([Column 0],001,001) As	RecordTypeCode		-- 2,4 or 5
,		SubString([Column 0],002,011) As	BeneficiaryIdentifier
,		SubString([Column 0],013,001) As	Filler01
,		SubString([Column 0],014,012) As	BeneficiaryLastName 
,		SubString([Column 0],026,007) As	BeneficiaryFirstName
,		SubString([Column 0],033,001) As	BeneficiaryInitial
,		SubString([Column 0],034,008) As	DateofBirth
,		SubString([Column 0],042,001) As	Sex
,		SubString([Column 0],043,009) As	SocialSecurityNumber
,		SubString([Column 0],052,001) As	AgeGroupFemale0to34
,		SubString([Column 0],053,001) As	AgeGroupFemale35to44
,		SubString([Column 0],054,001) As	AgeGroupFemale45to54
,		SubString([Column 0],055,001) As	AgeGroupFemale55to59
,		SubString([Column 0],056,001) As	AgeGroupFemale60to64
,		SubString([Column 0],057,001) As	AgeGroupFemale65to69
,		SubString([Column 0],058,001) As	AgeGroupFemale70to74
,		SubString([Column 0],059,001) As	AgeGroupFemale75to79
,		SubString([Column 0],060,001) As	AgeGroupFemale80to84
,		SubString([Column 0],061,001) As	AgeGroupFemale85to89
,		SubString([Column 0],062,001) As	AgeGroupFemale90to94
,		SubString([Column 0],063,001) As	AgeGroupFemale95toGT
,		SubString([Column 0],064,001) As	AgeGroupMale0to34
,		SubString([Column 0],065,001) As	AgeGroupMale35to44
,		SubString([Column 0],066,001) As	AgeGroupMale45to54
,		SubString([Column 0],067,001) As	AgeGroupMale55to59
,		SubString([Column 0],068,001) As	AgeGroupMale60to64
,		SubString([Column 0],069,001) As	AgeGroupMale65to69
,		SubString([Column 0],070,001) As	AgeGroupMale70to74
,		SubString([Column 0],071,001) As	AgeGroupMale75to79
,		SubString([Column 0],072,001) As	AgeGroupMale80to84
,		SubString([Column 0],073,001) As	AgeGroupMale85to89
,		SubString([Column 0],074,001) As	AgeGroupMale90to94
,		SubString([Column 0],075,001) As	AgeGroupMale95toGT
,		SubString([Column 0],076,001) As	OriginallyDisabledFemale
,		SubString([Column 0],077,001) As	OriginallyDisabledMale
,		SubString([Column 0],078,001) As	DiseaseCoeffsRXHCC001
,		SubString([Column 0],079,001) As	DiseaseCoeffsRXHCC005
,		SubString([Column 0],080,001) As	DiseaseCoeffsRXHCC015
,		SubString([Column 0],081,001) As	DiseaseCoeffsRXHCC016
,		SubString([Column 0],082,001) As	DiseaseCoeffsRXHCC017
,		SubString([Column 0],083,001) As	DiseaseCoeffsRXHCC018
,		SubString([Column 0],084,001) As	DiseaseCoeffsRXHCC019
,		SubString([Column 0],085,001) As	DiseaseCoeffsRXHCC030
,		SubString([Column 0],086,001) As	DiseaseCoeffsRXHCC031
,		SubString([Column 0],087,001) As	DiseaseCoeffsRXHCC040
,		SubString([Column 0],088,001) As	DiseaseCoeffsRXHCC041
,		SubString([Column 0],089,001) As	DiseaseCoeffsRXHCC042
,		SubString([Column 0],090,001) As	DiseaseCoeffsRXHCC043
,		SubString([Column 0],091,001) As	DiseaseCoeffsRXHCC045
,		SubString([Column 0],092,001) As	DiseaseCoeffsRXHCC054
,		SubString([Column 0],093,001) As	DiseaseCoeffsRXHCC055
,		SubString([Column 0],094,001) As	DiseaseCoeffsRXHCC065
,		SubString([Column 0],095,001) As	DiseaseCoeffsRXHCC066
,		SubString([Column 0],096,001) As	DiseaseCoeffsRXHCC067
,		SubString([Column 0],097,001) As	DiseaseCoeffsRXHCC068
,		SubString([Column 0],098,001) As	DiseaseCoeffsRXHCC080
,		SubString([Column 0],099,001) As	DiseaseCoeffsRXHCC082
,		SubString([Column 0],100,001) As	DiseaseCoeffsRXHCC083
,		SubString([Column 0],101,001) As	DiseaseCoeffsRXHCC084
,		SubString([Column 0],102,001) As	DiseaseCoeffsRXHCC087
,		SubString([Column 0],103,001) As	DiseaseCoeffsRXHCC095
,		SubString([Column 0],104,001) As	DiseaseCoeffsRXHCC096
,		SubString([Column 0],105,001) As	DiseaseCoeffsRXHCC097
,		SubString([Column 0],106,001) As	DiseaseCoeffsRXHCC098
,		SubString([Column 0],107,001) As	DiseaseCoeffsRXHCC111
,		SubString([Column 0],108,001) As	DiseaseCoeffsRXHCC112
,		SubString([Column 0],109,001) As	DiseaseCoeffsRXHCC130
,		SubString([Column 0],110,001) As	DiseaseCoeffsRXHCC131
,		SubString([Column 0],111,001) As	DiseaseCoeffsRXHCC132
,		SubString([Column 0],112,001) As	DiseaseCoeffsRXHCC133
,		SubString([Column 0],113,001) As	DiseaseCoeffsRXHCC134
,		SubString([Column 0],114,001) As	DiseaseCoeffsRXHCC135
,		SubString([Column 0],115,001) As	DiseaseCoeffsRXHCC145
,		SubString([Column 0],116,001) As	DiseaseCoeffsRXHCC146
,		SubString([Column 0],117,001) As	DiseaseCoeffsRXHCC147
,		SubString([Column 0],118,001) As	DiseaseCoeffsRXHCC148
,		SubString([Column 0],119,001) As	DiseaseCoeffsRXHCC156
,		SubString([Column 0],120,001) As	DiseaseCoeffsRXHCC157
,		SubString([Column 0],121,001) As	DiseaseCoeffsRXHCC159
,		SubString([Column 0],122,001) As	DiseaseCoeffsRXHCC160
,		SubString([Column 0],123,001) As	DiseaseCoeffsRXHCC161
,		SubString([Column 0],124,001) As	DiseaseCoeffsRXHCC163
,		SubString([Column 0],125,001) As	DiseaseCoeffsRXHCC164
,		SubString([Column 0],126,001) As	DiseaseCoeffsRXHCC165
,		SubString([Column 0],127,001) As	DiseaseCoeffsRXHCC166
,		SubString([Column 0],128,001) As	DiseaseCoeffsRXHCC168
,		SubString([Column 0],129,001) As	DiseaseCoeffsRXHCC185
,		SubString([Column 0],130,001) As	DiseaseCoeffsRXHCC186
,		SubString([Column 0],131,001) As	DiseaseCoeffsRXHCC187
,		SubString([Column 0],132,001) As	DiseaseCoeffsRXHCC188
,		SubString([Column 0],133,001) As	DiseaseCoeffsRXHCC193
,		SubString([Column 0],134,001) As	DiseaseCoeffsRXHCC206
,		SubString([Column 0],135,001) As	DiseaseCoeffsRXHCC207
,		SubString([Column 0],136,001) As	DiseaseCoeffsRXHCC215
,		SubString([Column 0],137,001) As	DiseaseCoeffsRXHCC216
,		SubString([Column 0],138,001) As	DiseaseCoeffsRXHCC225
,		SubString([Column 0],139,001) As	DiseaseCoeffsRXHCC226
,		SubString([Column 0],140,001) As	DiseaseCoeffsRXHCC227
,		SubString([Column 0],141,001) As	DiseaseCoeffsRXHCC241
,		SubString([Column 0],142,001) As	DiseaseCoeffsRXHCC243
,		SubString([Column 0],143,001) As	DiseaseCoeffsRXHCC260
,		SubString([Column 0],144,001) As	DiseaseCoeffsRXHCC261
,		SubString([Column 0],145,001) As	DiseaseCoeffsRXHCC262
,		SubString([Column 0],146,001) As	DiseaseCoeffsRXHCC263
,		SubString([Column 0],147,001) As	DiseaseCoeffsRXHCC311
,		SubString([Column 0],148,001) As	DiseaseCoeffsRXHCC314
,		SubString([Column 0],149,001) As	DiseaseCoeffsRXHCC316
,		SubString([Column 0],150,001) As	DiseaseCoeffsRXHCC355
,		SubString([Column 0],151,001) As	DiseaseCoeffsRXHCC395
,		SubString([Column 0],152,001) As	DiseaseCoeffsRXHCC396
,		SubString([Column 0],153,001) As	DiseaseCoeffsRXHCC397
,		SubString([Column 0],154,001) As	OriginallyDisabled
,		SubString([Column 0],155,001) As	NonAgedRXHCC001
,		SubString([Column 0],156,001) As	NonAgedRXHCC130
,		SubString([Column 0],157,001) As	NonAgedRXHCC131
,		SubString([Column 0],158,001) As	NonAgedRXHCC132
,		SubString([Column 0],159,001) As	NonAgedRXHCC133
,		SubString([Column 0],160,001) As	NonAgedRXHCC134
,		SubString([Column 0],161,001) As	NonAgedRXHCC135
,		SubString([Column 0],162,001) As	NonAgedRXHCC160
,		SubString([Column 0],163,001) As	NonAgedRXHCC163
,		SubString([Column 0],164,001) As	NonAgedRXHCC145
,		SubString([Column 0],165,001) As	NonAgedRXHCC164
,		SubString([Column 0],166,001) As	NonAgedRXHCC166
,		SubString([Column 0],167,014) As	Filler
,		@ImportFileName As ImportFileName
,		@DateImported As ImportDate
From	tbl_PTDMODD_In
Where	SubString([Column 0],01,01) In('2','4','5')

-- Get Trailer Record
Insert	Into tbl_PTDMODD_PY2017_PY2020_Trailer
Select	SubString([Column 0],1,1) As RecordTypeCode
,		SubString([Column 0],2,5) As ContractNumber
,		SubString([Column 0],7,9) As TotalRecordCount
,		SubString([Column 0],16,185) As Filler
,		@ImportFileName As ImportFileName
,		@DateImported As ImportDate
From	tbl_HCCMODD_In
Where	SubString([Column 0],1,1) = '3'	-- Trailer

End
