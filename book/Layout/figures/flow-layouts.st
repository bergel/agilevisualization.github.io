| es v shape |
v := RTView new.

shape := RTCompositeShape new.
shape add: RTLabel new.
shape add: (RTBox new
	color: Color transparent; borderColor: Color black).
es := RTGroup
	with: (shape elementOn: RTFlowLayout)
	with: (shape elementOn: RTHorizontalFlowLayout)
	with: (shape elementOn: RTGridLayout)
	with: (shape elementOn: RTCellLayout).
v addAll: es.

RTNest new
	for: es
	inShape: #second
	add: [ :group :layout |
		group addAll: ((RTBox new size: [:m | m * 10])
			elementsOn: (1 to: 6)).
		layout new on: group.
	].

RTCellLayout new gapSize: 10; on: es.

(v elements allButFirst: 4) @ (RTLabelled new
	color: Color black; center).

v
