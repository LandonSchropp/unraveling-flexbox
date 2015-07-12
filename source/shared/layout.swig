<!doctype html>
<html>
  <head>
    <title>{{ title }}</title>

    <!-- Styles -->
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.min.css">
    <link rel="stylesheet" href="/shared/shared_styles.css">
    {% for stylePath in styles %}
      <link rel="stylesheet" href="{{ stylePath }}" type="text/css">
    {% endfor %}
    {% for fontPath in fonts %}
      <link rel="stylesheet" href="{{ fontPath }}" type="text/css">
    {% endfor %}
  </head>
  <body>
    <%= contents %>
  </body>
</html>
