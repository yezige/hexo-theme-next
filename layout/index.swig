{% extends '_layout.swig' %}
{% import '_macro/sidebar.swig' as sidebar_template with context %}

{% block title %}{{ title }}{%- if theme.index_with_subtitle and subtitle %} - {{ subtitle }}{%- endif %}{% endblock %}

{% block class %}index posts-expand{% endblock %}

{% block content %}

  {%- for post in page.posts.toArray() %}
    {{ partial('_macro/post.swig', {post: post, is_index: true}) }}

    {# 首页-列表 #}
    {%- if loop.index === 2 %}
      <div class="post-block home" style="opacity: 1; display: block;">
        {{ partial('_customs/adsbygoogle.swig', {format: 'fluid', layout_key: '-e7+6j+35-my+tc', slot: '5652594154'}) }}
      </div>
    {%- endif %}
    {# 首页-列表2 #}
    {%- if loop.index === 5 %}
      <div class="post-block home" style="opacity: 1; display: block;">
        {{ partial('_customs/adsbygoogle.swig', {format: 'fluid', layout_key: '-e7+6j+35-my+tc', slot: '4283123420'}) }}
      </div>
    {%- endif %}
  {%- endfor %}

  {% include '_partials/pagination.swig' %}

{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}
