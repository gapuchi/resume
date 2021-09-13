# Resume

This repo generates my resume, by running a workflow using the [dhall-to-resume crate](https://crates.io/crates/dhall-to-resume). The Dhall config file present in this repo is passed to the `dhall-to-resume` binary, which generates a LaTex file. [github-action-for-latex](https://github.com/marketplace/actions/github-action-for-latex) compiles the generated latex file to a PDF. Both the LaTex and PDF files are uploaded as assets to this repo's releases.

To check out my latest Resume, checkout the [Releases](https://github.com/gapuchi/resume/releases).