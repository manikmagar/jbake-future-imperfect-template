<header>
    <div class="title">
        <h1>${post.title}</h1>
       	<#if (post.description?has_content)>
            <p>${post.description}</p>
        </#if>
    </div>
   <!-- <div class="meta">
         <time class="published"
            datetime='${post.date?string("MMM dd, yyyy")}'>
            ${post.date?string("MMM dd, yyyy")}</time>
    </div> -->
</header>
