<#import "template.ftl" as layout>
<@layout.emailLayout; section>
    <#if section = "heading">
        Link Account
    <#elseif section = "text">
        ${kcSanitize(msg("identityProviderLinkBodyHtml", identityProviderAlias, realmName, identityProviderContext.username, link, linkExpiration, linkExpirationFormatter(linkExpiration)))?no_esc}
    <#elseif section = "greetings">
        kind regards, <br>
        Hannes, Michael and Robert
    </#if>
</@layout.emailLayout>
