# Resume

This repo generates my resume, using [JSON Resume standard](https://jsonresume.org/). It does two things:

1. Generates a PDF.
1. Updates my resume website.

## PDF Generation

A workflow uses the [jsonresume-renderer](https://crates.io/crates/jsonresume-renderer). The JSON resume file and LaTex template file present in this repo are passed to the `jsonresume-renderer` binary, which generates a LaTex file. [github-action-for-latex](https://github.com/marketplace/actions/github-action-for-latex) compiles the generated latex file to a PDF. Both the LaTex and PDF files are uploaded as assets to this repo's releases.

Check out the [Releases](https://github.com/gapuchi/resume/releases) for my latest resume.

## Website

A workflow pushes my `resume.json` to a public Github Gist, which is then rendered by [JSON Resume](https://jsonresume.org/getting-started/).

Check out my [resume website](https://registry.jsonresume.org/gapuchi).