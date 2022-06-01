//Thread'de bir lead trigger ve ona bağlı bir handler class'ı var.
//Bu class'ın test class'ını yazmanızı istiyoruz.
@isTest
public class LeadTriggerHandlerTest {
    @isTest
    public static void updateDefaultLeadDetailsTest() {
        List<Lead> listLead = new List<Lead>();

        Lead l1 = new Lead();
        l1.Lastname = 'Group7';
        l1.company = 'New Company';
        l1.leadSource = 'Web';

        Lead l2 = new Lead();
        l2.Lastname = 'Group7';
        l2.company = 'New Company';
        l2.leadSource = 'Other';

        listLead.add(l1);
        listLead.add(l2);

        insert listLead;

        test.startTest();
        LeadTriggerHandler.updateDefaultLeadDetails(listLead);
        //return yapilmayan durumlarda system.assertEquals required degil!
        test.stopTest();


    }
}
