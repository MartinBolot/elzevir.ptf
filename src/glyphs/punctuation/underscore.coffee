exports.glyphs['underscore'] =
	unicode: '_'
	glyphName: 'underscore'
	characterName: 'LOW LINE'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 5 * spacing
		spacingRight: 5 * spacing
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: - 100
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 70 / 90 ) * thickness
						angle: 90 + 'deg'
						distr: 0.5
					})
				1:
					x: 400 + 200 * width
					y: contours[0].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 70 / 90 ) * thickness
						angle: 90 + 'deg'
						distr: 0.5
					})
