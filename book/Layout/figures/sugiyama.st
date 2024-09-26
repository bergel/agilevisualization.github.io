| b classes |
classes := RTLayout withAllSubclasses.
b := RTMondrian new.
b shape ellipse color: Color purple; size: 5.
b nodes: classes.
b edges connectFrom: #superclass.

b layout sugiyama.

b build.
^ b view
