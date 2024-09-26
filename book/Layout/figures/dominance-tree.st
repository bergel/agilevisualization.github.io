|v es edges classes|
v := RTView new.
v @ RTDraggableView @ RTZoomableView.
classes := RTShape withAllSubclasses asGroup.
es := (RTEllipse new size: 15; color: Color blue) elementsOn: classes.
v addAll: es.

edges := RTEdge 
		buildEdgesFromObjects: classes from: #yourself toAll: #dependentClasses using: (RTArrowedLine new color: Color red) scope: es.
v addAll: edges.

RTDominanceTreeLayout new
	verticalGap: 30;
	horizontalGap: 15;
	on: es.
v
