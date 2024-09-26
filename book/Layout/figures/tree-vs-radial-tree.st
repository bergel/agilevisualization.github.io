| v elsBuilder g |
v := RTView new.

elsBuilder := [ | es |
	es := (RTEllipse new size: 12) elementsOn: (1 to: 40).
	v addAll: es.

	RTEdgeBuilder new
		view: v;
		elements: es;
		connectFrom: [ :value | value // 2 ].

	RTMetricNormalizer new
		elements: es;
		normalizeColor: #yourself using: (Array with: Color red with: Color green).
	es
].

g := RTGroup with: elsBuilder value with: elsBuilder value with: elsBuilder value.

RTTreeLayout new on: g first.
RTHorizontalTreeLayout new on: g second.
RTRadialTreeLayout new on: g third.

RTRectanglePackLayout new gap: 0.1; on: g.
^ v
