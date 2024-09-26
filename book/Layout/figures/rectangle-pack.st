| v |
v := RTView new.
v addAll: ((RTEllipse new color: (Color red alpha: 0.3)) elementsOn: Collection withAllSubclasses) @ RTPopup.
RTMetricNormalizer new
	elements: v elements;
	normalizeSize: #numberOfLinesOfCode min: 10 max: 60;
	normalizeColor: #numberOfMethods using: (Array with: Color gray with: Color red ).
RTRectanglePackLayout on: v elements.
	^ v
