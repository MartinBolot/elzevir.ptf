exports.glyphs['f'] =
	unicode: 'f'
	glyphName: 'f'
	characterName: 'LATIN SMALL LETTER F'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 45 * spacing
		spacingRight: 5 * spacing + ( serifWidth - 75 )
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[2].nodes[0].x + 75 * width + (22)
					y: 0 + serifHeight + serifCurve
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: contours[2].nodes[0].expandedTo[0].y
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					# x: contours[0].nodes[0].expandedTo[0].x + 5
					# y: xHeight + ( 30 / 700 ) * ascenderHeight
					# dirOut: 90 + 'deg'
					# expand: Object({
					# 	width: ( 87 / 90 ) * thickness
					# 	angle: - 13 + 'deg'
					# 	distr: 0
					# })
					expandedTo:
						[
							{
								x: contours[0].nodes[0].expandedTo[0].x + ( 5 / 90 ) * thickness
								y: contours[0].nodes[2].expandedTo[1].y + ( 20 / 90 ) * thickness
								type: 'smooth'
							},
							{
								x: contours[0].nodes[0].expandedTo[1].x
								y: Math.max(
									contours[2].nodes[0].expandedTo[0].y + ( 10 / 220 ) * ascenderHeight,
									contours[0].nodes[3].expandedTo[0].y - 210
								)
								dirIn: 90 + 'deg'
							}
						]
				3:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.65
					y: ascenderHeight
					dirIn: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 32 / 90 ) * thickness
						angle: - 141 + 'deg'
						distr: 0
					})
				4:
					x: Math.min(
						contours[0].nodes[2].expandedTo[1].x + 150 * width,
						160 + 200 * width
					) + (26)
					y: ascenderHeight - Math.max(
						( 55 / 700 ) * ascenderHeight,
						( ( 55 / 90 ) * thickness / 700 ) * ascenderHeight
					) - (3)
					dirIn: 95 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 85 / 90 ) * thickness
						angle: 180 + 'deg'
						distr: 0.75
					})
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[4].expandedTo[1].x
					y: contours[0].nodes[4].expandedTo[1].y
					dirOut: - 85 + 'deg'
				1:
					x: contours[0].nodes[4].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[4].expandedTo[1].x ) * ( 45 / 85 )
					y: contours[0].nodes[4].expandedTo[0].y - ( contours[0].nodes[4].expandedTo[0].x - contours[1].nodes[1].x )
					type: 'smooth'
					dirOut: 0 + 'deg'
				2:
					x: contours[0].nodes[4].expandedTo[0].x
					y: contours[0].nodes[4].expandedTo[0].y
					dirIn: - 90 + 'deg'
					typeOut: 'line'
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + ( serifWidth - 75 )
					y: Math.min(
						xHeight,
						contours[1].nodes[1].y - 20
					)
					typeOut: 'line'
					expand: Object({
						width: ( 35 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 135 * width
					y: contours[2].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 35 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y
				2:
					anchorLine: 0
