<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="h-full bg-white dark:bg-gray-900">
  <head>
    <meta charset="UTF-8" />
    <title>YT-Downloader</title>
     <link rel="icon" href="https://upload.wikimedia.org/wikipedia/commons/e/ef/Youtube_logo.png" type="image/png" />
	<link rel="stylesheet" href="style/selectFormat.css">
  </head>

  <body class="h-full dark:bg-gray-900">
    <div class="bg-gray-50 antialiased dark:bg-gray-900">
      <header class="body-font border-b border-gray-200 text-gray-700 dark:bg-gray-900">
        <div class="container mx-auto flex flex-col flex-wrap items-center p-5 md:flex-row">
          <a class="title-font mb-4 flex items-center font-medium text-gray-900 md:mb-0" href="../index.jsp" target="_blank">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="h-10 w-10 rounded-full bg-red-500 p-2 text-white" viewBox="0 0 24 24">
              <path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"></path>
            </svg>
            <span class="ml-3 text-xl dark:text-white">YouTube Downloader </span>
          </a>
        </div>
      </header> <br>
      <section class="body-font text-gray-700 dark:bg-gray-900">
        <div class="grid place-items-center">
          <div class="aspect-w-16 aspect-h-9">
            <iframe src="https://www.youtube.com/embed/<%=request.getParameter("id") %>" width="640" height="360" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
          </div>
        </div>
      </section>
      <br />
      <form class="mx-auto max-w-sm" action="../download" method="POST">
        <label for="format" class="mb-2 block text-sm font-medium text-gray-900 dark:text-white">Select your format</label>
        <select id="format" name="format" class="block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-sm text-gray-900 focus:border-blue-500 focus:ring-blue-500 dark:border-gray-600 dark:bg-gray-700 dark:text-white dark:placeholder-gray-400 dark:focus:border-blue-500 dark:focus:ring-blue-500">
          <option selected>MP3</option>
          <option>MP4</option>
          <option disabled>More coming soon...</option>
        </select>
        <br />
        <div class="grid place-items-center">
        <input type="hidden" id="id" name="id" value="<%=request.getParameter("id") %>" >
        <button type="submit" class="rounded-lg bg-red-700 px-4 py-2 text-sm font-medium text-white hover:bg-red-800 focus:outline-none focus:ring-4 focus:ring-red-300 dark:bg-red-600 dark:hover:bg-red-700 dark:focus:ring-red-800">Download</button></div>
      </form>
      <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    </div>
  </body>
</html>
