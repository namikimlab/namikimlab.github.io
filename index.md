---
layout: default
title: Home
---

<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
  <div class="flex items-center bg-[#fbfaf9] py-4 pb-2 justify-between">
    <h2 class="text-[#191610] text-lg font-bold leading-tight tracking-[-0.015em] flex-1 text-center">Featured Projects</h2>
  </div>

  <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 py-6">
    {% assign featured_projects = site.projects | where: "featured", true | where: "visible", true | sort: "date" | reverse | limit: 6 %}
    {% for project in featured_projects %}
    <a href="{{ project.url }}" class="block bg-white rounded-xl overflow-hidden shadow-sm hover:shadow-md transition-shadow duration-300 focus:outline-none focus:ring-2 focus:ring-accent">
      <div class="aspect-video w-full bg-cover bg-center" style="background-image: url('{{ project.image }}')"></div>
      <div class="p-4">
        <h3 class="text-[#191610] text-lg font-bold leading-tight mb-2">{{ project.title }}</h3>
        <p class="text-[#8c7f5a] text-sm leading-normal mb-4">{{ project.description }}</p>
        <div class="flex flex-wrap gap-2">
          {% for tag in project.tags %}
          <span class="text-[#191610] text-xs font-medium bg-[#f1efe9] px-3 py-1 rounded-full">{{ tag }}</span>
          {% endfor %}
        </div>
      </div>
    </a>
    {% endfor %}
  </div>
</div>

<div class="h-20"></div>

<div class="fixed bottom-0 left-0 right-0">
  <div class="flex gap-2 border-t border-[#f1efe9] bg-[#fbfaf9] px-4 pb-3 pt-2">
    <a class="flex flex-1 flex-col items-center justify-end gap-1 text-[#191610]" href="/">
      <div class="text-[#191610] flex h-8 items-center justify-center">
        <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" fill="currentColor" viewBox="0 0 256 256">
          <path d="M224,115.55V208a16,16,0,0,1-16,16H168a16,16,0,0,1-16-16V168a8,8,0,0,0-8-8H112a8,8,0,0,0-8,8v40a16,16,0,0,1-16,16H48a16,16,0,0,1-16-16V115.55a16,16,0,0,1,5.17-11.78l80-75.48.11-.11a16,16,0,0,1,21.53,0,1.14,1.14,0,0,0,.11.11l80,75.48A16,16,0,0,1,224,115.55Z"></path>
        </svg>
      </div>
    </a>
    <a class="flex flex-1 flex-col items-center justify-end gap-1 text-[#8c7f5a]" href="/projects">
      <div class="text-[#8c7f5a] flex h-8 items-center justify-center">
        <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" fill="currentColor" viewBox="0 0 256 256">
          <path d="M216,56H176V48a24,24,0,0,0-24-24H104A24,24,0,0,0,80,48v8H40A16,16,0,0,0,24,72V200a16,16,0,0,0,16,16H216a16,16,0,0,0,16-16V72A16,16,0,0,0,216,56ZM96,48a8,8,0,0,1,8-8h48a8,8,0,0,1,8,8v8H96ZM216,72v41.61A184,184,0,0,1,128,136a184.07,184.07,0,0,1-88-22.38V72Zm0,128H40V131.64A200.19,200.19,0,0,0,128,152a200.25,200.25,0,0,0,88-20.37V200ZM104,112a8,8,0,0,1,8-8h32a8,8,0,0,1,0,16H112A8,8,0,0,1,104,112Z"></path>
        </svg>
      </div>
    </a>
    <a class="flex flex-1 flex-col items-center justify-end gap-1 text-[#8c7f5a]" href="/about">
      <div class="text-[#8c7f5a] flex h-8 items-center justify-center">
        <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" fill="currentColor" viewBox="0 0 256 256">
          <path d="M230.92,212c-15.23-26.33-38.7-45.21-66.09-54.16a72,72,0,1,0-73.66,0C63.78,166.78,40.31,185.66,25.08,212a8,8,0,1,0,13.85,8c18.84-32.56,52.14-52,89.07-52s70.23,19.44,89.07,52a8,8,0,1,0,13.85-8ZM72,96a56,56,0,1,1,56,56A56.06,56.06,0,0,1,72,96Z"></path>
        </svg>
      </div>
    </a>
  </div>
  <div class="h-5 bg-[#fbfaf9]"></div>
</div>


