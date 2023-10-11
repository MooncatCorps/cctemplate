# CC Template

CCTemplate is a template that functions as a base for C++ based projects.

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

Tooling such as diagnostics, linters, formatters etc can be found in other
Mooncat Corps repositories such as clang-base, etc.

