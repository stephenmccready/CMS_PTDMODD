Create	Table	PTDMODD (
	ID						int IDENTITY(1,1) PRIMARY KEY
,	RecordTypeCode			VarChar(001)	
-- 1. Header
-- 2. V05 PTD MOR(RAPS and FFS)
-- 3. Trailer
-- 4. V05 PTD MOR(Encounter and FFS)
-- 5. V05 PTD MOR(PACE) (RAPS, FFS, and Encounter)
,	HICN					        VarChar(012)	--Health Insurance Claim Number		
,	BeneficiaryLastName 	VarChar(012)		
,	BeneficiaryFirstName	VarChar(007)	
,	BeneficiaryInitial		VarChar(001)		
,	DateofBirth				    VarChar(008)	-- CCYYMMDD		
,	Sex						        VarChar(001)
,	SocialSecurityNumber	VarChar(009)
,	AgeGroupFemale0to34		VarChar(001)
,	AgeGroupFemale35to44	VarChar(001)
,	AgeGroupFemale45to54	VarChar(001)
,	AgeGroupFemale55to59	VarChar(001)
,	AgeGroupFemale60to64	VarChar(001)
,	AgeGroupFemale65to69	VarChar(001)
,	AgeGroupFemale70to74	VarChar(001)
,	AgeGroupFemale75to79	VarChar(001)
,	AgeGroupFemale80to84	VarChar(001)
,	AgeGroupFemale85to89	VarChar(001)
,	AgeGroupFemale90to94	VarChar(001)
,	AgeGroupFemale95toGT	VarChar(001)
,	AgeGroupMale0to34		  VarChar(001)
,	AgeGroupMale35to44		VarChar(001)
,	AgeGroupMale45to54		VarChar(001)
,	AgeGroupMale55to59		VarChar(001)
,	AgeGroupMale60to64		VarChar(001)
,	AgeGroupMale65to69		VarChar(001)
,	AgeGroupMale70to74		VarChar(001)
,	AgeGroupMale75to79		VarChar(001)
,	AgeGroupMale80to84		VarChar(001)
,	AgeGroupMale85to89		VarChar(001)
,	AgeGroupMale90to94		VarChar(001)
,	AgeGroupMale95toGT		VarChar(001)
,	OriginallyDisabledFemale VarChar(001)	-- Beneficiary is a female and original Medicare entitlement was due to disability
,	OriginallyDisabledMale	VarChar(001)	-- Beneficiary is a male and original Medicare entitlement was due to disability
,	DiseaseCoeffsRXHCC1		VarChar(001)	-- HIV/AIDS
,	DiseaseCoeffsRXHCC5		VarChar(001)	-- Opportunistic Infections
,	DiseaseCoeffsRXHCC15	VarChar(001)	-- Chronic Myeloid Leukemia
,	DiseaseCoeffsRXHCC16	VarChar(001)	-- Multiple Myeloma and Other Neoplastic Disorders
,	DiseaseCoeffsRXHCC17	VarChar(001)	-- Secondary Cancers of Bone, Lung, Brain, and Other Specified Sites; Liver Cancer
,	DiseaseCoeffsRXHCC18	VarChar(001)	-- Lung, Kidney, and Other Cancers
,	DiseaseCoeffsRXHCC19	VarChar(001)	-- Breast and Other Cancers and Tumors
,	DiseaseCoeffsRXHCC30	VarChar(001)	-- Diabetes with Complications
,	DiseaseCoeffsRXHCC31	VarChar(001)	-- Diabetes without Complications
,	DiseaseCoeffsRXHCC40	VarChar(001)	-- Specified Hereditary Metabolic/Immune Disorders
,	DiseaseCoeffsRXHCC41	VarChar(001)	-- Pituitary, Adrenal Gland, and Other Endocrine and Metabolic Disorders
,	DiseaseCoeffsRXHCC42	VarChar(001)	-- Thyroid Disorders
,	DiseaseCoeffsRXHCC43	VarChar(001)	-- Morbid Obesity
,	DiseaseCoeffsRXHCC45	VarChar(001)	-- Disorders of Lipoid Metabolism
,	DiseaseCoeffsRXHCC54	VarChar(001)	-- Chronic Viral Hepatitis C
,	DiseaseCoeffsRXHCC55	VarChar(001)	-- Chronic Viral Hepatitis, Except Hepatitis C
,	DiseaseCoeffsRXHCC65	VarChar(001)	-- Chronic Pancreatitis
,	DiseaseCoeffsRXHCC66	VarChar(001)	-- Pancreatic Disorders and Intestinal Malabsorption, Except Pancreatitis
,	DiseaseCoeffsRXHCC67	VarChar(001)	-- Inflammatory Bowel Disease
,	DiseaseCoeffsRXHCC68	VarChar(001)	-- Esophageal Reflux and Other Disorders of Esophagus
,	DiseaseCoeffsRXHCC80	VarChar(001)	-- Aseptic Necrosis of Bone
,	DiseaseCoeffsRXHCC82	VarChar(001)	-- Psoriatic Arthropathy and Systemic Sclerosis
,	DiseaseCoeffsRXHCC83	VarChar(001)	-- Rheumatoid Arthritis and Other Inflammatory Polyarthropathy
,	DiseaseCoeffsRXHCC84	VarChar(001)	-- Systemic Lupus Erythematosus, Other Connective Tissue Disorders, and Inflammatory Spondylopathies
,	DiseaseCoeffsRXHCC87	VarChar(001)	-- Osteoporosis, Vertebral and Pathological Fractures
,	DiseaseCoeffsRXHCC95	VarChar(001)	-- Sickle Cell Anemia
,	DiseaseCoeffsRXHCC96	VarChar(001)	-- Myelodysplastic Syndromes and Myelofibrosis
,	DiseaseCoeffsRXHCC97	VarChar(001)	-- Immune Disorders
,	DiseaseCoeffsRXHCC98	VarChar(001)	-- Aplastic Anemia and Other Significant Blood Disorders
,	DiseaseCoeffsRXHCC111	VarChar(001)	-- Alzheimer's Disease
,	DiseaseCoeffsRXHCC112	VarChar(001)	-- Dementia, Except Alzheimer's Disease
,	DiseaseCoeffsRXHCC130	VarChar(001)	-- Schizophrenia
,	DiseaseCoeffsRXHCC131	VarChar(001)	-- Bipolar Disorders
,	DiseaseCoeffsRXHCC132	VarChar(001)	-- Major Depression
,	DiseaseCoeffsRXHCC133	VarChar(001)	-- Specified Anxiety, Personality and Behavior Disorders
,	DiseaseCoeffsRXHCC134	VarChar(001)	-- Depression
,	DiseaseCoeffsRXHCC135	VarChar(001)	-- Anxiety Disorders
,	DiseaseCoeffsRXHCC145	VarChar(001)	-- Autism
,	DiseaseCoeffsRXHCC146	VarChar(001)	-- Profound or Severe Intellectual Disability/Developmental Disorder
,	DiseaseCoeffsRXHCC147	VarChar(001)	-- Moderate Intellectual Disability/Developmental Disorder
,	DiseaseCoeffsRXHCC148	VarChar(001)	-- Mild or Unspecified Intellectual Disability/Developmental Disorder
,	DiseaseCoeffsRXHCC156	VarChar(001)	-- Myasthenia Gravis, Amyotrophic Lateral Sclerosis and Other Motor Neuron Disease
,	DiseaseCoeffsRXHCC157	VarChar(001)	-- Spinal Cord Disorders
,	DiseaseCoeffsRXHCC159	VarChar(001)	-- Inflammatory and Toxic Neuropathy
,	DiseaseCoeffsRXHCC160	VarChar(001)	-- Multiple Sclerosis
,	DiseaseCoeffsRXHCC161	VarChar(001)	-- Parkinson's and Huntington's Diseases
,	DiseaseCoeffsRXHCC163	VarChar(001)	-- Intractable Epilepsy
,	DiseaseCoeffsRXHCC164	VarChar(001)	-- Epilepsy and Other Seizure Disorders, Except Intractable Epilepsy
,	DiseaseCoeffsRXHCC165	VarChar(001)	-- Convulsions
,	DiseaseCoeffsRXHCC166	VarChar(001)	-- Migraine Headaches
,	DiseaseCoeffsRXHCC168	VarChar(001)	-- Trigeminal and Postherpetic Neuralgia
,	DiseaseCoeffsRXHCC185	VarChar(001)	-- Primary Pulmonary Hypertension
,	DiseaseCoeffsRXHCC186	VarChar(001)	-- Congestive Heart Failure
,	DiseaseCoeffsRXHCC187	VarChar(001)	-- Hypertension
,	DiseaseCoeffsRXHCC188	VarChar(001)	-- Coronary Artery Disease
,	DiseaseCoeffsRXHCC193	VarChar(001)	-- Atrial Arrhythmias
,	DiseaseCoeffsRXHCC206	VarChar(001)	-- Cerebrovascular Disease, Except Hemorrhage or Aneurysm
,	DiseaseCoeffsRXHCC207	VarChar(001)	-- Spastic Hemiplegia
,	DiseaseCoeffsRXHCC215	VarChar(001)	-- Venous Thromboembolism
,	DiseaseCoeffsRXHCC216	VarChar(001)	-- Peripheral Vascular Disease
,	DiseaseCoeffsRXHCC225	VarChar(001)	-- Cystic Fibrosis
,	DiseaseCoeffsRXHCC226	VarChar(001)	-- Chronic Obstructive Pulmonary Disease and Asthma
,	DiseaseCoeffsRXHCC227	VarChar(001)	-- Pulmonary Fibrosis and Other Chronic Lung Disorders
,	DiseaseCoeffsRXHCC241	VarChar(001)	-- Diabetic Retinopathy
,	DiseaseCoeffsRXHCC243	VarChar(001)	-- Open-Angle Glaucoma
,	DiseaseCoeffsRXHCC260	VarChar(001)	-- Kidney Transplant Status
,	DiseaseCoeffsRXHCC261	VarChar(001)	-- Dialysis Status
,	DiseaseCoeffsRXHCC262	VarChar(001)	-- Chronic Kidney Disease Stage 5
,	DiseaseCoeffsRXHCC263	VarChar(001)	-- Chronic Kidney Disease Stage 4
,	DiseaseCoeffsRXHCC311	VarChar(001)	-- Chronic Ulcer of Skin, Except Pressure
,	DiseaseCoeffsRXHCC314	VarChar(001)	-- Pemphigus
,	DiseaseCoeffsRXHCC316	VarChar(001)	-- Psoriasis, Except with Arthropathy
,	DiseaseCoeffsRXHCC355	VarChar(001)	-- Narcolepsy and Cataplexy
,	DiseaseCoeffsRXHCC395	VarChar(001)	-- Lung Transplant Status
,	DiseaseCoeffsRXHCC396	VarChar(001)	-- Major Organ Transplant Status, Except Lung, Kidney, and Pancreas
,	DiseaseCoeffsRXHCC397	VarChar(001)	-- Pancreas Transplant Status
,	OriginallyDisabled		VarChar(001)	-- The original reason for Medicare entitlement was due to disability.
,	NonAgedRXHCC1			  VarChar(001)	-- Non-aged and HIV/AIDS
,	NonAgedRXHCC130			VarChar(001)	-- Non-aged and Schizophrenia
,	NonAgedRXHCC131			VarChar(001)	-- Non-aged and Bipolar Disorders
,	NonAgedRXHCC132			VarChar(001)	-- Non-aged and Major Depression
,	NonAgedRXHCC133			VarChar(001)	-- Non-aged and Specified Anxiety, Personality and Behavior Disorders
,	NonAgedRXHCC134			VarChar(001)	-- Non-aged and Depression
,	NonAgedRXHCC135			VarChar(001)	-- Non-aged and Anxiety Disorders
,	NonAgedRXHCC160			VarChar(001)	-- Non-aged and Multiple Sclerosis
,	NonAgedRXHCC163			VarChar(001)	-- Non-aged and Intractable Epilepsy
,	NonAgedRXHCC145			VarChar(001)	-- Non-aged and Autism
,	NonAgedRXHCC164			VarChar(001)	-- Non-aged and Epilepsy and Other Seizure Disorders Except Intractable Epilepsy
,	NonAgedRXHCC165			VarChar(001)	-- Non-aged and Convulsions
,	Filler					    VarChar(014)
,	DateImported			  DateTime
,	PTDMODDFileName			VarChar(256)
)

Create Index ix_HICN On PTDMODD(HICN)
Create Index ix_PTDMODDFileName On PTDMODD(PTDMODDFileName)
