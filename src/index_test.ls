require! {
# ---------------------------------------------------------------------- Own STD
	'tester'
# ------------------------------------------------------------------------ Input
	renderer: './'
}

{Logger} = tester.logger
$logger = Logger!


# Rendering --------------------------------------------------------------------

$logger.separator 'Renderer'
$logger.on!


content = {
	'Section 1': [
		'My 1st paragraph'
		[
			'A'
			[
				'super'
				'nested'
			]
			'list'
		]
	]
	'Section 2':
		'Section 2.1': [
			'My 2nd paragraph'
		]
}
$logger.log content
$logger.fail -> renderer.renderer.Renderer!render 'A simple string'

url = ['https://github.com/ymeine/renderer())' 'renderer' 'renderer repository']
link = ['Page_name' 'Page title' 'Page tooltip']

# Markdown ---------------------------------------------------------------------

$logger.separator 'Markdown'
$logger.on!

markdown = renderer.md.Markdown!

$logger.delimiter!
$logger.logStr markdown.render content
$logger.delimiter!

$logger.log markdown.url.apply markdown, url
$logger.fail -> markdown.link.apply markdown, link

$logger.log markdown.italic 'text'
$logger.log markdown.bold 'text'
$logger.log markdown.emphase 'text'
$logger.log markdown.emphase 'text' {+i}
$logger.log markdown.emphase 'text' {+b}
$logger.log markdown.emphase 'text' {+b, +i}

$logger.delimiter!
$logger.logStr markdown.list ['1' ['2.1' '2.2'] '3'] yes
$logger.delimiter!

# MediaWiki --------------------------------------------------------------------

$logger.separator 'MediaWiki'
$logger.on!

mediawiki = renderer.mw.MediaWiki!

$logger.delimiter!
$logger.logStr mediawiki.render content
$logger.delimiter!

$logger.log mediawiki.url.apply mediawiki, url
$logger.log mediawiki.link.apply mediawiki, link

$logger.log mediawiki.italic 'text'
$logger.log mediawiki.bold 'text'
$logger.log mediawiki.emphase 'text'
$logger.log mediawiki.emphase 'text' {+i}
$logger.log mediawiki.emphase 'text' {+b}
$logger.log mediawiki.emphase 'text' {+b, +i}

$logger.delimiter!
$logger.logStr mediawiki.list ['1' ['2.1' '2.2'] '3'] yes
$logger.delimiter!
