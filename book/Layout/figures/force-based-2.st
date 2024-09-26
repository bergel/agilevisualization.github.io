| els colors links edges |

els := (RTEllipse new size: 10) elementsOn: (1 to: 8).
links := {
	1 -> #(2 3 5).
	4 -> #(2 3 8).
	6 -> #(2 5 8).
	7 -> #(3 5 8).
}.
colors := {
	1 -> Color red.
	4 -> Color green.
	6 -> Color blue.
	7 -> Color orange.
} asDictionary.


edges := RTGroup new.
links do: [ :pair |
	| fromE color |
	fromE := els elementFromModel: pair key.
	color := colors at: pair key.
	pair value do: [ :each |
		| toE |
		toE := els elementFromModel: each.
		edges add: (RTLine new color: color; edgeFrom: fromE to: toE).
	].
].

view
	addAll: els;
	addAll: edges.

els @ RTDraggable @ RTLabelled.

RTForceBasedLayout new
	charge: -1000;
	on: els.

view @ RTDraggableView @ RTZoomableView.
