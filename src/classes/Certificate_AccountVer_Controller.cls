/*
* Created by Cloud Analogy on 17/07/2018.
*/
public class Certificate_AccountVer_Controller {// add changes
    
    @AuraEnabled
    public static list<MOIWrp> getAllRelatedMOI(String AccId){
        try{ 
            System.debug('Account ID--->'+AccId);
            List<MOIWrp> MOIWrpList =new List<MOIWrp>();
            List<CanaryAMS__Certificate_Of_Insurance__c>   COIList=new List<CanaryAMS__Certificate_Of_Insurance__c>();
            COIList=[select Name,Certificate_Type__c,CanaryAMS__Revision_Number__c,LastModifiedDate  from CanaryAMS__Certificate_Of_Insurance__c order by CreatedDate Desc limit 1500 ];
            system.debug('COIList->'+COIList.size());
            for(CanaryAMS__Certificate_Of_Insurance__c COI:COIList){
                MOIWrpList.add(new MOIWrp(COI));
            }
            System.debug('MOIWrpList-->'+MOIWrpList);
            return MOIWrpList;
        }catch(exception e){
            System.debug('get Exception in line number-->'+e.getLineNumber()+'	becoz-->'+e.getMessage());
            return null;
        }
    }
    
    @AuraEnabled
    public static boolean  deleteMOI(String MOIId){
        try{
            system.debug('this mOI->'+MOIId);
            CanaryAMS__Certificate_Of_Insurance__c COI =new CanaryAMS__Certificate_Of_Insurance__c();
            COI=[select id from CanaryAMS__Certificate_Of_Insurance__c where id=:MOIId limit 1];
            delete COI;
            return true;
        }catch(exception e){
            System.debug('get Exception in line number-->'+e.getLineNumber()+'	becoz-->'+e.getMessage());
            return false;
        }
        
    }
    
    public class MOIWrp {    
        @AuraEnabled public CanaryAMS__Certificate_Of_Insurance__c chc { get; set; }
        public MOIWrp(CanaryAMS__Certificate_Of_Insurance__c c) {
            chc = c;
        }
        
    }
    
}