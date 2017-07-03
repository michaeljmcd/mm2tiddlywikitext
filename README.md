# mm2tiddlywikitext - Scripts for creating tiddlers out of mind maps.

This is a simple script to create importable TiddlyWiki 5 tiddlers out of
FreeMind XML. The current version generates a tiddler JSON file with each map
converted to TiddlyWiki 5's wikitext, using a simple outline style.

It is also possible, of course, to export mind maps as SVGs or PNGs and
incorporate these directly into a tiddlywiki. Nothing here is of use if you
want to do that - just export the map as the image format of your choice then
drag and drop it onto the running wiki.

## Usage

The current version offers just an XSLT. You can apply it directly with XML Starlet (<http://xmlstar.sourceforge.net/>) like so:

    xmlstarlet  tr ./stylesheet.xslt /path/to/map.mm > my.json

I will hopefully be adding a wrapper script soon to simplify matters.

## Limitations

Currently, just the map structure is parsed. Icons, edges and font settings are ignored.
