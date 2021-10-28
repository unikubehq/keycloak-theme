<#import "template.ftl" as layout>
<@layout.emailLayout; section>
    <#if section = "heading">
        Login Attempt
    <#elseif section = "text">
        ${kcSanitize(msg("eventLoginErrorBodyHtml",event.date,event.ipAddress))?no_esc}
    <#elseif section = "greetings">
        kind regards, <br>
        Hannes, Michael and Robert
    </#if>
</@layout.emailLayout>
