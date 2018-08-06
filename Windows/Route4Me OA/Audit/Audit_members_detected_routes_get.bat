ECHO OFF

:: Please, put real values in the parameter xAuthToken
SET url=https://oa.route4me.com/api/v1/audit/members/
SET xAuthToken=eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ.LL-gggggggggggggggggggggggggggggggggggggggg
SET r4m_member_id=888888
SET timestamp_from=1526649668
SET timestamp_to=1529328068

:: The example refers to the process of getting all detected routes by the member_id

ECHO ON

curl -o Audit_members_detected_routes_get_RESPONSE.json -H "x-auth-token: %xAuthToken%" -H "Accept: application/json" -g -k -X GET "%url%%r4m_member_id%/detected-routes?timestamp_from=%timestamp_from%&timestamp_to=%timestamp_to%"

timeout /t 30