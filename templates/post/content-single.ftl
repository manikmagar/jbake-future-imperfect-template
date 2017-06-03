<article class="post">
   <#include "header.ftl">

    
     <#include "../commons/featured.ftl">
     
    <div id="content">
       ${post.body}
    </div>
	
	<section id="social-share">
        <ul class="icons">
        	<#include "../commons/share-links.ftl">
        </ul>
    </section>
     

    <footer>
    	<#include "../commons/footer-tags.ftl">
    	
    </footer>
</article>
