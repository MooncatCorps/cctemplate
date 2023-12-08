# CC Template

CCTemplate is a template that functions as a base for MooncatCorps
C++ based projects.

It provides a solid base for C++ based projects which conform to the
following structure (Mooncat Standard):

```
Project
├── CMakeLists.txt
├── README.md   
└── src                         <- Base Dir
    ├── main.cc                 <- Main Source File
    ├── project                 <- General Project Properties
    │   ├── project.hh
    │   └── project.hh.in
    └── project_name            <- Sub-Directory Named After the Project
        ├── headers.hh
        ├── sources.cc
        └── subidrs             <- Organization
            ├── headers.hh
            └── sources.cc
```

## Tooling

Items such as lsp configurations, linters, formatters etc can be found in the
[Mooncat Standard Tools](https://github.com/MooncatCorps/mooncat-standard-tools)
repository.

