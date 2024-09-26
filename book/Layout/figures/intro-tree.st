|es view|
view := RTView new.
es := (RTEllipse new size: 12; color: Color blue)
	elementsOn: (1 to: 30).
view addAll: es.

RTEdgeBuilder new
	view: view;
	elements: es;
	connectFrom: [ :value | value // 2 ].

es do: [ :each | each translateTo: (250 atRandom) @ (250 atRandom) ].

RTTreeLayout on: es.

view
