ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/audit/members/
SET api_key=1111111111111111111111111111111111111111111111111111111111111111
SET r4m_member_id=888888
SET internal_route_id=DB6EB587CCCD470AAAAAAAAAAAAAAAAA
SET timestamp_from=1526649668
SET timestamp_to=1529328068

:: The example refers to the process of getting a detected route by the member_id and internal_route_id

ECHO ON

curl -o Audit_members_detected_route_get_RESPONSE.json -H "Accept: application/json" -g -k -X GET "%url%%r4m_member_id%/detected-routes/%internal_route_id%?api_key=%api_key%&timestamp_from=%timestamp_from%&timestamp_to=%timestamp_to%"

timeout /t 30