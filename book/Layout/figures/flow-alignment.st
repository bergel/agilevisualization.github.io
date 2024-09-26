| es v shape |
v := RTView new.

shape := RTCompositeShape new.
shape add: RTLabel new.
shape add: (RTBox new
	color: Color transparent; borderColor: Color black).
es := RTGroup
	with: (shape elementOn: #alignTop)
	with: (shape elementOn: #alignCenter)
	with: (shape elementOn: #alignBottom).
v addAll: es.

RTNest new
	for: es
	inShape: #second
	add: [ :group :alignment |
		group addAll: ((RTBox new size: [:m | 2 ** m])
			elementsOn: (4 to: 5)).
		((RTFlowLayout new) perform: alignment); on: group.
	].

RTHorizontalLineLayout new gapSize: 10; on: es.

v
