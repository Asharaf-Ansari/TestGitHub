public class CloseQuoteUtility {
	@AuraEnabled // get all value of current id of Insurance Quote
    public static CanaryAMS__Insurance_Product__c fetchDetailOfRecordId_Apex(String InsId) {
        try {
            List<CanaryAMS__Insurance_Product__c> Insurancelist = new List<CanaryAMS__Insurance_Product__c>(); 
            Insurancelist = [
                    Select  SystemModstamp,  RecordType.Name,  OwnerId,  Name,  LastViewedDate,  LastReferencedDate,  
                LastModifiedDate,  LastModifiedById,  LastActivityDate,  IsDeleted,  Id,  
                CreatedDate,  CreatedById,  CanaryAMS__Zip_Code__c,  CanaryAMS__Years_of_Loss_History__c, 
                CanaryAMS__Years_of_Continuous_Coverage__c,  CanaryAMS__Years_in_Business__c,  CanaryAMS__Years_at_Previous_Residence__c,  
                CanaryAMS__Years_At_Current_Residence__c,  CanaryAMS__Year_Established__c,  CanaryAMS__Wage_Loss__c,  
                CanaryAMS__Uninterrupted_Claims_Made_Coverage_Date__c,  CanaryAMS__Uninsured_Motorist__c,  
                CanaryAMS__Underlying_Coverage_Info__c,  CanaryAMS__Umbrella_or_Excess__c,  
                CanaryAMS__Type_of_Subcontracted_Work__c,  CanaryAMS__Transaction_Type__c,  
                CanaryAMS__Total_Term_Amount__c,  CanaryAMS__Total_Taxes_Fees__c,  
                CanaryAMS__Total_Payroll__c,  CanaryAMS__Total_Deposit_Premium__c,  
                CanaryAMS__Total_Cost_Premium_Basis__c,  CanaryAMS__Total_Commissionable_Premium__c,  
                CanaryAMS__Total_Billable_Premium__c,  CanaryAMS__Total_Agency_Fees__c,  CanaryAMS__To_Be_Reviewed__c,  
                CanaryAMS__Title_Fee__c,  CanaryAMS__Time_With_Prior_Carrier__c,  CanaryAMS__Third_Party__c,  
                CanaryAMS__Terrorism_Premium__c,  CanaryAMS__Tax_Gift_Fee__c,  CanaryAMS__Street_Address__c,  
                CanaryAMS__Street_2__c,  CanaryAMS__State__c,  CanaryAMS__Stage__c,  CanaryAMS__Stacked_Coverage__c,  
                CanaryAMS__Source_Cost__c,  CanaryAMS__Sales_Premium_Basis__c,  CanaryAMS__SIC_NAICS_Code__c,  
                CanaryAMS__SIC_Code__c,  CanaryAMS__Revoke_Fee__c,  CanaryAMS__Retroactive_Date__c,  CanaryAMS__Retro_Plan__c,  
                CanaryAMS__Residence_Type__c,  CanaryAMS__Residence_Status__c,  CanaryAMS__Requested_Personal_Liability__c,  
                CanaryAMS__Requested_Insurance__c,  CanaryAMS__Requested_Deductible__c,  CanaryAMS__Renewal_Fee__c,  
                CanaryAMS__Remarks_Section__c,  CanaryAMS__Quoted_Term__c,  CanaryAMS__Quoted_Policy_Premium__c,  
                CanaryAMS__Quoted_Monthly_Payment__c,  CanaryAMS__Quoted_Down_Payment__c,  CanaryAMS__Quoted_Carrier__c,  
                CanaryAMS__Quoted_Carrier_Product__c,  CanaryAMS__Quoted_Broker_Fee__c,  CanaryAMS__Quote_Sub_Subsource__c,  
                CanaryAMS__Quote_Sub_Source__c,  CanaryAMS__Quote_Source__c,  CanaryAMS__Quote_Source_Type__c,  
                CanaryAMS__QuoteAssigned__c,  CanaryAMS__Property_Damagecurrency__c,  CanaryAMS__Property_Damage__c,  
                CanaryAMS__Producer__c,  CanaryAMS__Producer_2__c,  CanaryAMS__Prior_Policy_Premium__c,  
                CanaryAMS__Prior_Policy_Number__c,  CanaryAMS__Prior_Liabiliity_Limits__c,  CanaryAMS__Previous_Zip_Code__c,  
                CanaryAMS__Previous_State__c,  CanaryAMS__Previous_City__c,  CanaryAMS__Previous_Address__c,  
                CanaryAMS__Previous_Address_2__c,  CanaryAMS__Policy__r.Name,  CanaryAMS__Policy_Number__c,  
                CanaryAMS__Policy_Expiration_Date__c,  CanaryAMS__Policy_Effective_Date__c,  
                CanaryAMS__Policy_Change_Effective_Date_Time__c,  CanaryAMS__Plate_Fee__c,  CanaryAMS__Phone__c,  
                CanaryAMS__Personal_Quote__c,  CanaryAMS__Personal_Property__c,  CanaryAMS__Percent_of_Work_Subcontracted__c,  
                CanaryAMS__Percent_Down__c,  CanaryAMS__Payroll_Premium_Basis__c,  CanaryAMS__Payor__c,  
                CanaryAMS__Payment_Plan__c,  CanaryAMS__Payment_Method__c,  CanaryAMS__Pay_Plan__c,  
                CanaryAMS__Participating_Non_Participating__c,  CanaryAMS__Part_Time_Employees__c,  
                CanaryAMS__Paid_to_Subcontractors__c,  CanaryAMS__PIP_Deductible__c,  CanaryAMS__Other_States_Part_3__c,  
                CanaryAMS__Other_Rating_or_Reg_ID__c,  CanaryAMS__Other_Coverages_Restrictions_Endorseme__c,  
                CanaryAMS__Opportunity__c,  CanaryAMS__Number_of_Officers__c,  CanaryAMS__Number_of_Installments__c,  
                CanaryAMS__Number_of_Employees__c,  CanaryAMS__Number_of_Claims_in_the_Last_3_Years__c,  CanaryAMS__Notes__c, 
                CanaryAMS__Normal_Anniversary_Rating_Date__c,  CanaryAMS__No_Lapses__c,  CanaryAMS__Net_Change_Premium__c,  
                CanaryAMS__Nature_Of_Business_Description_Of_Oppe__c,  CanaryAMS__Months_at_Residence__c,  
                CanaryAMS__Months_With_Current_Carrier__c,  CanaryAMS__Months_At_Previous_Residence__c,  CanaryAMS__Mobile__c,  
                CanaryAMS__Minimum_Premium__c,  CanaryAMS__Medical_Payments__c,  CanaryAMS__Mail_Policy_to_Applicant__c,  
                CanaryAMS__Mail_Policy_to_Agent__c,  CanaryAMS__Mail_Policy_To__c,  CanaryAMS__Lost_to_Carrier__c,  
                CanaryAMS__Lost_and_Uninsured__c,  CanaryAMS__Lost_X_Date__c,  CanaryAMS__Lost_To_Agency__c,  
                CanaryAMS__Losses_Within_Mandated_Years__c,  CanaryAMS__Liability_Limits__c,  CanaryAMS__Lead_Universal_ID__c,  
                CanaryAMS__Lead_Submission_URL__c,  CanaryAMS__Lead_Session_ID__c,  CanaryAMS__Lead_Request_Date__c,  
                CanaryAMS__Lead_Identifier__c,  CanaryAMS__Lead_Consumer_Source_IP__c,  CanaryAMS__Lead_Consent_Language__c,  
                CanaryAMS__Lead_Browser__c,  CanaryAMS__LastAccordDataUpdatetime__c,  CanaryAMS__Inspection_Contact__c,  
                CanaryAMS__Included_States__c,  CanaryAMS__How_Long_Known__c,  CanaryAMS__Homeowner__c,  
                CanaryAMS__GL_Code__c,  CanaryAMS__Full_Time_Employees__c,  CanaryAMS__Form_Type__c,  
                CanaryAMS__First_Dollar_Defense__c,  CanaryAMS__Financed__c,  CanaryAMS__Financed_Amount__c,  
                CanaryAMS__Finance_Contract_Number__c,  CanaryAMS__Finance_Company__c,  CanaryAMS__Fax__c,  
                CanaryAMS__FEIN__c,  CanaryAMS__Estimated_Premium_Amount__c,  CanaryAMS__Entity_Type__c,  
                CanaryAMS__Employer_ID_Number__c,  CanaryAMS__Email__c,  CanaryAMS__Effectuated_Date__c,  
                CanaryAMS__Dwelling_Amount__c,  CanaryAMS__Doing_Business_As_DBA__c,  
                CanaryAMS__Does_Employer_offer_Health_Insurance__c,  CanaryAMS__Does_Employer_Spouse_offer_Health_Ins__c,  
                CanaryAMS__Dividend_Plan_Safety_Group__c,  CanaryAMS__Direct_Agency_Bill__c,  
                CanaryAMS__Description_of_Business__c,  CanaryAMS__Deductible_or_Retention__c,  
                CanaryAMS__Deductible_Per_Claim_Occurrence__c,  CanaryAMS__Days_to_Lost__c,  
                CanaryAMS__Days_to_Convert__c,  CanaryAMS__Days_Open_Age__c,  CanaryAMS__Date_of_Loss__c,  
                CanaryAMS__Currently_Insured__c,  CanaryAMS__Current_Retroactive_Date__c,  
                CanaryAMS__Current_Producer__c,  CanaryAMS__Current_Prior_Policy__c,  CanaryAMS__Current_Premium__c,  
                CanaryAMS__Current_Policy_Term__c,  CanaryAMS__Current_Form_Type__c,  CanaryAMS__Current_Expiration__c,  
                CanaryAMS__Current_Effective_Date__c,  CanaryAMS__Current_Coverage__c,  CanaryAMS__Current_Carrier__c,  
                CanaryAMS__Credit_Check_Authorized__c,  CanaryAMS__County__c,  CanaryAMS__Cost_Per_Lead__c,  
                CanaryAMS__Convenience_Fee__c,  CanaryAMS__Continuously_Insured_Since__c,  CanaryAMS__Contact_for_Quote__c, 
                CanaryAMS__Consent_Language__c,  CanaryAMS__Combined_Single_Limit__c,  CanaryAMS__Co_Applicant__c,  
                CanaryAMS__Closed_Won_Date__c,  CanaryAMS__Closed_Lost_Reason__c,  CanaryAMS__Closed_Lost_Date__c,  
                CanaryAMS__Closed_Date__c,  CanaryAMS__Claims__c,  CanaryAMS__Claims_Notes__c,  
                CanaryAMS__Claims_Made_or_Occurrence_Applies__c,  CanaryAMS__Claims_Made_Occurrence__c,  
                CanaryAMS__Claims_Contact__c,  CanaryAMS__City__c,  CanaryAMS__Carrier_Contact__c,  
                CanaryAMS__Business_Type__c,  CanaryAMS__Business_Structure__c,  CanaryAMS__Business_Notes__c,  
                CanaryAMS__Business_Name__c,  CanaryAMS__Bodily_Injury__c,  CanaryAMS__Bodily_Injury_Limit__c,  
                CanaryAMS__Bodily_Injury_Liability_Per_Person__c,  CanaryAMS__Billing_Method__c,  
                CanaryAMS__Billing_Account_Number__c,  CanaryAMS__Benefit_Type__c,  CanaryAMS__Audit_Term__c,  
                CanaryAMS__Assign_Quote__c,  CanaryAMS__Area_SF__c,  CanaryAMS__Applicant_Named_Insured__c,  
                CanaryAMS__Applicant_Contact__c,  CanaryAMS__Anticipated_Adjusted_Gross_Income__c,  
                CanaryAMS__Annualized_Premium__c,  CanaryAMS__Annual_Revenue__c,  CanaryAMS__Amendment_Fee__c,  
                CanaryAMS__Admissions_Premium_Basis__c,  CanaryAMS__Additional_Coverages_Endorsements__c,  
                CanaryAMS__Additional_Company_Information__c,  CanaryAMS__Accounting_Contact__c,  
                CanaryAMS__Account__r.Name,  CanaryAMS__AccordData_TimeStamp__c,  CanaryAMS__AAA_Member__c 
                From CanaryAMS__Insurance_Product__c where Id = :InsId
            ];

            return Insurancelist[0];
        } catch (Exception ex) {
        	System.debug('>>>-- Exception at line ---> ' + ex.getLineNumber());
            System.debug('>>>-- Exception ---> ' + ex.getMessage());
            return null;
        }
    }
     @AuraEnabled // get picklist value of Stage in current id of Insurance Quote and return list of string.
    public static List<String> getInsuQuoteValues_Apex(String InsId) {
        try {
        	List<CanaryAMS__Insurance_Product__c> CanaryAMSInsuranceProductlist = new List<CanaryAMS__Insurance_Product__c>();
        	CanaryAMSInsuranceProductlist = [select Id,CanaryAMS__Stage__c from CanaryAMS__Insurance_Product__c where Id =: InsId];
            List<String> options = new List<String>();
            Schema.DescribeFieldResult fieldResult =
                    CanaryAMS__Insurance_Product__c.CanaryAMS__Stage__c	.getDescribe();
            List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
            //options.add('--None--');
            for (Schema.PicklistEntry f : ple) {
                if(f.getValue() == 'Closed Won' || f.getValue() == 'Closed Lost' || f.getValue() == CanaryAMSInsuranceProductlist[0].CanaryAMS__Stage__c ) {
                	options.add(f.getValue());
                }
            }
            return options;
        } catch (Exception ex) {
        	System.debug('>>>-- Exception at line ---> ' + ex.getLineNumber());
            System.debug('>>>-- Exception ---> ' + ex.getMessage());
            return null;
        }
    }
    @AuraEnabled // get Current RecordType Name of current id of Insurance Quote.
    public static String fetchRecordTypeName_Apex(String InsuraceId) {
        try {
            List<CanaryAMS__Insurance_Product__c> InsuranceQuoteyList = new List<CanaryAMS__Insurance_Product__c>();
            InsuranceQuoteyList = [SELECT Id, RecordTypeId FROM CanaryAMS__Insurance_Product__c WHERE Id = :InsuraceId LIMIT 1];

            if (InsuranceQuoteyList.size() > 0) {
                String recordTypeName = [select id,Name from RecordType where SobjectType = 'CanaryAMS__Insurance_Product__c' AND Id = :InsuranceQuoteyList[0].RecordTypeId].Name;
                return recordTypeName;
            }
            return null;
        } catch (Exception ex) {
        	System.debug('>>>-- Exception at line ---> ' + ex.getLineNumber());
            System.debug('>>>-- Exception ---> ' + ex.getMessage());
            return null;
        }
    }
    @AuraEnabled // This method get all Active RecordType name of Insurance Quote object.
    public static List<String> fetchRecordTypeEditInsuranceQuoteObject_Apex() {
        try {
        	List<String> options = new List<String>();            
            List<RecordType> recordTypeName = [select id,Name from RecordType where SobjectType = 'CanaryAMS__Insurance_Product__c' AND isActive =: true];
            //options.add('--None--');
            for (RecordType str : recordTypeName) {
                options.add(str.Name);               
            } 
            return options;            
        } catch (Exception ex) { 
        	System.debug('>>>-- Exception at line ---> ' + ex.getLineNumber());
            System.debug('>>>-- Exception ---> ' + ex.getMessage());
            return null;
        }
    }
    @AuraEnabled //This method get all Active RecordType name and ID of Insurance Quote object.
    public static List<String> fetchRecordTypeOfObject_Apex() {
        try {
        	List<String> options = new List<String>();
            //List<RecordType> recordTypes = new List<RecordType>();
            List<RecordType> recordTypeName = [select id,Name from RecordType where SobjectType = 'CanaryAMS__Insurance_Product__c' AND isActive =: true];
            //options.add('--None--');
            for (RecordType str : recordTypeName) {
                options.add(str.Name);
                options.add(str.Id);
            } 
            return options;            
        } catch (Exception ex) { 
        	System.debug('>>>-- Exception at line ---> ' + ex.getLineNumber());
            System.debug('>>>-- Exception ---> ' + ex.getMessage());
            return null;
        }
    }
     @AuraEnabled //This method get all picklist value of CanaryAMS__Quoted_Term__c field of Insurance Quote object.
    public static List<String> getInsuQuoteTermValue_Apex() {
        try {
            List<String> options = new List<String>();
            Schema.DescribeFieldResult fieldResult =
                    CanaryAMS__Insurance_Product__c.CanaryAMS__Quoted_Term__c.getDescribe();
            List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
            options.add('--None--');
            for (Schema.PicklistEntry f : ple) {
                options.add(f.getValue());
            }
            return options;
        } catch (Exception ex) {
        	System.debug('>>>-- Exception at line ---> ' + ex.getLineNumber());
            System.debug('>>>-- Exception ---> ' + ex.getMessage());
            return null;
        }
    }
     @AuraEnabled //This method get all data of carrier submission of current ID of Insurance Quote object.
    public static List<CanaryAMSWrapper> getCarrierSubmissionValue_Apex(String InsuranceId) {
        try {
            List<CanaryAMS__Carrier_Quotes__c> Carrier_QuotesList = new List<CanaryAMS__Carrier_Quotes__c>();
            Carrier_QuotesList =[select Id,Name,CanaryAMS__Carrier_Product__c,CanaryAMS__Agency_Bill__c,CanaryAMS__Closed_Lost_Reason__c,
            						CanaryAMS__Stage__c,CanaryAMS__Carrier__c
						            from CanaryAMS__Carrier_Quotes__c 
						            where CanaryAMS__Insurance_Quote__c =: InsuranceId order by CreatedDate desc];
			List<CanaryAMSWrapper> CanaryWrapperList = new List<CanaryAMSWrapper>();
			
			for(CanaryAMS__Carrier_Quotes__c CarrierQuo: Carrier_QuotesList){
				
				CanaryAMSWrapper CaWrap = new CanaryAMSWrapper();
				
				CaWrap.CarrierQuotesObj = CarrierQuo;
				if(CarrierQuo.CanaryAMS__Stage__c == 'Closed Won'){
					CaWrap.IsCloseWon = true;	
				}else{
					CaWrap.IsCloseWon = false;
				}
				CanaryWrapperList.add(CaWrap);	
			}			            
						            
			return CanaryWrapperList;           
        } catch (Exception ex) {
        	System.debug('>>>-- Exception at line ---> ' + ex.getLineNumber());
            System.debug('>>>-- Exception ---> ' + ex.getMessage());
            return null;
        }
    }
    
    class CanaryAMSWrapper {
        @AuraEnabled
        Boolean IsCloseWon { get; set; }
        @AuraEnabled
        CanaryAMS__Carrier_Quotes__c CarrierQuotesObj { get; set; }
    }
    
    @AuraEnabled //This method update to carrier submission .
    public static List<CanaryAMSWrapper> saveCarrierSubmission_Apex(String CarrierSubmissList , String InsuranceRecordId){
    	try{
            system.debug('>>>>CarrierSubmissList>>>>>'+CarrierSubmissList);
    		 List<CanaryAMSWrapper> CarrierSubwraper = (List<CanaryAMSWrapper>) JSON.deserialize(CarrierSubmissList, List<CanaryAMSWrapper>.class);
    		List<CanaryAMS__Carrier_Quotes__c> NewCarrierSubmissList = new List<CanaryAMS__Carrier_Quotes__c>();
    		for(CanaryAMSWrapper caWrap : CarrierSubwraper){
    			caWrap.CarrierQuotesObj.CanaryAMS__Insurance_Quote__c = InsuranceRecordId;
    			if(caWrap.IsCloseWon == true){
	    			caWrap.CarrierQuotesObj.CanaryAMS__Stage__c = 'Closed Won';	    				
	    			NewCarrierSubmissList.add(caWrap.CarrierQuotesObj);
    			}else if(caWrap.IsCloseWon == false){
    				caWrap.CarrierQuotesObj.CanaryAMS__Stage__c = 'Closed Lost';
    				NewCarrierSubmissList.add(caWrap.CarrierQuotesObj);	
    			}    		
    		}
    		if(NewCarrierSubmissList.size() > 0){
                system.debug('>>>>CarrierSubmissList>NewCarrierSubmissList>>>>'+NewCarrierSubmissList);
				insert NewCarrierSubmissList;
                system.debug('>>>>CarrierSubmissList>NewCarrierSubmissList>>>>'+NewCarrierSubmissList);
				List<CanaryAMSWrapper> emptyWrapperlist = new List<CanaryAMSWrapper>();
				return emptyWrapperlist;
			}
			return null;
    	} catch(Exception ex){
    		System.debug('>>>-- Exception at line ---> ' + ex.getLineNumber());
            System.debug('>>>-- Exception ---> ' + ex.getMessage());
            return null;
    	}
    		    	           
    }
    @AuraEnabled //This method get all picklist value of CanaryAMS__Agency_Bill__c field of Insurance Quote object.
    public static List<String> CarrierQuotesAgencyBill_Apex() {
        try {
            List<String> options = new List<String>();
            Schema.DescribeFieldResult fieldResult =
                    CanaryAMS__Carrier_Quotes__c.CanaryAMS__Agency_Bill__c.getDescribe();
            List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
            options.add('--None--');
            for (Schema.PicklistEntry f : ple) {
                options.add(f.getValue());
            }
            return options;
        } catch (Exception ex) {
        	System.debug('>>>-- Exception at line ---> ' + ex.getLineNumber());
            System.debug('>>>-- Exception ---> ' + ex.getMessage());
            return null;
        }
    }
    @AuraEnabled //This method get all picklist value of 'CanaryAMS__Closed_Lost_Reason__c' field of Insurance Quote object.
    public static List<String> CarrierQuotesReasonLost_Apex() {
        try {
            List<String> options = new List<String>();
            Schema.DescribeFieldResult fieldResult =
                    CanaryAMS__Carrier_Quotes__c.CanaryAMS__Closed_Lost_Reason__c.getDescribe();
            List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
            options.add('--None--');
            for (Schema.PicklistEntry f : ple) {
                options.add(f.getValue());
            }
            return options;
        } catch (Exception ex) {
        	System.debug('>>>-- Exception at line ---> ' + ex.getLineNumber());
            System.debug('>>>-- Exception ---> ' + ex.getMessage());
            return null;
        }
    }
    @AuraEnabled //This method get all picklist value of 'CanaryAMS__Closed_Lost_Reason__c' field of Carrier object.
    public static List<String> CarrierQuotesReasonLostDynamic_Apex() {
        try {
            List<String> options = new List<String>();
            Schema.DescribeFieldResult fieldResult =
                    CanaryAMS__Carrier_Quotes__c.CanaryAMS__Closed_Lost_Reason__c.getDescribe();
            List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
            options.add('--None--');
            for (Schema.PicklistEntry f : ple) {
                options.add(f.getValue());
            }
            return options;
        } catch (Exception ex) {
        	System.debug('>>>-- Exception at line ---> ' + ex.getLineNumber());
            System.debug('>>>-- Exception ---> ' + ex.getMessage());
            return null;
        }
    }
    @AuraEnabled //This method get all picklist value of 'CanaryAMS__Closed_Lost_Reason__c' field of Insurance Quote object.
    public static List<String> InsuQuotePaymentMethodPickListValue_Apex() {
        try {
            List<String> options = new List<String>();
            Schema.DescribeFieldResult fieldResult =
                    CanaryAMS__Insurance_Product__c.CanaryAMS__Payment_Method__c.getDescribe();
            List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
            options.add('--None--');
            for (Schema.PicklistEntry f : ple) {
                options.add(f.getValue());
            }
            return options;
        } catch (Exception ex) {
        	System.debug('>>>-- Exception at line ---> ' + ex.getLineNumber());
            System.debug('>>>-- Exception ---> ' + ex.getMessage());
            return null;
        }
    }
    
    @AuraEnabled 
    public static String UpdateInsuranceCloseQuote_Apex(CanaryAMS__Insurance_Product__c obj , String NewRecordTypeID, String CarrierStrinWrapper, String CurrAccounNameRedtpeNa){
    	try { 
            system.debug('>>>>>>>>>NewRecordTypeID>>>obj>>>>>>>'+obj);
            system.debug('>>>>>>>>>NewRecordTypeID>>>NewRecordTypeID>>>>>>>'+NewRecordTypeID);
            system.debug('>>>>>>>>>NewRecordTypeID>>>CarrierStrinWrapper>>>>>>>'+CarrierStrinWrapper);
            system.debug('>>>>>>>>>NewRecordTypeID>>>CurrAccounNameRedtpeNa>>>>>>>'+CurrAccounNameRedtpeNa);
    		List<CanaryAMS__Carrier_Quotes__c> Carrier_QuotesListUpdate = new List<CanaryAMS__Carrier_Quotes__c>();
    		List<CanaryAMS__Carrier_Quotes__c> CarrierQuotesChecDeletekList = new List<CanaryAMS__Carrier_Quotes__c>();
	    	List<CanaryAMS__Carrier_Quotes__c> CarrierQuotesCheckList = new List<CanaryAMS__Carrier_Quotes__c>();
	    	
            if(obj != null && obj.CanaryAMS__Stage__c == 'Closed Won' || obj.CanaryAMS__Stage__c == 'Closed Lost'){ 
            	/*-------Start Update carrier Submission only checkbox true---------*/
            	List<CanaryAMSWrapper> CarrierSubwraperList = (List<CanaryAMSWrapper>) JSON.deserialize(CarrierStrinWrapper, List<CanaryAMSWrapper>.class);
	    		List<CanaryAMS__Carrier_Quotes__c> NewCarrierSubmissUpdatedList = new List<CanaryAMS__Carrier_Quotes__c>();
	    		for(CanaryAMSWrapper caWraper : CarrierSubwraperList){
	    			if(caWraper.IsCloseWon == true){
	    				if(caWraper.CarrierQuotesObj.CanaryAMS__Carrier__c == null){
	    					CarrierQuotesChecDeletekList.add(caWraper.CarrierQuotesObj);
	    				}else{
	    					caWraper.CarrierQuotesObj.CanaryAMS__Stage__c = 'Closed Won';	    				
		    				NewCarrierSubmissUpdatedList.add(caWraper.CarrierQuotesObj);
	    				}
	    			}else if(caWraper.IsCloseWon == false){
	    				if(caWraper.CarrierQuotesObj.CanaryAMS__Carrier__c == null){
	    					CarrierQuotesChecDeletekList.add(caWraper.CarrierQuotesObj);
	    				} else{
	    					caWraper.CarrierQuotesObj.CanaryAMS__Stage__c = 'Closed Lost';
		    				NewCarrierSubmissUpdatedList.add(caWraper.CarrierQuotesObj);	
	    				}
	    			}    		
	    		}
	    		if(CarrierQuotesChecDeletekList.size() > 0){
	    			delete CarrierQuotesChecDeletekList;	
	    		}
	    		
	    		if(NewCarrierSubmissUpdatedList.size() > 0){
					update NewCarrierSubmissUpdatedList;
				}
				/*-------End Update carrier Submission only checkbox true---------*/
				//system.debug('>>>>>>>>>NewRecordTypeID>>>NewRecordTypeID>>>>>>>'+NewRecordTypeID);
                
                if(NewRecordTypeID != null) {
                    System.debug('NewRecordTypeID ' + NewRecordTypeID);
                    obj.RecordTypeId = NewRecordTypeID;
                } 	   			    			    		
                update obj;
                    
	    		String CurrentrecordTypeName = [select id,Name from RecordType where SobjectType = 'CanaryAMS__Insurance_Product__c' AND Id = :obj.RecordTypeId].Name;
				
	    		List<RecordType> recordTypeName = [select id,Name from RecordType where SobjectType = 'CanaryAMS__Policy__c' AND isActive =: true];
	    		
				CanaryAMS__Policy__c  policy = new CanaryAMS__Policy__c(); //Create New Policy .
                List<CanaryAMS__Policy__c> CanaryAMSPolicylist = new List<CanaryAMS__Policy__c>(); 
                if(obj.CanaryAMS__Stage__c == 'Closed Won'){
					for(RecordType ret: recordTypeName) { 
						if(CurrentrecordTypeName == ret.Name){						
				    		policy.Name = CurrAccounNameRedtpeNa;
							policy.CanaryAMS__Product__c = obj.Id;
				    		policy.RecordTypeId = ret.Id;
				    		policy.CanaryAMS__Account__c = obj.CanaryAMS__Account__c;
							policy.CanaryAMS__Accounting_Contact__c = obj.CanaryAMS__Accounting_Contact__c;
							policy.CanaryAMS__Additional_Company_Information__c = obj.CanaryAMS__Additional_Company_Information__c;
							policy.CanaryAMS__Policy_Term__c = obj.CanaryAMS__Quoted_Term__c;
							policy.CanaryAMS__Additional_Coverages_Endorsements__c = obj.CanaryAMS__Additional_Coverages_Endorsements__c;
							policy.CanaryAMS__Address_1__c = obj.CanaryAMS__Street_Address__c;
							policy.CanaryAMS__Address_2__c = obj.CanaryAMS__Street_2__c;
							policy.CanaryAMS__AnniversaryRatingDt__c = String.valueOf(obj.CanaryAMS__Normal_Anniversary_Rating_Date__c);
							if(obj.CanaryAMS__Total_Payroll__c != null){
								policy.CanaryAMS__Annual_Payroll_Amount__c = Decimal.valueOf(obj.CanaryAMS__Total_Payroll__c);	
							}						
							policy.CanaryAMS__Applicant_Contact__c = obj.CanaryAMS__Applicant_Contact__c;
							policy.CanaryAMS__Applicant_Named_Insured__c = obj.CanaryAMS__Applicant_Named_Insured__c;
							policy.CanaryAMS__Audit_Term__c = obj.CanaryAMS__Audit_Term__c;
							policy.CanaryAMS__BillingAccountNumber__c = obj.CanaryAMS__Billing_Account_Number__c;
							policy.CanaryAMS__Carrier__c = obj.CanaryAMS__Quoted_Carrier__c;
							policy.CanaryAMS__Carrier_Product__c = obj.CanaryAMS__Quoted_Carrier_Product__c;
							policy.CanaryAMS__City__c = obj.CanaryAMS__City__c;
							policy.CanaryAMS__Claims_Contact__c = obj.CanaryAMS__Claims_Contact__c;
							policy.CanaryAMS__Claims_Made_Occurrence__c = obj.CanaryAMS__Claims_Made_Occurrence__c;
							policy.CanaryAMS__Co_Applicant__c = obj.CanaryAMS__Co_Applicant__c;
							policy.CanaryAMS__Contact_for_Policy__c = obj.CanaryAMS__Contact_for_Quote__c;
							policy.CanaryAMS__County__c = obj.CanaryAMS__County__c;
							policy.CanaryAMS__Current_Retroactive_Date__c = obj.CanaryAMS__Retroactive_Date__c;
							policy.CanaryAMS__Deductible_or_Retention__c = obj.CanaryAMS__Deductible_or_Retention__c;
							policy.CanaryAMS__Deductible_Per_Claim_Occurrence__c = obj.CanaryAMS__Deductible_Per_Claim_Occurrence__c;
							policy.CanaryAMS__Operation_Description__c = obj.CanaryAMS__Description_of_Business__c;
							policy.CanaryAMS__Dividend_Plan_Safety_Group__c = obj.CanaryAMS__Dividend_Plan_Safety_Group__c;
							policy.CanaryAMS__DepositAmt__c = obj.CanaryAMS__Quoted_Down_Payment__c;
							if(obj.CanaryAMS__Policy_Effective_Date__c != null){
								policy.CanaryAMS__Effective_Date__c = obj.CanaryAMS__Policy_Effective_Date__c;	
							} else {
								policy.CanaryAMS__Effective_Date__c = date.today();
								obj.CanaryAMS__Policy_Effective_Date__c = date.today();
							}
							policy.CanaryAMS__Email__c = obj.CanaryAMS__Email__c;
							policy.CanaryAMS__FEIN__c = obj.CanaryAMS__FEIN__c;
							policy.CanaryAMS__Finance_Company__c = obj.CanaryAMS__Finance_Company__c;
							policy.CanaryAMS__Finance_Contract_Number__c = obj.CanaryAMS__Finance_Contract_Number__c;
							policy.CanaryAMS__Renewal_Date_2__c = obj.CanaryAMS__Policy_Expiration_Date__c; 
							policy.CanaryAMS__Financed_Amount__c = obj.CanaryAMS__Financed_Amount__c;
							if(obj.CanaryAMS__Full_Time_Employees__c != null){
								policy.CanaryAMS__Workers_Comp_of_Full_Time_Rate__c = Integer.valueOf(obj.CanaryAMS__Full_Time_Employees__c);	
							}
							policy.CanaryAMS__Total_Agency_Fees__c = obj.CanaryAMS__Total_Agency_Fees__c;						
							policy.CanaryAMS__HO_DP_Form__c = obj.CanaryAMS__Form_Type__c;
							policy.CanaryAMS__Workers_Comp_Included_States__c = obj.CanaryAMS__Included_States__c;
							policy.CanaryAMS__Inspection_Contact__c = obj.CanaryAMS__Inspection_Contact__c;
							policy.CanaryAMS__Installment_Amount__c = obj.CanaryAMS__Quoted_Monthly_Payment__c;
							policy.CanaryAMS__Mail_Policy_To__c = obj.CanaryAMS__Mail_Policy_To__c;
							policy.CanaryAMS__Minimum_Premium__c = obj.CanaryAMS__Minimum_Premium__c;
							policy.CanaryAMS__Nature_Of_Business_Description_Of_Oppe__c = obj.CanaryAMS__Nature_Of_Business_Description_Of_Oppe__c;
							policy.CanaryAMS__NetChangeAmt__c = obj.CanaryAMS__Net_Change_Premium__c;
							//policy.CanaryAMS__New_Business__c = obj.
							policy.CanaryAMS__Notes__c = obj.CanaryAMS__Notes__c;
							if(obj.CanaryAMS__Number_of_Employees__c != null){
								policy.CanaryAMS__Number_of_Employees__c = String.valueOf(obj.CanaryAMS__Number_of_Employees__c);	
							}						
							policy.CanaryAMS__Number_of_Installments__c = obj.CanaryAMS__Number_of_Installments__c;
							policy.CanaryAMS__Other_Coverages__c = obj.CanaryAMS__Other_Coverages_Restrictions_Endorseme__c;
							policy.CanaryAMS__Other_States_Part_3__c = obj.CanaryAMS__Other_States_Part_3__c;
							policy.CanaryAMS__Paid_to_Subcontractors__c = obj.CanaryAMS__Paid_to_Subcontractors__c;
							if(obj.CanaryAMS__Part_Time_Employees__c != null){
								policy.CanaryAMS__Workers_Comp_of_Part_Time_Employees__c = Integer.valueOf(obj.CanaryAMS__Part_Time_Employees__c);	
							}						
							policy.CanaryAMS__Participating_Non_Participating__c = obj.CanaryAMS__Participating_Non_Participating__c;
							policy.CanaryAMS__Payment_Method__c = obj.CanaryAMS__Payment_Method__c;
							policy.CanaryAMS__PaymentPlanCd__c = obj.CanaryAMS__Pay_Plan__c;
							policy.CanaryAMS__Payor__c = obj.CanaryAMS__Payor__c;
							policy.CanaryAMS__Percent_Down__c = obj.CanaryAMS__Percent_Down__c;
							policy.CanaryAMS__Percent_of_Work_Subcontracted__c = obj.CanaryAMS__Percent_of_Work_Subcontracted__c;
							policy.CanaryAMS__PhoneNumber__c = obj.CanaryAMS__Phone__c;
							policy.CanaryAMS__Producer2__c = obj.CanaryAMS__Producer_2__c;
							policy.CanaryAMS__Policy_Number__c = obj.CanaryAMS__Policy_Number__c;
							policy.CanaryAMS__Policy_Type__c = obj.CanaryAMS__Transaction_Type__c;
							policy.CanaryAMS__Net_Premium__c = obj.CanaryAMS__Quoted_Policy_Premium__c;
							policy.CanaryAMS__Producer__c = obj.CanaryAMS__Producer__c;
							policy.CanaryAMS__RetrospectiveRatingPlanCd__c = obj.CanaryAMS__Retro_Plan__c;
							policy.CanaryAMS__SICCd__c = obj.CanaryAMS__SIC_Code__c;
							policy.CanaryAMS__Policy_Source__c = obj.CanaryAMS__Quote_Source__c;
							policy.CanaryAMS__StateProvCd__c = obj.CanaryAMS__State__c;
							policy.CanaryAMS__Policy_Sub_Source__c = obj.CanaryAMS__Quote_Sub_Source__c;
							policy.CanaryAMS__Sub_Sub_Source__c = obj.CanaryAMS__Quote_Sub_Subsource__c;
							policy.CanaryAMS__Third_Party__c = obj.CanaryAMS__Third_Party__c;
							policy.CanaryAMS__Total_Premium__c = obj.CanaryAMS__Total_Term_Amount__c;
							policy.CanaryAMS__Total_Taxes_Fees__c = obj.CanaryAMS__Total_Taxes_Fees__c;
							policy.CanaryAMS__Type_of_Subcontracted_Work__c = obj.CanaryAMS__Type_of_Subcontracted_Work__c;
							policy.CanaryAMS__Umbrella_or_Excess__c = obj.CanaryAMS__Umbrella_or_Excess__c;
							policy.CanaryAMS__Underlying_Coverage_Info__c = obj.CanaryAMS__Underlying_Coverage_Info__c;
							policy.CanaryAMS__Underwriter__c = obj.CanaryAMS__Carrier_Contact__c;
							policy.CanaryAMS__Uninterrupted_Claims_Made_Entry_Date__c = obj.CanaryAMS__Uninterrupted_Claims_Made_Coverage_Date__c;
							policy.CanaryAMS__PostalCode__c = obj.CanaryAMS__Zip_Code__c;
				    		CanaryAMSPolicylist.add(policy);	
						}
					}                	    		
	    			    		
	                if(CanaryAMSPolicylist.size() > 0){              
		    			insert CanaryAMSPolicylist; 
	                    obj.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
	                }                
		    		update obj;	
	                
	                CarrierQuotesCheckList =[select Id,Name,CanaryAMS__Stage__c,CanaryAMS__Carrier__c,CanaryAMS__Policy__c
	                                         from CanaryAMS__Carrier_Quotes__c 
	                                         where CanaryAMS__Insurance_Quote__c =: obj.Id 
	                                         AND CanaryAMS__Stage__c =: 'Closed Won' ];
	                for(CanaryAMS__Carrier_Quotes__c CaQuote : CarrierQuotesCheckList){
	                    if(CanaryAMSPolicylist.size() > 0){
	                     	CaQuote.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
	                    	Carrier_QuotesListUpdate.add(CaQuote);   
	                    }                    
	                }
	                if(Carrier_QuotesListUpdate.size()>0){  
	                    update Carrier_QuotesListUpdate;
	                }	                
	                List<CanaryAMS__Additional_Interests__c>CanaryAMSAdditionalInterestsUpdateList = new List<CanaryAMS__Additional_Interests__c>();
	                List<CanaryAMS__Additional_Interests__c>CanaryAMSAdditionalInterestsList = new List<CanaryAMS__Additional_Interests__c>(); 
	                 		CanaryAMSAdditionalInterestsList = [select Id,Name,CanaryAMS__Insurance_Quote__c,CanaryAMS__Policy__c
																from CanaryAMS__Additional_Interests__c where CanaryAMS__Insurance_Quote__c =: obj.Id];
							if(CanaryAMSAdditionalInterestsList.size() > 0){
								for(CanaryAMS__Additional_Interests__c addIn : CanaryAMSAdditionalInterestsList){
									addIn.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSAdditionalInterestsUpdateList.add(addIn); 
								}
								if(CanaryAMSAdditionalInterestsUpdateList.size() > 0){
									update CanaryAMSAdditionalInterestsUpdateList;
								}
							}
					 List<CanaryAMS__Beneficiaries__c> CanaryAMSBeneficiariesUpdateList = new List<CanaryAMS__Beneficiaries__c>();
					 List<CanaryAMS__Beneficiaries__c> CanaryAMSBeneficiariesList = new List<CanaryAMS__Beneficiaries__c>(); 
							CanaryAMSBeneficiariesList = [select Id,Name,CanaryAMS__Insurance_Quote__c,CanaryAMS__Policy__c
														   from CanaryAMS__Beneficiaries__c where CanaryAMS__Insurance_Quote__c =: obj.Id];
							if(CanaryAMSBeneficiariesList.size() > 0){
								for(CanaryAMS__Beneficiaries__c benefici : CanaryAMSBeneficiariesList){
									benefici.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSBeneficiariesUpdateList.add(benefici); 
								}
								if(CanaryAMSBeneficiariesUpdateList.size() > 0){
									update CanaryAMSBeneficiariesUpdateList;
								}
							}
	                 List<CanaryAMS__Blanket__c> CanaryAMSBlanketUpdateList = new List<CanaryAMS__Blanket__c>();
	                 List<CanaryAMS__Blanket__c> CanaryAMSBlanketList = new List<CanaryAMS__Blanket__c>(); 
							CanaryAMSBlanketList = [select Id,Name,CanaryAMS__Policy__c,CanaryAMS__Insurance_Quote__c
													from CanaryAMS__Blanket__c where CanaryAMS__Insurance_Quote__c =: obj.Id];
							if(CanaryAMSBlanketList.size() > 0){
								for(CanaryAMS__Blanket__c blanket : CanaryAMSBlanketList){
									blanket.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSBlanketUpdateList.add(blanket); 
								}
								if(CanaryAMSBlanketUpdateList.size() > 0){
									update CanaryAMSBlanketUpdateList;
								}
							}
	                 List<CanaryAMS__Bond__c> CanaryAMSBondUpdateList = new List<CanaryAMS__Bond__c>(); 
	                 List<CanaryAMS__Bond__c> CanaryAMSBondList = new List<CanaryAMS__Bond__c>(); 
							CanaryAMSBondList = [select Id,Name,CanaryAMS__Policy__c,CanaryAMS__Insurance_Quote__c
												 from CanaryAMS__Bond__c where CanaryAMS__Insurance_Quote__c =: obj.Id];
							if(CanaryAMSBondList.size() > 0){
								for(CanaryAMS__Bond__c bond : CanaryAMSBondList){
									bond.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSBondUpdateList.add(bond); 
								}
								if(CanaryAMSBondUpdateList.size() > 0){
									update CanaryAMSBondUpdateList;
								}
							}
							
	                 List<CanaryAMS__Claim__c> CanaryAMSClaimUpdateList = new List<CanaryAMS__Claim__c>();
	                 List<CanaryAMS__Claim__c> CanaryAMSClaimList = new List<CanaryAMS__Claim__c>();
							CanaryAMSClaimList = [select Id,Name,CanaryAMS__Policy__c,CanaryAMS__Product__c
												   from CanaryAMS__Claim__c where CanaryAMS__Product__c =: obj.Id];
							if(CanaryAMSClaimList.size() > 0){
								for(CanaryAMS__Claim__c claim : CanaryAMSClaimList){
									claim.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSClaimUpdateList.add(claim); 
								}
								if(CanaryAMSClaimUpdateList.size() > 0){
									update CanaryAMSClaimUpdateList;
								}
							}
	        		 List<CanaryAMS__Commercial_Vehicle__c> CanaryAMSCommercialVehicleUpdateList = new List<CanaryAMS__Commercial_Vehicle__c>();
	        		 List<CanaryAMS__Commercial_Vehicle__c> CanaryAMSCommercialVehicleList = new List<CanaryAMS__Commercial_Vehicle__c>(); 
							CanaryAMSCommercialVehicleList = [select Id,Name,CanaryAMS__Policy__c,CanaryAMS__Insurance_Product__c
															   from CanaryAMS__Commercial_Vehicle__c where CanaryAMS__Insurance_Product__c =: obj.Id];
							if(CanaryAMSCommercialVehicleList.size() > 0){
								for(CanaryAMS__Commercial_Vehicle__c commercial : CanaryAMSCommercialVehicleList){
									commercial.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSCommercialVehicleUpdateList.add(commercial); 
								}
								if(CanaryAMSCommercialVehicleUpdateList.size() > 0){
									update CanaryAMSCommercialVehicleUpdateList;
								}
							}
	        		 
	        		 List<CanaryAMS__Coverage__c> CanaryAMSCoverageUpdateList = new List<CanaryAMS__Coverage__c>(); 
	        		 List<CanaryAMS__Coverage__c> CanaryAMSCoverageList = new List<CanaryAMS__Coverage__c>();
							CanaryAMSCoverageList = [select Id,Name,CanaryAMS__Policy__c,CanaryAMS__Insurance_Product__c
													 from CanaryAMS__Coverage__c where CanaryAMS__Insurance_Product__c =: obj.Id];
							if(CanaryAMSCoverageList.size() > 0){
								for(CanaryAMS__Coverage__c cover : CanaryAMSCoverageList){
									cover.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSCoverageUpdateList.add(cover); 
								}
								if(CanaryAMSCoverageUpdateList.size() > 0){
									update CanaryAMSCoverageUpdateList;
								}
							}
	        		  
	        		 List<CanaryAMS__Form__c> CanaryAMSFormUpdateList = new List<CanaryAMS__Form__c>(); 
	        		 List<CanaryAMS__Form__c> CanaryAMSFormList = new List<CanaryAMS__Form__c>(); 
							CanaryAMSFormList = [select Id,Name,CanaryAMS__Policy__c,CanaryAMS__Insurance_Quote__c
												 from CanaryAMS__Form__c where CanaryAMS__Insurance_Quote__c =: obj.Id];
							if(CanaryAMSFormList.size() > 0){
								for(CanaryAMS__Form__c formss : CanaryAMSFormList){
									formss.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSFormUpdateList.add(formss); 
								}
								if(CanaryAMSFormUpdateList.size() > 0){
									update CanaryAMSFormUpdateList;
								}
							}
	        		
	        		List<CanaryAMS__Glass_Sign__c> CanaryAMSGlassSignUpdateList = new List<CanaryAMS__Glass_Sign__c>();
	        		List<CanaryAMS__Glass_Sign__c> CanaryAMSGlassSignList = new List<CanaryAMS__Glass_Sign__c>();
							CanaryAMSGlassSignList = [select Id,Name,CanaryAMS__Insurance_Quote__c,CanaryAMS__Policy__c 
														from CanaryAMS__Glass_Sign__c where CanaryAMS__Insurance_Quote__c =: obj.Id];
							if(CanaryAMSGlassSignList.size() > 0){
								for(CanaryAMS__Glass_Sign__c glass : CanaryAMSGlassSignList){
									glass.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSGlassSignUpdateList.add(glass); 
								}
								if(CanaryAMSGlassSignUpdateList.size() > 0){
									update CanaryAMSGlassSignUpdateList;
								}
							}
					
	        		List<CanaryAMS__Insured__c> CanaryAMSInsuredUpdateList = new List<CanaryAMS__Insured__c>();
	        		List<CanaryAMS__Insured__c> CanaryAMSInsuredList = new List<CanaryAMS__Insured__c>();
							CanaryAMSInsuredList = [select Id,Name,CanaryAMS__Policy__c,CanaryAMS__Product_Name__c
													from CanaryAMS__Insured__c where CanaryAMS__Product_Name__c =: obj.Id];
							if(CanaryAMSInsuredList.size() > 0){
								for(CanaryAMS__Insured__c insure : CanaryAMSInsuredList){
									insure.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSInsuredUpdateList.add(insure); 
								}
								if(CanaryAMSInsuredUpdateList.size() > 0){
									update CanaryAMSInsuredUpdateList;
								}
							}
	        		
	        		List<CanaryAMS__Investment__c> CanaryAMSInvestmentUpdateList = new List<CanaryAMS__Investment__c>();
	        		List<CanaryAMS__Investment__c> CanaryAMSInvestmentList = new List<CanaryAMS__Investment__c>();
							CanaryAMSInvestmentList = [select Id,Name,CanaryAMS__Policy__c,CanaryAMS__Insurance_Quote__c 
														from CanaryAMS__Investment__c where CanaryAMS__Insurance_Quote__c =: obj.Id];
							if(CanaryAMSInvestmentList.size() > 0){
								for(CanaryAMS__Investment__c invest : CanaryAMSInvestmentList){
									invest.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSInvestmentUpdateList.add(invest); 
								}
								if(CanaryAMSInvestmentUpdateList.size() > 0){
									update CanaryAMSInvestmentUpdateList;
								}
							}
					
	        		List<CanaryAMS__Job__c> CanaryAMSJobUpdateList = new List<CanaryAMS__Job__c>();
	        		List<CanaryAMS__Job__c> CanaryAMSJobList = new List<CanaryAMS__Job__c>();
	        				CanaryAMSJobList = [select Id,Name,CanaryAMS__Policy__c,CanaryAMS__Insurance_Quote__c 
														from CanaryAMS__Job__c where CanaryAMS__Insurance_Quote__c =: obj.Id];
							if(CanaryAMSJobList.size() > 0){
								for(CanaryAMS__Job__c job : CanaryAMSJobList){
									job.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSJobUpdateList.add(job); 
								}
								if(CanaryAMSJobUpdateList.size() > 0){
									update CanaryAMSJobUpdateList;
								}
							}	
	        		       		
	        		List<CanaryAMS__Location__c> CanaryAMSLocationUpdateList = new List <CanaryAMS__Location__c>();
	        		List<CanaryAMS__Location__c> CanaryAMSLocationList = new List <CanaryAMS__Location__c>();
	        				CanaryAMSLocationList = [select Id,Name,CanaryAMS__Insurance_Quote__c,CanaryAMS__Policy__c
														from CanaryAMS__Location__c where CanaryAMS__Insurance_Quote__c =: obj.Id];
							if(CanaryAMSLocationList.size() > 0){
								for(CanaryAMS__Location__c loct : CanaryAMSLocationList){
									loct.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSLocationUpdateList.add(loct); 
								}
								if(CanaryAMSLocationUpdateList.size() > 0){
									update CanaryAMSLocationUpdateList;
								}
							}
	        		
	        		List<CanaryAMS__Line_of_Business__c> CanaryAMSLineofBusinessUpdateList = new List<CanaryAMS__Line_of_Business__c>();
	        		List<CanaryAMS__Line_of_Business__c> CanaryAMSLineofBusinessList = new List<CanaryAMS__Line_of_Business__c>();
	        				CanaryAMSLineofBusinessList = [select Id,Name,CanaryAMS__Insurance_Quote__c,CanaryAMS__Policy__c
														from CanaryAMS__Line_of_Business__c where CanaryAMS__Insurance_Quote__c =: obj.Id];
							if(CanaryAMSLineofBusinessList.size() > 0){
								for(CanaryAMS__Line_of_Business__c linof : CanaryAMSLineofBusinessList){
									linof.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSLineofBusinessUpdateList.add(linof); 
								}
								if(CanaryAMSLineofBusinessUpdateList.size() > 0){
									update CanaryAMSLineofBusinessUpdateList;
								}
							}
							
	        		List<CanaryAMS__Motorcycle__c> CanaryAMSMotorcycleUpdateList = new List <CanaryAMS__Motorcycle__c>();
	        		List<CanaryAMS__Motorcycle__c> CanaryAMSMotorcycleList = new List <CanaryAMS__Motorcycle__c>();
							CanaryAMSMotorcycleList = [select Id,Name,CanaryAMS__Insurance_Product__c,CanaryAMS__Policy__c
														from CanaryAMS__Motorcycle__c where CanaryAMS__Insurance_Product__c =: obj.Id];
							if(CanaryAMSMotorcycleList.size() > 0){
								for(CanaryAMS__Motorcycle__c motorcycle : CanaryAMSMotorcycleList){
									motorcycle.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSMotorcycleUpdateList.add(motorcycle); 
								}
								if(CanaryAMSMotorcycleUpdateList.size() > 0){
									update CanaryAMSMotorcycleUpdateList;
								}
							}
	        		List<CanaryAMS__MVR_Violation_Information__c> CanaryAMSMVRViolationInformationUpdateList = new List <CanaryAMS__MVR_Violation_Information__c>();
	        		List<CanaryAMS__MVR_Violation_Information__c> CanaryAMSMVRViolationInformationList = new List <CanaryAMS__MVR_Violation_Information__c>();
	        				CanaryAMSMVRViolationInformationList = [select Id,Name,CanaryAMS__Policy__c,CanaryAMS__Insurance_Quote__c
																	from CanaryAMS__MVR_Violation_Information__c where CanaryAMS__Insurance_Quote__c =: obj.Id];
							if(CanaryAMSMVRViolationInformationList.size() > 0){
								for(CanaryAMS__MVR_Violation_Information__c violation : CanaryAMSMVRViolationInformationList){
									violation.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSMVRViolationInformationUpdateList.add(violation); 
								}
								if(CanaryAMSMVRViolationInformationUpdateList.size() > 0){
									update CanaryAMSMVRViolationInformationUpdateList;
								}
							}
					List<CanaryAMS__Prior_Policy__c> CanaryAMSPriorPolicyUpdateList = new List<CanaryAMS__Prior_Policy__c>();
					List<CanaryAMS__Prior_Policy__c> CanaryAMSPriorPolicyList = new List<CanaryAMS__Prior_Policy__c>();
							CanaryAMSPriorPolicyList = [select Id,Name,CanaryAMS__Policy__c,CanaryAMS__Insurance_Quote__c 
														from CanaryAMS__Prior_Policy__c where CanaryAMS__Insurance_Quote__c =: obj.Id];
							if(CanaryAMSPriorPolicyList.size() > 0){
								for(CanaryAMS__Prior_Policy__c prior : CanaryAMSPriorPolicyList){
									prior.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSPriorPolicyUpdateList.add(prior); 
								}
								if(CanaryAMSPriorPolicyUpdateList.size() > 0){
									update CanaryAMSPriorPolicyUpdateList;
								}
							}
	        		List<CanaryAMS__Products_Completed_Operations__c> CanaryAMSProductsCompletedOperationsUpdateList = new List<CanaryAMS__Products_Completed_Operations__c>();
	        		List<CanaryAMS__Products_Completed_Operations__c> CanaryAMSProductsCompletedOperationsList = new List<CanaryAMS__Products_Completed_Operations__c>();
							CanaryAMSProductsCompletedOperationsList = [select Id,Name,CanaryAMS__Policy__c,CanaryAMS__Insurance_Quote__c
																		from CanaryAMS__Products_Completed_Operations__c where CanaryAMS__Insurance_Quote__c =: obj.Id];
							if(CanaryAMSProductsCompletedOperationsList.size() > 0){
								for(CanaryAMS__Products_Completed_Operations__c productComplete : CanaryAMSProductsCompletedOperationsList){
									productComplete.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSProductsCompletedOperationsUpdateList.add(productComplete); 
								}
								if(CanaryAMSProductsCompletedOperationsUpdateList.size() > 0){
									update CanaryAMSProductsCompletedOperationsUpdateList;
								}
							}
	        		List<CanaryAMS__Property__c> CanaryAMSPropertyUpdateList = new List <CanaryAMS__Property__c>();
	        		List<CanaryAMS__Property__c> CanaryAMSPropertyList = new List <CanaryAMS__Property__c>();
							CanaryAMSPropertyList = [select Id,Name,CanaryAMS__Policy__c,CanaryAMS__Insurance_Product__c
													 from CanaryAMS__Property__c where CanaryAMS__Insurance_Product__c =: obj.Id];
							if(CanaryAMSPropertyList.size() > 0){
								for(CanaryAMS__Property__c proper : CanaryAMSPropertyList){
									proper.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSPropertyUpdateList.add(proper); 
								}
								if(CanaryAMSPropertyUpdateList.size() > 0){
									update CanaryAMSPropertyUpdateList;
								}
							}
	        		List<CanaryAMS__Inland_Property_Schedule__c> CanaryAMSInlandPropertyScheduleUpdateList = new List <CanaryAMS__Inland_Property_Schedule__c>();
	        		List<CanaryAMS__Inland_Property_Schedule__c> CanaryAMSInlandPropertyScheduleList = new List <CanaryAMS__Inland_Property_Schedule__c>();
							CanaryAMSInlandPropertyScheduleList = [select Id,Name,CanaryAMS__Policy__c,CanaryAMS__Insurance_Quote__c
																	from CanaryAMS__Inland_Property_Schedule__c where CanaryAMS__Insurance_Quote__c =: obj.Id];
							if(CanaryAMSInlandPropertyScheduleList.size() > 0){
								for(CanaryAMS__Inland_Property_Schedule__c inlandProperty : CanaryAMSInlandPropertyScheduleList){
									inlandProperty.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSInlandPropertyScheduleUpdateList.add(inlandProperty); 
								}
								if(CanaryAMSInlandPropertyScheduleUpdateList.size() > 0){
									update CanaryAMSInlandPropertyScheduleUpdateList;
								}
							}
	        		List<CanaryAMS__Rating_Information__c> CanaryAMSRatingInformationUpdateList = new List <CanaryAMS__Rating_Information__c>();
	        		List<CanaryAMS__Rating_Information__c> CanaryAMSRatingInformationList = new List <CanaryAMS__Rating_Information__c>();
							CanaryAMSRatingInformationList = [select Id,Name,CanaryAMS__Policy__c,CanaryAMS__Insurance_Quote__c 
															   from CanaryAMS__Rating_Information__c where CanaryAMS__Insurance_Quote__c =: obj.Id];
							if(CanaryAMSRatingInformationList.size() > 0){
								for(CanaryAMS__Rating_Information__c rating : CanaryAMSRatingInformationList){
									rating.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSRatingInformationUpdateList.add(rating); 
								}
								if(CanaryAMSRatingInformationUpdateList.size() > 0){
									update CanaryAMSRatingInformationUpdateList;
								}
							}
	        		List<CanaryAMS__Schedule_of_Hazards__c> CanaryAMSScheduleofHazardsUpdateList = new List<CanaryAMS__Schedule_of_Hazards__c>();
	        		List<CanaryAMS__Schedule_of_Hazards__c> CanaryAMSScheduleofHazardsList = new List<CanaryAMS__Schedule_of_Hazards__c>();
							CanaryAMSScheduleofHazardsList = [select Id,Name,CanaryAMS__Policy__c,CanaryAMS__Insurance_Quote__c
																from CanaryAMS__Schedule_of_Hazards__c where CanaryAMS__Insurance_Quote__c =: obj.Id];
							if(CanaryAMSScheduleofHazardsList.size() > 0){
								for(CanaryAMS__Schedule_of_Hazards__c schedule : CanaryAMSScheduleofHazardsList){
									schedule.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSScheduleofHazardsUpdateList.add(schedule); 
								}
								if(CanaryAMSScheduleofHazardsUpdateList.size() > 0){
									update CanaryAMSScheduleofHazardsUpdateList;
								}
							}
	        		List<CanaryAMS__Inland_Item_Information__c> CanaryAMSInlandItemInformationUpdateList = new List<CanaryAMS__Inland_Item_Information__c>();
	        		List<CanaryAMS__Inland_Item_Information__c> CanaryAMSInlandItemInformationList = new List<CanaryAMS__Inland_Item_Information__c>();
							CanaryAMSInlandItemInformationList = [select Id,Name,CanaryAMS__Policy__c,CanaryAMS__Insurance_Quote__c
																	from CanaryAMS__Inland_Item_Information__c where CanaryAMS__Insurance_Quote__c =: obj.Id];
							if(CanaryAMSInlandItemInformationList.size() > 0){
								for(CanaryAMS__Inland_Item_Information__c Inland : CanaryAMSInlandItemInformationList){
									Inland.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSInlandItemInformationUpdateList.add(Inland); 
								}
								if(CanaryAMSInlandItemInformationUpdateList.size() > 0){
									update CanaryAMSInlandItemInformationUpdateList;
								}
							}
					
					List<CanaryAMS__State_Summary__c> CanaryAMSStateSummaryUpdateList = new List <CanaryAMS__State_Summary__c>();		
	        		List<CanaryAMS__State_Summary__c> CanaryAMSStateSummaryList = new List <CanaryAMS__State_Summary__c>();
							CanaryAMSStateSummaryList = [select Id,Name,CanaryAMS__Policy__c,CanaryAMS__Insurance_Quote__c
														  from CanaryAMS__State_Summary__c where CanaryAMS__Insurance_Quote__c =: obj.Id];
							if(CanaryAMSStateSummaryList.size() > 0){
								for(CanaryAMS__State_Summary__c statesum : CanaryAMSStateSummaryList){
									statesum.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSStateSummaryUpdateList.add(statesum); 
								}
								if(CanaryAMSStateSummaryUpdateList.size() > 0){
									update CanaryAMSStateSummaryUpdateList;
								}
							}
					
	        		List<CanaryAMS__SOI__c> CanaryAMSSOIUpdateList = new List <CanaryAMS__SOI__c>();
	        		List<CanaryAMS__SOI__c> CanaryAMSSOIList = new List <CanaryAMS__SOI__c>();
							CanaryAMSSOIList = [select Id,Name,CanaryAMS__Policy__c,CanaryAMS__Insurance_Quote__c
												from CanaryAMS__SOI__c where CanaryAMS__Insurance_Quote__c =: obj.Id];
							if(CanaryAMSSOIList.size() > 0){
								for(CanaryAMS__SOI__c soi : CanaryAMSSOIList){
									soi.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSSOIUpdateList.add(soi); 
								}
								if(CanaryAMSSOIUpdateList.size() > 0){
									update CanaryAMSSOIUpdateList;
								}
							}
												
	        		List<CanaryAMS__Taxes_Fees__c> CanaryAMSTaxesFeesUpdateList = new List <CanaryAMS__Taxes_Fees__c>();
	        		List<CanaryAMS__Taxes_Fees__c> CanaryAMSTaxesFeesList = new List <CanaryAMS__Taxes_Fees__c>();
							CanaryAMSTaxesFeesList = [select Id,Name,CanaryAMS__Policy__c,CanaryAMS__Insurance_Quote__c
														from CanaryAMS__Taxes_Fees__c where CanaryAMS__Insurance_Quote__c =: obj.Id];
							if(CanaryAMSTaxesFeesList.size() > 0){
								for(CanaryAMS__Taxes_Fees__c taxes : CanaryAMSTaxesFeesList){
									taxes.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSTaxesFeesUpdateList.add(taxes); 
								}
								if(CanaryAMSTaxesFeesUpdateList.size() > 0){
									update CanaryAMSTaxesFeesUpdateList;
								}
							}
	        		List<CanaryAMS__Transported_Item__c> CanaryAMSTransportedItemUpdateList = new List <CanaryAMS__Transported_Item__c>();
	        		List<CanaryAMS__Transported_Item__c> CanaryAMSTransportedItemList = new List <CanaryAMS__Transported_Item__c>();
							CanaryAMSTransportedItemList = [select Id,Name,CanaryAMS__Policy__c,CanaryAMS__Insurance_Quote__c
															from CanaryAMS__Transported_Item__c where CanaryAMS__Insurance_Quote__c =: obj.Id];
							if(CanaryAMSTransportedItemList.size() > 0){
								for(CanaryAMS__Transported_Item__c trans : CanaryAMSTransportedItemList){
									trans.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSTransportedItemUpdateList.add(trans); 
								}
								if(CanaryAMSTransportedItemUpdateList.size() > 0){
									update CanaryAMSTransportedItemUpdateList;
								}
							}
					
	        		List<CanaryAMS__Underlying_Policies__c> CanaryAMSUnderlyingPoliciesUpdateList = new List <CanaryAMS__Underlying_Policies__c>();
	        		List<CanaryAMS__Underlying_Policies__c> CanaryAMSUnderlyingPoliciesList = new List <CanaryAMS__Underlying_Policies__c>();
							CanaryAMSUnderlyingPoliciesList = [select Id,Name,CanaryAMS__Policy__c,CanaryAMS__Insurance_Quote__c
																from CanaryAMS__Underlying_Policies__c where CanaryAMS__Insurance_Quote__c =: obj.Id];
							if(CanaryAMSUnderlyingPoliciesList.size() > 0){
								for(CanaryAMS__Underlying_Policies__c under : CanaryAMSUnderlyingPoliciesList){
									under.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSUnderlyingPoliciesUpdateList.add(under); 
								}
								if(CanaryAMSUnderlyingPoliciesUpdateList.size() > 0){
									update CanaryAMSUnderlyingPoliciesUpdateList;
								}
							}					
																
	        		List<CanaryAMS__Vehicle__c> CanaryAMSVehicleUpdateList = new List <CanaryAMS__Vehicle__c>();
	        		List<CanaryAMS__Vehicle__c> CanaryAMSVehicleList = new List <CanaryAMS__Vehicle__c>();
							CanaryAMSVehicleList = [select Id,Name,CanaryAMS__Policy__c,CanaryAMS__Product_Name__c 
													from CanaryAMS__Vehicle__c where CanaryAMS__Product_Name__c =: obj.Id];
							if(CanaryAMSVehicleList.size() > 0){
								for(CanaryAMS__Vehicle__c vehicles : CanaryAMSVehicleList){
									vehicles.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSVehicleUpdateList.add(vehicles); 
								}
								if(CanaryAMSVehicleUpdateList.size() > 0){
									update CanaryAMSVehicleUpdateList;
								}
							}
	        		List<CanaryAMS__Boat_PWC__c> CanaryAMSBoatPWCUpdateList = new List <CanaryAMS__Boat_PWC__c>();
	        		List<CanaryAMS__Boat_PWC__c> CanaryAMSBoatPWCList = new List <CanaryAMS__Boat_PWC__c>();
							CanaryAMSBoatPWCList = [select Id,Name,CanaryAMS__Policy__c,CanaryAMS__Insurance_Product__c
													from CanaryAMS__Boat_PWC__c where CanaryAMS__Insurance_Product__c =: obj.Id];
							if(CanaryAMSBoatPWCList.size() > 0){
								for(CanaryAMS__Boat_PWC__c boatPw : CanaryAMSBoatPWCList){
									boatPw.CanaryAMS__Policy__c = CanaryAMSPolicylist[0].Id;
									CanaryAMSBoatPWCUpdateList.add(boatPw); 
								}
								if(CanaryAMSBoatPWCUpdateList.size() > 0){
									update CanaryAMSBoatPWCUpdateList;
								}
							}
					return CanaryAMSPolicylist[0].Id; // return policy Id
                }
               return obj.Id; // return Insurance Id	
	    	} 
	    	return null;     	    
	    } catch (Exception ex) {
	    	System.debug('>>>-- Exception at line ---> ' + ex.getLineNumber());
            System.debug('>>>-- Exception ---> ' + ex.getMessage());
            return null;
        }
    }
    @AuraEnabled //This method get all value of single reocrd in Carrier Submission object .
    public static CanaryAMS__Carrier_Quotes__c FetchDtailsCurrentCarrierCheck_Apex(String CarrierID) {
        try {
            List <CanaryAMS__Carrier_Quotes__c> CanaryCarrierQuotesList = new List <CanaryAMS__Carrier_Quotes__c>();
            if(CarrierID != null){
            	CanaryCarrierQuotesList = [select Id,Name,CanaryAMS__Carrier_Product__c,CanaryAMS__Carrier__c,
	                                           CanaryAMS__Agency_Bill__c,CanaryAMS__Closed_Lost_Reason__c
	                                           from CanaryAMS__Carrier_Quotes__c where Id =:CarrierID 
                						  ]; 
            }
            return CanaryCarrierQuotesList[0];
        } catch (Exception ex) {
        	System.debug('>>>-- Exception at line ---> ' + ex.getLineNumber());
            System.debug('>>>-- Exception ---> ' + ex.getMessage());
            return null;
        }
    }  
    @AuraEnabled //This method get a single record details of carrier product .
    public static CanaryAMS__Carrier_Product__c getCarrierProductStageValueTrueFalse_Apex(String CarrierProductID) {
        try {
            List <CanaryAMS__Carrier_Product__c> CanaryCarrierProductList = new List <CanaryAMS__Carrier_Product__c>();
            if(CarrierProductID != null){
            	CanaryCarrierProductList = [select Id,Name, CanaryAMS__Agency_Bill__c
                                          	 from CanaryAMS__Carrier_Product__c where Id =:CarrierProductID 
                						   ]; 
            }
            return CanaryCarrierProductList[0];
        } catch (Exception ex) {
        	System.debug('>>>-- Exception at line ---> ' + ex.getLineNumber());
            System.debug('>>>-- Exception ---> ' + ex.getMessage());
            return null;
        }
    }    
}