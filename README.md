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

It is based on CMake and provides the necessary files to integrate popular
development tools (Current focus is LLVM's Clang)

### LSP, Linters and Formatters
- clangd (Handled by compile_commands.json upon running `cmake .`)
- clang-format
- clang-tidy (Soon)
- ccls (Soon)
- cquery (Soon)

### Testing
- catch
- google mock
- boost.test

### Common Library Integration (Optional, but provides quick ways to add them)
- boost

