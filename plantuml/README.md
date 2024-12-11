# MateMate Dependency Graph

This directory contains a plantuml diagram that documents the requirements of the `MateMate` chess playing application. PlantUML [class diagrams](https://plantuml.com/class-diagram) are abused for this purpose.

The application must be separated into "technical" and "application" (also known as domain) concerns; in this case the "application" is the game of chess and its rules, and the "technical" part consists of the input/output and graphics subsystems. This separation of concerns is intended to ease development and maximise maintainability.

The dependency graph is organized such that all dependencies flow from top to bottom. This improves readability and makes it immediately apparent that there are no cycles in the dependency graph.

[Diagram](mate-mate-dependency-graph.pdf)
