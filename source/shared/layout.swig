<!doctype html>
<html>
  <head>
    <title>{{ title }}</title>

    <!-- Styles -->
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.min.css">
    <link rel="stylesheet" href="/shared/shared_styles.css">
    {% for style in styles %}
      <link rel="stylesheet" href="{{ style }}">
    {% endfor %}
  </head>
  <body>
    <%= contents %>
  </body>
</html>
