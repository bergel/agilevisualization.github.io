| view elements sizes |
view := RTView new.
sizes := #(21 84 61 36 39 61 1 93 94 65).
elements := RTEllipse new
	borderColor: Color black;
	size: [ :m | sizes at: m ];
	elementsOn: (1 to: 10).
view addAll: elements.
RTEquidistantCircleLayout new on: elements.
^ view
