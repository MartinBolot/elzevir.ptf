exports.glyphs['guilsinglleft'] =
	unicode: '‹'
	glyphName: 'guilsinglleft'
	characterName: 'SINGLE LEFT-POINTING ANGLE QUOTATION MARK'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 20 * spacing
		spacingRight: 45 * spacing
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
					x: Math.max(
						40 + 200 * width,
						contours[0].nodes[1].x + ((( 80 / 90 ) * thickness) * (Math.cos( Math.PI * 22 / 180)) ) + 40
					) + (2)
					y: 35 + (2)
					typeOut: 'line'
					expand: Object({
						width: ( 14 / 90 ) * thickness * contrast
						angle: 45 + 'deg'
						distr: 0
					})
				1:
					x: spacingLeft
					y: contours[0].nodes[0].expandedTo[0].y + ( contours[0].nodes[5].expandedTo[0].y - contours[0].nodes[0].expandedTo[0].y ) * 0.5 - ( 5 / 90 ) * thickness
					typeOut: 'line'
					expand: Object({
						width: ( 80 / 90 ) * thickness
						angle: 22 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 10 / 90 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				3:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: ( 10 / 90 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[3].expandedTo[0].x
					y: contours[0].nodes[3].expandedTo[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 80 / 90 ) * thickness
						angle: - 22 + 'deg'
						distr: 0
					})
				5:
					x: contours[0].nodes[0].expandedTo[0].x
					y: xHeight - 35 - (2)
					expand: Object({
						width: ( 14 / 90 ) * thickness * contrast
						angle: - 45 + 'deg'
						distr: 0.25
					})
