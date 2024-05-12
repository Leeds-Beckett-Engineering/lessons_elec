# Pandoc Conversions of Lessons in Electric Circuits

## Overview

This directory holds the 'raw' Pandoc conversions of the original source (which can be found in the ['`src`'](../src) directory of the repository root). The files in this directory aim to be as faithful to the original sources: both in name, format, structure, and content. The main difference being a move from the original [SubML](https://www.ibiblio.org/kuphaldt/electricCircuits/Devel/markup.html) to [the Pandoc dialect of Markdown](https://pandoc.org/MANUAL.html#pandocs-markdown). Citations have also been changed to use the BibTeX bibliography ['`LEC.bib`'](../bib/LEC.bib), under the ['`bib`'](../bib) directory in the repository root.

For convenience, the standard `Rakefile` can/will also build all of the content in this directory. However the aim is for these files to be 'portable', with minimal dependencies on the Leeds Beckett standard build environment. In all cases the orginal license below applies to all source material.

> Copyright (C) 2000-2023, Tony R. Kuphaldt

> These books and all related files are published under the terms and conditions of the Creative Commons License. These terms and conditions allow for free copying, distribution, and/or modification of this document by the general public.

> A copy of the Creative Commons License is included at the end of each book volume. For more information about the License, see Appendix A3

> As an open and collaboratively developed text, this book is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the Creative Commons License for more details.

## Changes

The majority of files have been converted, and checked, using [Kate](https://apps.kde.org/en-gb/kate/): mostly for ease of project management and its excellent find/replace support. A full list of changes is given below

- _Use BibTeX for citations_. `\[\\\[(\w+)\\]]\(\#(\w+)\.bibitem\)` -> `@\1`
