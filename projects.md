---
layout: default
title: Projects
permalink: /projects/
---

<div class="max-w-2xl mx-auto px-4 sm:px-6 lg:px-8">
  <div class="flex items-center bg-[#fbfaf9] py-4 pb-2 justify-between">
    <h2 class="text-[#191610] text-lg font-bold leading-tight tracking-[-0.015em] flex-1 text-center">Projects</h2>
  </div>

  <div class="flex flex-col gap-6 py-6">
    {% assign all_projects = site.projects | sort: 'order' %}
    {% for project in all_projects %}
    <div class="bg-white rounded-xl overflow-hidden shadow-sm hover:shadow-md transition-shadow duration-300">
      {% if project.image %}
      <div class="aspect-video w-full bg-cover bg-center" style="background-image: url('{{ project.image }}')"></div>
      {% endif %}
      <div class="p-4">
        <h3 class="text-[#191610] text-lg font-bold leading-tight mb-2">
          <a href="{{ project.url }}" class="hover:underline">{{ project.title }}</a>
        </h3>
        <p class="text-[#8c7f5a] text-sm leading-normal mb-4">{{ project.description }}</p>
        <div class="flex flex-wrap gap-2">
          {% for tag in project.tags %}
          <span class="text-[#191610] text-xs font-medium bg-[#f1efe9] px-3 py-1 rounded-full">{{ tag }}</span>
          {% endfor %}
        </div>
      </div>
    </div>
    {% endfor %}
  </div>
</div>

<div class="h-20"></div> 