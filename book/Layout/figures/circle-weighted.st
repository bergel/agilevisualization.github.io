|v elements es|
v := RTView new.
elements := (RTEllipse new color: Color red; size: [:vv | vv * 4 ]) elementsOn: (1 to: 10).
v addAll: elements.
RTEquidistantCircleLayout on: elements.
elements translateBy: -150 @ 0.
v add: ((RTLabel new elementOn: 'Equidistant Layout') translateTo: -40 @ 100).

es := (RTEllipse new color: Color blue; size: [:vv | vv * 4 ]) elementsOn: (1 to: 10).
v addAll: es.
RTWeightedCircleLayout on: es.
es translateBy: 150 @ 0.
v add: ((RTLabel new elementOn: 'Weighted Layout') translateTo: 260 @ 100).
v
