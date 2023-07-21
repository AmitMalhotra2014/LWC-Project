public class EmpRegistration {
    @auraEnabled    
    public  static void doInsert(String en, String efn, String ea, String ed, String es) {
        Employee__c emp = new Employee__c();
        emp.Name = en;
        emp.Employee_Father_Name__c = efn;
        emp.Employee_Address__c = ea;
        emp.Employee_Dept__c = ed;
        emp.Employee_Salary__c = Integer.valueOf(es);
        insert emp;
        
    }

}