| v es center radius increment arrowShape initial initialAngle layout rad |
v := RTView new.
v @ RTZoomableView  @ RTDraggableView.

arrowShape := RTArrowedLine new." color: color black."


es := (RTEllipse new size: 12) elementsOn: (1 to: 10).
v addAll: es.
es @ RTLabelled new center.

center := (RTEllipse new color: Color black; size: 5) element.
center model: 'center at radius@radius'.
v add: center.
center @ RTLabelled.

radius := (arrowShape edgeFrom: center to: es fifth).
radius model: 'initialRadius: 200'.
v add: radius.
radius @ RTLabelled.

increment := (arrowShape edgeFrom: es first to: es second).
increment model: 'initialIncrementalAngle: 30 degreesToRadians'.
v add: increment.
increment @ RTLabelled.

initial := (RTEllipse new color: Color black; size: 2) elementOn: '0 degrees'.
v add: initial.
initial translateTo: 400 @ 200.
initial @ RTLabelled.

initialAngle := (arrowShape edgeFrom: initial to: es first) model: 'initialIncrementalAngle: 15 degreesToRadians'.
v add: initialAngle.
initialAngle @ RTLabelled.

layout := RTCircleLayout new
	initialIncrementalAngle: 30 degreesToRadians;
	initialAngle: 15 degreesToRadians;
	initialRadius: 200;
	on: es;
	yourself.

rad := layout computeRadiusFor: es.
center translateTo: rad @ rad.

v
