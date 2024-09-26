| v es gapLineShape vGap hGap hGapTo |
v := RTView new.

es := (RTEllipse new size: 12) elementsOn: (1 to: 10).
v addAll: es.

RTEdgeBuilder new
	view: v;
	elements: es;
	connectFrom: [ :value | value // 2 ].

RTTreeLayout new
	verticalGap: 40;
	horizontalGap: 60;
	on: es.

gapLineShape := RTLine new color: Color black.

vGap := gapLineShape edgeFrom: (es elementFromModel: 8) to: (es elementFromModel: 9).
v add: vGap.
vGap @ (RTLabelled new below; text: 'horizontalGap: 60').

hGapTo := (RTEllipse new color: Color red; size: 0) element.
v add: hGapTo.
hGapTo translateTo: (es first position x) @ (es elementFromModel: 2) position y.

hGap := gapLineShape edgeFrom: es first to: hGapTo.
v add: hGap.
hGap @ (RTLabelled new right; text: 'verticalGap: 40').

^ v
