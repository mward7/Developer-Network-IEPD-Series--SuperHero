<?xml version="1.0" encoding="UTF-8"?>
<?ICEA pattern?> 
 <!-- Notices - Distribution Notice: 
           This document has been approved for Public Release and is available for use without restriction.
       -->
<sch:pattern id="ISM-ID-00183" xmlns:sch="http://purl.oclc.org/dsdl/schematron">
    <sch:p id="ruleText">
        [ISM-ID-00183][Error] If ISM_CAPCO_RESOURCE and attribute 
        atomicEnergyMarkings contains a name token starting with [RD-SG],
        then it must also contain the name token [RD].
    </sch:p>
	<sch:p id="codeDesc">
		If the document is an ISM-CAPCO-RESOURCE, for each element which has 
		attribute ism:atomicEnergyMarkings specified with a value containing a 
		token starting with [RD-SG], we make sure that attribute 
		ism:atomicEnergyMarkings also contains the token [RD].
	</sch:p>
	<sch:rule context="*[$ISM_CAPCO_RESOURCE
	                    and util:containsAnyTokenMatching(@ism:atomicEnergyMarkings, ('^RD-SG'))]">
		<sch:assert 
			test="util:containsAnyOfTheTokens(@ism:atomicEnergyMarkings, ('RD'))" 
			flag="error">
			[ISM-ID-00183][Error] If ISM_CAPCO_RESOURCE and attribute 
      atomicEnergyMarkings contains a name token starting with [RD-SG],
      then it must also contain the name token [RD].
		</sch:assert>
	</sch:rule>
</sch:pattern>