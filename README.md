# Lessons in Electric Circuits

## Overview

This repository hosts a copy of [_Lessons In Electric Circuits_](https://www.ibiblio.org/kuphaldt/electricCircuits/)) by Tony R. Kuphaldt. Currently the sources reflect the **January 18, 2010** release. All sources are made available under the terms of the '['`LICENSE`'](LICENSE.md), and as follows

> Copyright (C) 2000-2023, Tony R. Kuphaldt

> These books and all related files are published under the terms and conditions of the Creative Commons License. These terms and conditions allow for free copying, distribution, and/or modification of this document by the general public.

> A copy of the Creative Commons License is included at the end of each book volume. For more information about the License, see Appendix A3

> As an open and collaboratively developed text, this book is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the Creative Commons License for more details. 

## Significant Changes

This repository provides a conversion of the original sources into a [dialect of Markdown](https://pandoc.org/MANUAL.html#pandocs-markdown) used by the [pandoc](https://pandoc.org) document processor. On the original site, Tony Kuphaldt uses a custom markup language called [SubML](https://www.ibiblio.org/kuphaldt/electricCircuits/Devel/markup.html). Converting the original sources to [pandoc](https://pandoc.org) means that

1. Documentation can be generated for both PDF and HTML output without the complex build scripts used by the original.
2. Edits, updates and other changes can be made without learning [SubML](https://www.ibiblio.org/kuphaldt/electricCircuits/Devel/markup.html), but instead make use of the standard tooling at Leeds Beckett.

The secondary intention of using [pandoc](https://pandoc.org) is to adhere to the original authors' intent to avoid [non-free software](https://www.ibiblio.org/kuphaldt/electricCircuits/Devel/index.html) in the documentation pipeline. [pandoc](https://pandoc.org) is itself open source, and is also widely available on different platforms. Beyond the [official installation instructions](https://pandoc.org/installing.html), [Homebrew](https://docs.brew.sh/) is also strongly recommended for [macOS, Linux and WSL](https://docs.brew.sh/Installation).