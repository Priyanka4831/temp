#Audit Log
#Author: Priyanka.Pandey@osi.ca.gov
#Date Created: 2022
#Date Modified: 08/23/2023
#Date####Author-Discription of Change#####Reason For Change#####
#08/23/23####Priyanka-Script updated as part of maintenance##### Version 2 created in Zephyr ||Developed new script from scratch

@CARESV1-T208 @milestone3
Feature: Validate the Approval flow of the Screening record with call reason that requires Supervisor Approval

  Background: 
    Given Application is in Login Page

  Scenario Outline: Cares_T208_321  Validate the Approval flow of the Screening record with call reason that requires Supervisor Approval
    When i logged in as <HotlineUser> for V1 application
    And i wait for 15 seconds
    And verify i am on Home page
    And i wait for 5 seconds
    And i navigate to Screenings page
    And i wait for 5 seconds
    And i click 'New' button
    And i wait for 5 seconds
    ############ Initial Screening Information ##########################
    And i enter 'TodayDate' in Date textbox
    And i select 'Abuse/Neglect Referral' value in Reason for the Call dropdown
    And i enter 'randomText' in Screening Name textbox
    And i check 'Safely Surrendered Baby' checkbox
    And i enter 'randomText' in Call Narrative for Div Paragraph Textbox in V1
    And i select 'Non-Mandated Reporter' radiobutton
    And i select 'No' value in Does This Screening Require a Call Back? dropdown
    And i click 'Save and Proceed' button
    And i wait for 5 seconds
    And i set page to view screening
    And i wait for 5 seconds
    And i capture SCR ID from view screening page
    And i capture screening url from view screening page
    ################  Add Person(s)  #############################
    And i enter person 1 deatils with role as 'Alleged Victim' in Screening
    Then i store Alleged Victim value as 'Victim1' in temporary variable
    And i scroll to Down by 200 pixels
    And i wait for 5 seconds
    And i click '+ Add Row' button
    And i wait for 5 seconds
    And i scroll to Down by 200 pixels
    And i wait for 5 seconds
    And i enter person 2 deatils with role as 'Alleged Perpetrator' in Screening
    And i click 'Save and Proceed' button
    And i wait for 5 seconds
    ################  Add Addresss(es)  #############################
    And i scroll on page to Address Type dropdown
    And i wait for 5 seconds
    And i select 'Location of Incident' value in Address Type dropdown
    And i enter 'randomText' in Address Line 1 textbox
    And i enter 'Oakland' in City textbox
    And i enter '94763' in Zip Code textbox
    And i click 'Search' button
    And i wait for 5 seconds
    And i click 'Validate Address' button
    And i wait for 5 seconds
    And i select 'userEnteredAddress' radiobutton
    And i wait for 5 seconds
    And i click 'Save and Proceed' button
    And i wait for 5 seconds
    And i scroll to Up by 600 pixels
    And i wait for 5 seconds
    And i set page to view screening
    ################  Add Allegation(s) #############################
    And i select stored 'Alleged Victim' value from constant file in Select Alleged Victim dropdown
    And i select stored 'Alleged Perpetrator' value from constant file in Select Alleged Perpetrator dropdown
    And i select 'Caretaker Absence/Incapacity' value in Allegation Type dropdown
    And i wait for 2 seconds
    And i move Abandonment,Parent Deceased, values from Allegations Subtype available list to chosen list
    And i click 'Save and Proceed' button
    And i wait for 10 seconds
    ##########################Add Contact (Step 5) ###############################
    ###################Commented due to Clarification #################
    #And i click '+ Contact' button
    #And i wait for 10 seconds
    #And i enter 'TodayDate' in Date textbox
    #And i wait for 5 seconds
    #And i enter '12:00 AM' in Time textbox
    #And i wait for 5 seconds
    #And i select 'Consult with Collateral' value in Contact Purpose dropdown
    #And i wait for 5 seconds
    #And i enter and select 'Alleged Victim' value in On Behalf of Child searchbox
    #And i wait for 5 seconds
    #And i enter and select 'Hotline Staff ContraCosta' value from property file in Staff Person searchbox
    #And i wait for 5 seconds
    #And i select 'In-Person' value in Method dropdown
    #And i wait for 5 seconds
    #And i enter and select 'Alleged Perpetrator' value in Participant searchbox
    #And i wait for 5 seconds
    #And i select 'Completed' value in Contact Status dropdown
    #And i wait for 5 seconds
    #And i select 'Home' value in Location dropdown
    #And i wait for 5 seconds
    #And i click 'Save' button
    #And i wait for 10 seconds
    #################  Identify Safety Alert(s)  #############################
    And i select 'Firearms in Home' checkbox
    And i wait for 5 seconds
    And i click 'Save and Proceed' button
    And i wait for 10 seconds
    ######## Safely Surrendered Baby #################
    And i refresh the page
    And i wait for 10 seconds
    And i scroll to down by 200 pixels
    And i wait for 5 seconds
    And i scroll to Up by 150 pixels
    And i wait for 5 seconds
    And i enter 'TodayDate' in Date textbox
    And i enter 'Home' in Place of Surrendered Baby textbox
    And i enter 'randomText' in Address Line 1 textbox
    And i enter 'Oakland' in City textbox
    And i select 'California' value in State dropdown
    And i enter '94763' in Zip Code textbox
    And i wait for 2 seconds
    And i select 'Contra Costa' value in County dropdown
    And i wait for 2 seconds
    And i enter 'randomText' in First Name textbox
    And i wait for 2 seconds
    And i enter 'randomText' in Last Name textbox
    And i wait for 2 seconds
    And i enter '9899953678' in Phone Number textbox
    And i wait for 2 seconds
    And i scroll to Down by 400 pixels
    And i click 'Save and Proceed' button
    And i wait for 5 seconds
    ############  SDM Hotline Tool  #############################
    And i select 'Immediate' value in Response Type dropdown
    And i wait for 2 seconds
    And i click 'Save and Proceed' button
    And i wait for 5 seconds
    And i refresh the page
    And i wait for 5 seconds
    ########### Tribal Inquiry Collobration (Step 11) ##########
    And i click 'Tribal Inquiry & Collaboration' link
    And i wait for 5 seconds
    And i scroll to up by 100 pixels
    And i wait for 5 seconds
    And i enter 'TodayDate' in Date textbox
    And i enter '12:00 AM' in Time textbox
    And i select 'Reporting Party' value in Participant Type dropdown
    And i enter and select 'Alleged Victim' value in On Behalf of Child searchbox
    And i select 'In-Person' value in Method dropdown
    And i select 'Tribal Inquiry' value in Contact Purpose dropdown
    And i select 'Completed' value in Contact Status dropdown
    And i enter and select 'Hotline Staff ContraCosta' value from property file in Staff Person searchbox
    And i scroll to Down by 100 pixels
    And i select 'Continue to Inquire' value in Initial ICWA Inquiry dropdown
    And i scroll to Down by 100 pixels
    And i select 'Home' value in Location dropdown
    And i click 'Save and Proceed' button
    And i wait for 5 seconds
    #############Step 9################
    And i verify 'Approval History' link is present on page
    And i verify 'Screening Addresses' link is present on page
    And i verify 'Allegations' link is present on page
    ###############Click on Submit Without ERR (Step 10 ) ######################
    And i navigate to Screenings page
    And i wait for 5 seconds
    Then i navigate to current screening using url
    And i wait for 5 seconds
    And i click 'Submit For Approval' button
    And i wait for 5 seconds
    And i verify 'Please attach Emergency Response Referral document prior to submitting for approval.' text is present on page
    And i click 'Finish' button
    And i wait for 5 seconds
    #########  +ERR Doc (Step 23-24 )#############################
    And i generate ERR document
    ################# Submit Without Approval Details Step 11 ########################
    And i wait for 5 seconds
    And i click 'Submit For Approval' button
    And i wait for 5 seconds
    And i verify 'An Approval Supervisor is required to submit for approval.' text is present on page
    And i click 'Close' button
    And i wait for 10 seconds
    ##########  Supervisor Review/Promotion (Step 12- 20) #############################
    And i scroll to down by 200 pixels
    And i wait for 2 seconds
    And i set page to view screening
    And i wait for 3 seconds
    And i enter 'hotline staff fresno' in Approval Supervisor textbox
    And i click 'Show All Results For "hotline staff fresno"' element
    And i wait for 5 seconds
    And i verify 'People' text is not present on page
    And i click 'Cancel' button
    And i wait for 5 seconds	
    ##########  Supervisor Review/Promotion (Step 21-22) #############################
    And i scroll to down by 200 pixels
    And i wait for 2 seconds
    And i set page to view screening
    And i wait for 3 seconds
    And i enter and select 'Hotline Supervisor ContraCosta' value from property file in Approval Supervisor searchbox
    And i wait for 3 seconds
    And i click 'Save and Proceed' button
    And i verify 'Record(s) saved successfully' toast message
    And i wait for 5 seconds
    #################### Document Verification (Step 25 -30)#######################
    And i wait for 3 seconds
    And i click 'Documents' link
    And i wait for 3 seconds
    And i verify 'Emergency Response Referral Document' text is present on page
    And i set page to view screening
    And i click 'show actions' element
    And i wait for 10 seconds
    And i verify 'View' text is present on page
    And i verify 'Update Status' text is present on page
    And i verify 'Download' text is present on page
    And i verify 'Upload New Version' text is present on page
    And i verify 'Print' text is present on page
    And i click 'Upload New Version' element
    And i wait for 10 seconds
    And i select 'Final' value in Document Status dropdown
    And i wait for 2 seconds
    And i upload the file for upload new version with name 'Testfile.txt'
    And i wait for 5 seconds
    And i click 'Upload' button
    And i wait for 3 seconds
    ####### Validating Screening not present by validation dropdown value (STep 27)###################
    And i refresh the page
    And i wait for 3 seconds
    And i click 'Documents' link
    And i wait for 3 seconds
    And i verify 'Emergency Response Referral Document' text is present on page
    And i click 'Upload' button
    And i wait for 3 seconds
    And i verify Document Category dropdown value are Call Transcripts,Community Referral,Health Information,Images,SCAR,SSB,Supporting Documentation
    ############  Submit For Approval (Step 31 -33 )   #############################
    And i navigate to Screenings page
    And i wait for 5 seconds
    Then i navigate to current screening using url
    #And i wait for 5 seconds
    #And i click 'Submit For Approval' button
    #And i wait for 5 seconds
    #And i refresh the page
    #And i wait for 5 seconds
    #And i enter 'Submitting for approval' in Comments textarea
    #And i wait for 2 seconds
    #And i click 'Submit' button
    And i wait for 10 seconds
    And i verify 'Screening has been submitted for approval.' text is present on page
    And i click 'Close' button
    And i wait for 10 seconds
    And i verify 'Pending Approval' text is present on page
    ########### Validate ERR doc deletion (Step 32)#####################
    ###################### Status = Pending #############
    #And i refresh the page
    #And i wait for 5 seconds
    #And i click 'Documents' link
    #And i wait for 5 seconds
    #And i click 'Show actions' element
    #And i wait for 5 seconds
    #And i verify 'Delete' element is not present on page
    #And i verify 'View' text is present on page
    #And i verify 'Update Status' text is present on page
    #And i verify 'Download' text is present on page
    #And i verify 'Upload New Version' text is present on page
    #And i verify 'Print' text is present on page
    ######################Click Submit for Approval again Step 33 #########################
    #And i wait for 5 seconds
    #And i click 'Submit For Approval' button
    #And i wait for 5 seconds
    #And i verify 'This record has already been submitted for approval.' text is present on page
    #And i click 'Close' button
    #And i wait for 10 seconds
    ######################### Validate stepper components are disabled Step 34 #######################
    #And i refresh the page
    #And i click 'Initial Screening Information' link
    #And i verify 'Screening Name' textbox is disabled
    #And i verify 'Reason for the Call' dropdown is disabled
    #And i verify 'Safely Surrendered Baby' textbox is disabled
    #And i click 'Add Person(s)' link
    #And i scroll to down by 100 pixels
    #And i verify 'First Name' textbox is disabled
    #And i click 'Add Address(es)' link
    #And i scroll to down by 150 pixels
    #And i verify 'Address Type' dropdown is disabled
    #And i click 'Add Allegation(s)' link
    #And i scroll to down by 150 pixels
    #And i verify 'Allegation Type' dropdown is disabled
    #And i click 'Safely Surrendered Baby' link
    #And i scroll to down by 150 pixels
    #And i verify 'Place of Surrendered Baby' textbox is disabled
    #And i click 'Tribal Inquiry & Collaboration' link
    #And i wait for 5 seconds
    #And i scroll to down by 150 pixels
    #And i verify 'Contact Purpose' dropdown is disabled
    #And i click 'Supervisor Review/Promotion' link
    #And i scroll to down by 250 pixels
    #And i verify 'Pathway' dropdown is disabled
    ######## Step 35-36##########################
    #And i refresh the page
    #And i click 'Home' link
    #And i verify 'Current Screening' text is present on page
    #And i verify 'Screening ID' text is present on page
    #And i navigate to current screening using url
    ###########Step 37- 40##################
    #And i click on 'Approval History' Partial link
    #And i wait for 5 seconds
    #And i verify 'Recall' button is present on page
    #And i wait for 3 seconds
    #And i click 'Recall' button
    #And i wait for 6 seconds
    #And i click Recall button 2
    #And i wait for 6 seconds
    #And i navigate to current screening using url
    #And i verify 'Recalled' text is present on page
    #And i verify 'Pending' text is not present on page
    #And i wait for 10 seconds
    ##############Step 41 ####################
    #And i refresh the page
    #And i click 'Initial Screening Information' link
    #And i verify 'Screening Name' textbox is enabled
    #And i verify 'Reason for the Call' dropdown is enabled
    #And i verify 'Safely Surrendered Baby' textbox is enabled
    #And i click 'Add Person(s)' link
    #And i verify 'First Name' textbox is enabled
    #And i click 'Add Address(es)' link
    #And i verify 'Address Type' dropdown is enabled
    #And i click 'Add Allegation(s)' link
    #And i verify 'Allegation Type' dropdown is enabled
    #And i click 'Safely Surrendered Baby' link
    #And i verify 'Place of Surrendered Baby' textbox is enabled
    #And i click 'Tribal Inquiry & Collaboration' link
    #And i wait for 5 seconds
    #And i verify 'Contact Purpose' dropdown is enabled
    #And i click 'Supervisor Review/Promotion' link
    #And i verify 'Pathway' dropdown is enabled
    ##################Submit Again after Recall (Step 41 - 45 )#################
    #And i click 'Submit for Approval' link
    #And i wait for 5 seconds
    #And i click 'Yes' button
    #And i wait for 5 seconds
    #And i click 'Submit' button
    #And i wait for 5 seconds
    #And i click 'Finish' button
    #And i wait for 5 seconds
    #################Step 43 -44 Not done Can't be automated as same user might be used for validating other scenario at the same time ###################
    #And i click on Log Out
    #And i wait for 5 seconds
    ############### Login As Hotline Supervisor ###########################
    ##########  Step 46 -47  #####################################
    #When i logged in as <HotlineSupervisor> for V1 application
    #And i wait for 5 seconds
    #And i refresh the page
    #And i wait for 5 seconds
    #And i navigate to current screening using url
    #And i refresh the page
    ###########STep 48 Validate stepper components are enabled #################
    #And i refresh the page
    #And i click 'Initial Screening Information' link
    #And i verify 'Screening Name' textbox is enabled
    #And i verify 'Reason for the Call' dropdown is enabled
    #And i verify 'Safely Surrendered Baby' textbox is enabled
    #And i click 'Add Person(s)' link
    #And i verify 'First Name' textbox is enabled
    #And i click 'Add Address(es)' link
    #And i verify 'Associate To' searchbox is enabled
    #And i click 'Add Allegation(s)' link
    #And i verify 'Allegation Type' dropdown is enabled
    #And i click 'Safely Surrendered Baby' link
    #And i verify 'Place of Surrendered Baby' textbox is enabled
    #And i click 'Tribal Inquiry & Collaboration' link
    #And i wait for 5 seconds
    #And i verify 'Contact Purpose' dropdown is enabled
    #And i click 'Supervisor Review/Promotion' link
    #And i verify 'Pathway' dropdown is enabled
    ##################Approval History Validation (Step 49 - 52)#####################
    #And i verify 'Pending Approval' text is present on page
    #And i click on 'Approval History' Partial link
    #And i wait for 5 seconds
    #And i set page to view screening
    #And i click first Step Name from related Approval History table of view screening page
    #And i wait for 5 seconds
    #And i click 'Reject' button
    #And i wait for 5 seconds
    #And i enter 'Rejected for change' in Comments textarea
    #And i wait for 7 seconds
    #And i click Reject button
    #And i wait for 3 seconds
    #And i verify 'Modifications Required' text is present on page
    #And i verify 'Modifications Required' text for Status element
    #And i wait for 5 seconds
    #And i click on Log Out
    #And i wait for 5 seconds
    ######################### Login as Hotline Worker(Step 53 -56 ) ################################
    #When i logged in as <HotlineUser> for V1 application
    #And i wait for 5 seconds
    #And i refresh the page
    #And i wait for 5 seconds
    #And i navigate to current screening using url
    #And i refresh the page
    #And i verify 'Modifications Required' text is present on page
    #And i click on 'Approval History' Partial link
    #And i wait for 5 seconds
    #And i set page to view screening
    #And i click first Step Name from related Approval History table of view screening page
    #And i wait for 5 seconds
    #Then i verify Hotline Supervisor ContraCosta value from property file is displayed on 'Assigned To' field
    #And i verify 'Approval Comments' text is present on page
    #And i verify 'Rejected for change' text is present on page
    ###########Step 57-58 Validate stepper components are enabled #################
    #And i refresh the page
    #And i wait for 5 seconds
    #And i navigate to current screening using url
    #And i refresh the page
    #And i click 'Initial Screening Information' link
    #And i verify 'Screening Name' textbox is enabled
    #And i verify 'Reason for the Call' dropdown is enabled
    #And i verify 'Safely Surrendered Baby' textbox is enabled
    #And i click 'Add Person(s)' link
    #And i verify 'First Name' textbox is enabled
    #And i click 'Add Address(es)' link
    #And i verify 'Associate To' searchbox is enabled
    #And i click 'Add Allegation(s)' link
    #And i verify 'Allegation Type' dropdown is enabled
    #And i click 'Safely Surrendered Baby' link
    #And i verify 'Place of Surrendered Baby' textbox is enabled
    #And i click 'Tribal Inquiry & Collaboration' link
    #And i wait for 5 seconds
    #And i verify 'Contact Purpose' dropdown is enabled
    #And i click 'Supervisor Review/Promotion' link
    #And i verify 'Pathway' dropdown is enabled
    ############Re-submit for Approval Step 59-60 #########################
    #And i navigate to Screenings page
    #And i wait for 5 seconds
    #Then i navigate to current screening using url
    #And i wait for 5 seconds
    #And i click 'Submit For Approval' button
    #And i wait for 5 seconds
    #And i refresh the page
    #And i wait for 5 seconds
    #And i enter 'Submitting for approval' in Comments textarea
    #And i wait for 2 seconds
    #And i click 'Submit' button
    #And i wait for 10 seconds
    #And i verify 'Screening has been submitted for approval.' text is present on page
    #And i click 'Close' button
    #And i wait for 10 seconds
    #And i verify 'Resubmitted' text is present on page
    ############## Validate Approval History PAge Step 61 ########################
    #And i click on 'Approval History' Partial link
    #And i wait for 5 seconds
    #And i set page to view screening
    #And i click first Step Name from related Approval History table of view screening page
    #And i wait for 5 seconds
    #Then i verify Hotline Supervisor ContraCosta value from property file is displayed on 'Assigned To' field
    #And i verify 'Approval Comments' text is present on page
    #And i verify 'Submitting for approval' text is present on page
    #And i verify 'Resubmitted' text for Status element
    ###########Step 62-63 Validate stepper components are enabled #################
    #And i refresh the page
    #And i wait for 5 seconds
    #And i navigate to current screening using url
    #And i refresh the page
    #And i click 'Initial Screening Information' link
    #And i verify 'Screening Name' textbox is disabled
    #And i verify 'Reason for the Call' dropdown is disabled
    #And i verify 'Safely Surrendered Baby' textbox is disabled
    #And i click 'Add Person(s)' link
    #And i verify 'First Name' textbox is disabled
    #And i click 'Add Address(es)' link
    #And i verify 'Associate To' searchbox is disabled
    #And i click 'Add Allegation(s)' link
    #And i verify 'Allegation Type' dropdown is disabled
    #And i click 'Safely Surrendered Baby' link
    #And i verify 'Place of Surrendered Baby' textbox is disabled
    #And i click 'Tribal Inquiry & Collaboration' link
    #And i wait for 5 seconds
    #And i verify 'Contact Purpose' dropdown is disabled
    #And i click 'Supervisor Review/Promotion' link
    #And i verify 'Pathway' dropdown is disabled
    #And i click on Log Out
    #And i wait for 5 seconds
    ############### Login As Hotline Supervisor Step 64 -65 ###########################
    #When i logged in as <HotlineSupervisor> for V1 application
    #And i wait for 5 seconds
    #And i refresh the page
    #And i wait for 5 seconds
    #And i navigate to current screening using url
    #And i refresh the page
    ###########STep 66 Validate stepper components are enabled #################
    #And i refresh the page
    #And i click 'Initial Screening Information' link
    #And i verify 'Screening Name' textbox is enabled
    #And i verify 'Reason for the Call' dropdown is enabled
    #And i verify 'Safely Surrendered Baby' textbox is enabled
    #And i click 'Add Person(s)' link
    #And i verify 'First Name' textbox is enabled
    #And i click 'Add Address(es)' link
    #And i verify 'Associate To' searchbox is enabled
    #And i click 'Add Allegation(s)' link
    #And i verify 'Allegation Type' dropdown is enabled
    #And i click 'Safely Surrendered Baby' link
    #And i verify 'Place of Surrendered Baby' textbox is enabled
    #And i click 'Tribal Inquiry & Collaboration' link
    #And i wait for 5 seconds
    #And i verify 'Contact Purpose' dropdown is enabled
    #And i click 'Supervisor Review/Promotion' link
    #And i verify 'Pathway' dropdown is enabled
    ##################Approval History= Approve (Step 67- 70)#####################
    #And i verify 'Pending Approval' text is present on page
    #And i wait for 7 seconds
    #Then i click on the notification for SCR ID to approve
    #And i wait for 5 seconds
    #And i verify 'Approve' text is present on page
    #Then i Approve the approval request
    #And i set page to view approval
    #And i refresh the page
    #And i wait for 5 seconds
    #And i verify 'Approved' text is present on page
    #And i verify 'Approved' text for Status element
    #################### Validate Stepper Components Step 71 ##############
    #And i refresh the page
    #And i wait for 5 seconds
    #And i navigate to current screening using url
    #And i refresh the page
    #And i click 'Initial Screening Information' link
    #And i verify 'Screening Name' textbox is disabled
    #And i verify 'Reason for the Call' dropdown is disabled
    #And i verify 'Safely Surrendered Baby' textbox is disabled
    #And i click 'Add Person(s)' link
    #And i verify 'First Name' textbox is disabled
    #And i click 'Add Address(es)' link
    #And i verify 'Associate To' searchbox is disabled
    #And i click 'Add Allegation(s)' link
    #And i verify 'Allegation Type' dropdown is disabled
    #And i click 'Safely Surrendered Baby' link
    #And i verify 'Place of Surrendered Baby' textbox is disabled
    #And i click 'Tribal Inquiry & Collaboration' link
    #And i wait for 5 seconds
    #And i verify 'Contact Purpose' dropdown is disabled
    #And i click 'Supervisor Review/Promotion' link
    #And i verify 'Pathway' dropdown is disabled
    ###############Screening Person Error Validation Step 72-74########################
    #Then i navigate to current screening using url
    #And i wait for 2 seconds
    #And i refresh the page
    #And i wait for 7 seconds
    #And i scroll to down by 550 pixels
    #And i wait for 5 seconds
    #And i click 'relatedListScreeningPersons' element
    #And i wait for 5 seconds
    #And i refresh the page
    #And i wait for 5 seconds
    #And i click 'Show Actions' button
    #And i wait for 5 seconds
    #And i verify 'Edit' button is present on page
    #Then i verify 'Delete' link is not present on page
    #And i wait for 5 seconds
    #And i capture record number 1 of Screening Person column from related Screening Persons table of Screening Persons page
    #And i click saved record of Screening Person column from Screening Persons page
    #And i refresh the page
    #And i wait for 5 seconds
    #And i click 'Edit Last Name' button
    #And i wait for 6 seconds
    #And i click 'Save' button
    #And i wait for 6 seconds
    #And i verify 'This Screening has been approved and is now locked. You cannot edit/delete this record.' textContains is present on page
    #And i click 'Cancel' button
    #And i wait for 5 seconds
    #################Screening Address Error Validation Step 75-77################
    #Then i navigate to current screening using url
    #And i wait for 2 seconds
    #And i refresh the page
    #And i wait for 7 seconds
    #And i scroll to down by 550 pixels
    #And i wait for 5 seconds
    #And i click on 'Screening Addresses' Partial link
    #And i wait for 5 seconds
    #And i refresh the page
    #And i wait for 5 seconds
    #And i click 'Show Actions' button
    #And i wait for 5 seconds
    #And i click Show actions button ''
    #And i wait for 5 seconds
    #And i click 'Edit' link
    #And i wait for 3 seconds
    #And i verify 'This Screening has been approved and is now locked. You cannot edit/delete this record.' textContains is present on page
    #And i wait for 3 seconds
    #And i click 'Close' button
    #And i wait for 7 seconds
    ################ Allegation Error Validation Step 78-80 ################
    #And i wait for 5 seconds
    #Then i navigate to current screening using url
    #And i wait for 2 seconds
    #And i refresh the page
    #And i wait for 7 seconds
    #And i scroll to down by 550 pixels
    #And i wait for 2 seconds
    #And i click on 'Allegations' Partial link
    #And i wait for 5 seconds
    #And i click Show actions button ''
    #And i wait for 5 seconds
    #And i click 'Edit' link
    #And i wait for 3 seconds
    #And i verify 'This Screening has been approved and is now locked. You cannot edit/delete this record.' textContains is present on page
    #And i wait for 3 seconds
    #And i click 'Close' button
    #And i wait for 3 seconds
    #################Safty Alert Error Validation Not done as it is not mandatory Field Step 81-82############
    #And i wait for 5 seconds
    #Then i navigate to current screening using url
    #And i wait for 2 seconds
    #And i refresh the page
    #And i wait for 7 seconds
    #And i scroll to down by 550 pixels
    #And i wait for 2 seconds
    #And i click on 'Safety Alert' Partial link
    #And i wait for 5 seconds
    #And i click Show actions button ''
    #And i wait for 5 seconds
    #And i click 'Edit' link
    #And i wait for 3 seconds
    #And i wait for 3 seconds
    #And i verify 'This Screening has been approved and is now locked. You cannot edit/delete this record.' textContains is present on page
    #And i wait for 3 seconds
    #And i click 'Close' button
    And i wait for 3 seconds
    ################## Contact Log Step 83-84 Contact log and Tribal Inquiry can be edited as it will be locked once folio is approved ##############
    ################## Tribal Inquiry & Collaboration Step 85-85 #################################
    #And i wait for 5 seconds
    #Then i navigate to current screening using url
    #And i wait for 2 seconds
    #And i refresh the page
    #And i wait for 7 seconds
    #And i scroll to down by 550 pixels
    #And i wait for 2 seconds
    #And i wait for 5 seconds
    #And i click on 'Tribal Inquiry & Collaboration' Parital link
    #And i wait for 5 seconds
    #
    #And i capture record number 1 of Contact ID column from related Contact Log table of View folio page
    #And i click saved record of Contact ID column from View folio page
    #And i wait for 10 seconds
    #And i click 'Edit' button
    #And i wait for 5 seconds
    #And i verify 'This Screening has been approved and is now locked. You cannot edit/delete this record.' text is present on page
    #And i refresh the page
    ##############Logout Step87#################
    And i click on Log Out
    And i wait for 5 seconds

    Examples: 
      | HotlineUser        | HotlineSupervisor       |
      | 'StaffContraCosta' | 'SupervisorContraCosta' |
