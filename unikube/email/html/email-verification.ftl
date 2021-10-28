<#import "template.ftl" as layout>
<@layout.emailLayout; section>
    <#if section = "heading">
        Email Verification
    <#elseif section = "text">
        ${kcSanitize(msg("emailVerificationBodyHtml",link, linkExpiration, realmName, linkExpirationFormatter(linkExpiration)))?no_esc}
    <#elseif section = "greetings">
        kind regards, <br>
        Hannes, Michael and Robert
    </#if>
</@layout.emailLayout>
