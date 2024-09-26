| view edges colorize es |
view := RTView new.
view @ RTDraggableView  @ RTZoomableView.

es := (RTEllipse new size: 12) elementsOn: (4 to: 100).
view addAll: es.

edges := RTGroup new.
es copy do: [ :e |
    | fromE |
    fromE := es elementFromModel: (e model // 2).
    fromE ifNotNil: [ edges add: (RTLine edgeFrom: fromE to: e) ].
].
view addAll: edges.

colorize := nil.
colorize := [ :root :color |
    root outgoingEdges do: [ :edge |
        edge shape color: color.
        edge signalUpdate.
        colorize value: edge to value: color.
    ].
].

colorize value: es first value: Color red.
colorize value: es second value: Color green.
colorize value: es third value: Color blue.
colorize value: es fourth value: Color orange.

RTClusterLayout new on: es.
view
