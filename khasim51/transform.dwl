%dw 2.0
output application/json
/*Here i used Distinct By function to remove Duplicate values Based on the EMP_ID and EMP_DATE_EXPORT basically distinct by function what it does is used to remove duplicate items from an Array  
*/
---
payload.EMPLOYE_EXPORT_UCN distinctBy ((item, index) ->  item.EMP_ID ++ (item.EMP_DATE_EXPORT as Date))