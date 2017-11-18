<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>ABC_order_created</fullName>
        <description>ABC order created</description>
        <protected>true</protected>
        <recipients>
            <recipient>sandeep.adhikariramesh@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Test_Template</template>
    </alerts>
    <fieldUpdates>
        <fullName>EMAIL_FIELD_UPDATE</fullName>
        <field>PAN_CARD__c</field>
        <formula>LEFT(text(Currency__c),2)+&quot;987&quot;</formula>
        <name>EMAIL FIELD UPDATE</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>abc order</fullName>
        <actions>
            <name>ABC_order_created</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>EMAIL_FIELD_UPDATE</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>ABC_task_created</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>( 1 AND 2) OR 3</booleanFilter>
        <criteriaItems>
            <field>abc__c.Currency__c</field>
            <operation>greaterThan</operation>
            <value>100</value>
        </criteriaItems>
        <criteriaItems>
            <field>abc__c.currency2__c</field>
            <operation>greaterThan</operation>
            <value>100</value>
        </criteriaItems>
        <criteriaItems>
            <field>abc__c.Text1__c</field>
            <operation>contains</operation>
            <value>a</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>ABC_order_created</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>EMAIL_FIELD_UPDATE</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>ABC_task_created</name>
                <type>Task</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <tasks>
        <fullName>ABC_task_created</fullName>
        <assignedTo>sandeep.adhikariramesh@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <description>Hi {!Account__r.name} and {!Account_S__c}

Please complete the task {!currency2__c}.  and 1 is {!currency1__c} ,text is {!Text1__c}</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>abc__c.CreatedDate</offsetFromField>
        <priority>High</priority>
        <protected>true</protected>
        <status>In Progress</status>
        <subject>ABC task created - Check it</subject>
    </tasks>
</Workflow>
