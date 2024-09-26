| v es |
v := RTView new.

es := (RTEllipse new size: 12) elementsOn: (1 to: 10).
v addAll: es.
es @ RTLabelled.

RTMetricNormalizer new elements: es; normalizeColor: #yourself using: (Array with: Color red with: Color lightRed).

RTEdgeBuilder new
	view: v;
	elements: es;
	connectFrom: [ :value | value // 2 ].

RTCircleLayout new
	on: es.
^ v
