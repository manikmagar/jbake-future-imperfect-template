<article class="post">
     <#include "header.ftl">

    <#include "../commons/featured.ftl">
    
    <p>${post.summary!''}</p>

    <footer>
        <ul class="actions">
            <li><a href="${content.rootpath}${post.noExtensionUri}" class="button big">Continue Reading</a></li>
        </ul>
        <#include "../commons/footer-tags.ftl">
    </footer>
</article>
