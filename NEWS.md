<!-- https://style.tidyverse.org/news.html -->

# crosstable 0.1.3 <sub><sup>(2020-06-29)</sup></sub>

## New feature

* Added support for description of `Date` variables. Format can be specified in `funs_arg` with the `date_format` key. 

## Misc

* Removed some dependencies to ease installation

# crosstable 0.1.2 <sub><sup>(2020-06-10)</sup></sub>

* Effect refactoring: better error/warning handling
* Name sanitazion: replacing "." by "_" in function names
* Better error messages
* Bug fixes

# crosstable 0.1.1 <sub><sup>(2020-06-07)</sup></sub>

## New features and behaviors

* Added `format_fixed()`, rounding with the right number of decimals (including zeros)
* Added `import_labels()`, which apply labels taken from a source dataframe (name, label) to another dataframe
* Added `margin="none"` option, to remove percentages and keep only counts
* Columns of unsupported class are dropped with a warning instead of failing with an error

## Misc

* Method `cross_to_flextable()` was deprecated and renamed `as_flextable()` ([#207]() https://github.com/davidgohel/flextable/issues/207))
* Reexporting pipes and tidyselect helpers so that user does not have to load these libraries
* Computing time optimization (speed x2.6!)
* Fixed bug in normality testing
* Fixed bug in `compact()`

# crosstable 0.1.0 <small>(2020-04-09)</small>

* First release, big changes from the [`biostat2`](https://github.com/eusebe/biostat2) package.

