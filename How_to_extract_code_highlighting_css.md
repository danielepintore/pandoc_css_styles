# How to extract css for syntax highlighting from pandoc

You have to create a simple template file that exposes only the highlighting css code:

simple.template:
```
$-- this is file highlighting-css.template
$highlighting-css$
```

Then you need to have a simple markdown file with something that can be highlighted, since pandoc will generate the highlighting css only if the documents need it

index.md:
````
```html
<p>placeholder</p>
```
````

As you can see it's a simple file that contains some html code block.

Now you have to generate the css for the highlight style that you want:

`pandoc --highlight-style=zenburn --template=simple.template index.md -o index.css`

The index.css file now has the styling for the selected highlight-style
