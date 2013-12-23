A collection of renderers. A renderer outputs text from objects containing its structural representation.

# Introduction

Please have a look at the different files in [`src`](./src) for documentation: each folder has its own documentation, and can drive you through the other folders.

# File system layout

* [`README.md`](./README.md): this current file
* [`.gitignore`](./.gitignore): Git related file
* [`package.json`](./package.json): npm package definition
* `node_modules`: 3rd party libraries installed through npm

## Folders

* [`src`](./src): sources of the project

# Versioning

To ignore:

* `node_modules`: generated from [`package.json`](./package.json)

# Contribute

## Development

See [issues](https://github.com/ymeine/renderer/issues).

# Brainstorming

## This library has not a good approach

This library was born to serve simple purposes, and is intended to be simple to implement, and simple to use. And also to make things simple.

But why is that (currently) a bad approach? It currently use a structural - understand graph - abstract representation of a text, and directly outputs it to some text format. This generated text is intended to be later on parsed, which means will generate a graph, same kind of things we had at the beginning. Then it will again be converted to text to reiterate other transformations, or used directly.

It is in general more clever to have a specific structural (graph) representation for each format of output, and then use them for actual output generation.

To sum up: `generic graph ↦ specific graph ↦ text output` is better than `generic graph ↦ text output`
