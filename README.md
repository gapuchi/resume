# Resume

This repo generates my resume. My resume is written in Latex, which is then used to generate the final PDF.

I use Nix Flakes to handle my dependencies and packaging. `flake.nix` contains devShell where it has latex dependencies installed and also a packaging that is used to build my PDF via `nix build`. I use the same packaging in my GitHub Actions to generate the PDF and create a release with the PDF uploaded.

Check out the [Releases](https://github.com/gapuchi/resume/releases/latest/download/resume.pdf) for my latest resume.
