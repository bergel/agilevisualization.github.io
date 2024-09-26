| view elements |
view := RTView new.
elements := RTEllipse new size: 15;
	elementsOn: (1 to: 20).
view addAll: elements.
RTCircleLayout new
	scaleBy: 3;
	on: elements.
^ view
