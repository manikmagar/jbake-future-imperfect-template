<!DOCTYPE HTML>
<!--
    Future Imperfect by HTML5 UP
    html5up.net | @n33co
    Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <title>${config.site_title}<#if (content.title)??> - <#escape x as x?xml>${content.title}</#escape></#if></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="${content.author!config.site_author}">
    <meta name="keywords" content="">
    <meta name="generator" content="JBake">

    <link rel="stylesheet" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/google-font.css" />
    <link rel="stylesheet" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/font-awesome.min.css" />
    <link rel="stylesheet" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/main.css" />
    <link rel="stylesheet" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/add-on.css" />
    <link rel="stylesheet" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/monokai-sublime.css">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/html5shiv.min.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <!--<link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">-->
    <link rel="shortcut icon" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>img/favicon/favicon.png">
  </head>
  <body>
     <!-- Wrapper -->
        <div id="wrapper">
