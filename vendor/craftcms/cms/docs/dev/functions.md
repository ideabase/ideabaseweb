# Functions

In addition to the template functions that [Twig comes with](https://twig.symfony.com/doc/functions/index.html), Craft provides a few of its own:


## `alias( string )`

Passes a string through [Craft::getAlias()](api:yii\BaseYii::getAlias()), which will check if the string begins with an [alias](https://www.yiiframework.com/doc/guide/2.0/en/concept-aliases). (See [Configuration](../config/README.md#aliases) for more info.)

```twig
<img src="{{ alias('@assetBaseUrl/images/logo.png') }}">
```

## `beginBody()`

Outputs any scripts and styles that were registered for the “begin body” position. It should be placed right after your `<body>` tag.

```twig
<body>
    {{ beginBody() }}

    <h1>{{ page.name }}</h1>
    {{ page.body }}
</body>
```

## `ceil( num )`

Rounds a number up.

```twig
{{ ceil(42.1) }} → 43
```

## `className( object )`

Returns the fully qualified class name of a given object.

## `clone( object )`

Clones a given object.

```twig
{% set query = craft.entries.section('news') %}
{% set articles = clone(query).type('articles') %}
```

## `csrfInput()`

Returns a hidden CSRF Token input. All sites that have CSRF Protection enabled must include this in each form that submits via POST.

```twig
<form method="post">
    {{ csrfInput() }}
    <!-- ... -->
</form>
```

## `endBody()`

Outputs any scripts and styles that were registered for the “end body” position. It should be placed right before your `</body>` tag.

```twig
<body>
    <h1>{{ page.name }}</h1>
    {{ page.body }}

    {{ endBody() }}
</body>
```

## `floor( num )`

Rounds a number down.

```twig
{{ floor(42.9) }} → 42
```

## `getenv( name )`

Returns the value of an environment variable.

```twig
{{ getenv('MAPS_API_KEY') }}
```

## `head()`

Outputs any scripts and styles that were registered for the “head” position. It should be placed right before your `</head>` tag. 

```twig
<head>
    <title>{{ siteName }}</title>
    {{ head() }}
</head>
```

## `redirectInput( url )`

Shortcut for typing `<input type="hidden" name="redirect" value="{{ url|hash }}">`.

## `round( num )`

Rounds off a number to the closest integer.

```twig
{{ round(42.1) }} → 42
{{ round(42.9) }} → 43
```

## `seq( name, length, next )`

Outputs the next or current number in a sequence, defined by `name`:

```twig
<p>This entry has been read {{ seq('hits:' ~ entry.id) }} times.</p>
```

Each time the function is called, the given sequence will be automatically incremented.

You can optionally have the number be zero-padded to a certain length.

```twig
{{ now|date('Y') ~ '-' ~ seq('orderNumber:' ~ now|date('Y'), 5) }}
{# outputs: 2018-00001 #}
```

To view the current number in the sequence without incrementing it, set the `next` argument to `false`.

```twig
<h5><a href="{{ entry.url }}">{{ entry.title }}</a></h5>
<p>{{ seq('hits:' ~ entry.id, next=false) }} views</p>
```

## `shuffle( array )`

Randomizes the order of the elements within an array.

```twig
{% set promos = shuffle(homepage.promos) %}

{% for promo in promos %}
    <div class="promo {{ promo.slug }}">
        <h3>{{ promo.title }}</h3>
        <p>{{ promo.description }}</p>
        <a class="cta" href="{{ promo.ctaUrl }}">{{ promo.ctaLabel }}</a>
    </div>
{% endfor %}
```

## `siteUrl( path, params, scheme, siteId )`

Similar to [url()](#url-path-params-protocol-mustshowscriptname), except _only_ for creating URLs to pages on your site.

```twig
<a href="{{ siteUrl('company/contact') }}">Contact Us</a>
```

### Arguments

The `siteUrl()` function has the following arguments:

* **`path`** – The path that the resulting URL should point to on your site. It will be appended to your base site URL.
* **`params`** – Any query string parameters that should be appended to the URL. This can be either a string (e.g. `'foo=1&bar=2'`) or an object (e.g. `{foo:'1', bar:'2'}`).
* **`scheme`** – Which scheme the URL should use (`'http'` or `'https'`). The default value depends on whether the current request is served over SSL or not. If not, then the scheme in your Site URL will be used; if so, then `https` will be used.
* **`siteId`** – The ID of the site that the URL should point to. By default the current site will be used.

## `svg( svg, sanitize )`

Outputs an SVG document, sanitized of potentially malicious scripts.

::: tip
Any `id` attributes within the SVG will automatically be namespaced, to prevent conflicts with other `id` attributes in the DOM. If that’s not desired, you can save your SVG file inside your `templates/` folder and load it with an [include](https://twig.symfony.com/doc/2.x/tags/include.html) tag instead.

```twig
{% include "_includes/sprites.svg" %}
```
:::

### Arguments

The `svg()` function has the following arguments:

- **`svg`** – The SVG file path, an SVG file’s contents, or an <api:craft\elements\Asset> object that represents an SVG file.
- **`sanitize`** – Whether the SVG should be sanitized of any potentially malicious scripts (`true` by default).

```twig
{# file path #}
{{ svg('@webroot/path/to/file.svg') }}

{# file contents #}
{{ svg('<svg ... />') }}

{# asset #}
{{ svg(entry.myAssetsField.one()) }}
```

## `url( path, params, scheme, mustShowScriptName )`

Returns a URL.

```twig
<a href="{{ url('company/contact') }}">Contact Us</a>
```

### Arguments

The `url()` function has the following arguments:

* **`path`** – The path that the resulting URL should point to on your site. It will be appended to your base site URL.
* **`params`** – Any query string parameters that should be appended to the URL. This can be either a string (e.g. `'foo=1&bar=2'`) or an object (e.g. `{foo:'1', bar:'2'}`).
* **`scheme`** – Which scheme the URL should use (`'http'` or `'https'`). The default value depends on whether the current request is served over SSL or not. If not, then the scheme in your Site URL will be used; if so, then `https` will be used.
* **`mustShowScriptName`** – If this is set to `true`, then the URL returned will include “index.php”, disregarding the <config:omitScriptNameInUrls> config setting. (This can be useful if the URL will be used by POST requests over Ajax, where the URL will not be shown in the browser’s address bar, and you want to avoid a possible collision with your site’s .htaccess file redirect.)

::: tip
You can use the `url()` function for appending query string parameters and/or enforcing a scheme on an absolute URL:
```twig
{{ url('http://my-project.com', 'foo=1', 'https') }}
{# Outputs: "https://my-project.com?foo=1" #}
```
:::
