<?xml version="1.0" encoding="utf-8"?>
<schema xmlns="http://www.ascc.net/xml/schematron">
   <title>Schematron 1.5 rules</title>
   <pattern name="rs_values">
      <rule context="tei:rs">
         <assert test="@type[.='person'] and @role">When @type='person' then @role should be given.</assert>
      </rule>
   </pattern>
   <pattern name="date_values">
      <rule context="tei:date">
         <assert test="@when or (@notAfter and @notBefore) or (@from and @to)">You must provide either @when or @to/@from, or @notAfter/@notBefore.</assert>
      </rule>
   </pattern>
   <pattern name="date_values">
      <rule context="tei:origDate">
         <assert test="@when or (@notAfter and @notBefore) or (@from and @to)">You must provide either @when or @to/@from, or @notAfter/@notBefore.</assert>
      </rule>
   </pattern>
</schema>
