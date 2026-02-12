
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rchelperfunctions

<!-- badges: start -->

<!-- badges: end -->

The goal of rchelperfunctions is to provide reusable functions for
creating tables and some additional utility functions.

## Installation

You can install the development version of rchelperfunctions from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("rosovconsulting/rchelperfunctions")
```

## Demonstration

``` r
library(rchelperfunctions)
library(janitor)
#> Warning: package 'janitor' was built under R version 4.5.2
#> 
#> Attaching package: 'janitor'
#> The following objects are masked from 'package:stats':
#> 
#>     chisq.test, fisher.test
```

``` r
col_map <- create_column_map(rchabits)
```

``` r
rchabits |> 
  tabyl(q1, show_na = FALSE) |> 
  table_style("Age")
```

<div id="zbuqhxnsme" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#zbuqhxnsme table {
  font-family: 'HK Grotesk Pro AltJ', system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#zbuqhxnsme thead, #zbuqhxnsme tbody, #zbuqhxnsme tfoot, #zbuqhxnsme tr, #zbuqhxnsme td, #zbuqhxnsme th {
  border-style: none;
}
&#10;#zbuqhxnsme p {
  margin: 0;
  padding: 0;
}
&#10;#zbuqhxnsme .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: 0;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: solid;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#zbuqhxnsme .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#zbuqhxnsme .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#zbuqhxnsme .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#zbuqhxnsme .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: solid;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: solid;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#zbuqhxnsme .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#zbuqhxnsme .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: solid;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: solid;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#zbuqhxnsme .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: solid;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: solid;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#zbuqhxnsme .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#zbuqhxnsme .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#zbuqhxnsme .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#zbuqhxnsme .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#zbuqhxnsme .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#zbuqhxnsme .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: solid;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: solid;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#zbuqhxnsme .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}
&#10;#zbuqhxnsme .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#zbuqhxnsme .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#zbuqhxnsme .gt_row {
  padding-top: 5px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: solid;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: solid;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#zbuqhxnsme .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#zbuqhxnsme .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#zbuqhxnsme .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#zbuqhxnsme .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#zbuqhxnsme .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#zbuqhxnsme .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#zbuqhxnsme .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#zbuqhxnsme .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#zbuqhxnsme .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#zbuqhxnsme .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#zbuqhxnsme .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
&#10;#zbuqhxnsme .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#zbuqhxnsme .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#zbuqhxnsme .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: solid;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#zbuqhxnsme .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#zbuqhxnsme .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: solid;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#zbuqhxnsme .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#zbuqhxnsme .gt_left {
  text-align: left;
}
&#10;#zbuqhxnsme .gt_center {
  text-align: center;
}
&#10;#zbuqhxnsme .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#zbuqhxnsme .gt_font_normal {
  font-weight: normal;
}
&#10;#zbuqhxnsme .gt_font_bold {
  font-weight: bold;
}
&#10;#zbuqhxnsme .gt_font_italic {
  font-style: italic;
}
&#10;#zbuqhxnsme .gt_super {
  font-size: 65%;
}
&#10;#zbuqhxnsme .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#zbuqhxnsme .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#zbuqhxnsme .gt_indent_1 {
  text-indent: 5px;
}
&#10;#zbuqhxnsme .gt_indent_2 {
  text-indent: 10px;
}
&#10;#zbuqhxnsme .gt_indent_3 {
  text-indent: 15px;
}
&#10;#zbuqhxnsme .gt_indent_4 {
  text-indent: 20px;
}
&#10;#zbuqhxnsme .gt_indent_5 {
  text-indent: 25px;
}
&#10;#zbuqhxnsme .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}
&#10;#zbuqhxnsme div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_heading">
      <td colspan="3" class="gt_heading gt_title gt_font_normal gt_bottom_border" style="color: #FFFFFF; font-weight: bold; background-color: #5C068C;">Age</td>
    </tr>
    &#10;    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="q1"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="n">n</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="percent">percent</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="q1" class="gt_row gt_left">Under 18</td>
<td headers="n" class="gt_row gt_right">1</td>
<td headers="percent" class="gt_row gt_right">6%</td></tr>
    <tr><td headers="q1" class="gt_row gt_left">18-24 years old</td>
<td headers="n" class="gt_row gt_right">4</td>
<td headers="percent" class="gt_row gt_right">22%</td></tr>
    <tr><td headers="q1" class="gt_row gt_left">25-34 years old</td>
<td headers="n" class="gt_row gt_right">1</td>
<td headers="percent" class="gt_row gt_right">6%</td></tr>
    <tr><td headers="q1" class="gt_row gt_left">35-44 years old</td>
<td headers="n" class="gt_row gt_right">3</td>
<td headers="percent" class="gt_row gt_right">17%</td></tr>
    <tr><td headers="q1" class="gt_row gt_left">45-54 years old</td>
<td headers="n" class="gt_row gt_right">4</td>
<td headers="percent" class="gt_row gt_right">22%</td></tr>
    <tr><td headers="q1" class="gt_row gt_left">55-64 years old</td>
<td headers="n" class="gt_row gt_right">2</td>
<td headers="percent" class="gt_row gt_right">11%</td></tr>
    <tr><td headers="q1" class="gt_row gt_left">65+ years old</td>
<td headers="n" class="gt_row gt_right">3</td>
<td headers="percent" class="gt_row gt_right">17%</td></tr>
  </tbody>
  &#10;</table>
</div>

``` r
multi_response_table(rchabits, expss::mdset_p("q6_\\d")) |>
     multi_response_table_style("Types of Cuisine")
```

<div id="agkkqgmzba" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#agkkqgmzba table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#agkkqgmzba thead, #agkkqgmzba tbody, #agkkqgmzba tfoot, #agkkqgmzba tr, #agkkqgmzba td, #agkkqgmzba th {
  border-style: none;
}
&#10;#agkkqgmzba p {
  margin: 0;
  padding: 0;
}
&#10;#agkkqgmzba .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: 0;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: solid;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#agkkqgmzba .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#agkkqgmzba .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#agkkqgmzba .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#agkkqgmzba .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: solid;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: solid;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#agkkqgmzba .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#agkkqgmzba .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: solid;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: solid;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#agkkqgmzba .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: solid;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: solid;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#agkkqgmzba .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#agkkqgmzba .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#agkkqgmzba .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#agkkqgmzba .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#agkkqgmzba .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#agkkqgmzba .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: solid;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: solid;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#agkkqgmzba .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}
&#10;#agkkqgmzba .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#agkkqgmzba .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#agkkqgmzba .gt_row {
  padding-top: 5px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: solid;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: solid;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#agkkqgmzba .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#agkkqgmzba .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#agkkqgmzba .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#agkkqgmzba .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#agkkqgmzba .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#agkkqgmzba .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#agkkqgmzba .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#agkkqgmzba .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#agkkqgmzba .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#agkkqgmzba .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#agkkqgmzba .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
&#10;#agkkqgmzba .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#agkkqgmzba .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#agkkqgmzba .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: solid;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#agkkqgmzba .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#agkkqgmzba .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: solid;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#agkkqgmzba .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#agkkqgmzba .gt_left {
  text-align: left;
}
&#10;#agkkqgmzba .gt_center {
  text-align: center;
}
&#10;#agkkqgmzba .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#agkkqgmzba .gt_font_normal {
  font-weight: normal;
}
&#10;#agkkqgmzba .gt_font_bold {
  font-weight: bold;
}
&#10;#agkkqgmzba .gt_font_italic {
  font-style: italic;
}
&#10;#agkkqgmzba .gt_super {
  font-size: 65%;
}
&#10;#agkkqgmzba .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#agkkqgmzba .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#agkkqgmzba .gt_indent_1 {
  text-indent: 5px;
}
&#10;#agkkqgmzba .gt_indent_2 {
  text-indent: 10px;
}
&#10;#agkkqgmzba .gt_indent_3 {
  text-indent: 15px;
}
&#10;#agkkqgmzba .gt_indent_4 {
  text-indent: 20px;
}
&#10;#agkkqgmzba .gt_indent_5 {
  text-indent: 25px;
}
&#10;#agkkqgmzba .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}
&#10;#agkkqgmzba div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_heading">
      <td colspan="3" class="gt_heading gt_title gt_font_normal gt_bottom_border" style="color: #FFFFFF; font-weight: bold; background-color: #5C068C;">Types of Cuisine</td>
    </tr>
    &#10;    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="q"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="n">n</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="percent-of-cases">percent of cases</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="q" class="gt_row gt_left">Hulu</td>
<td headers="n" class="gt_row gt_right">5</td>
<td headers="percent of cases" class="gt_row gt_right">25%</td></tr>
    <tr><td headers="q" class="gt_row gt_left">Disney+</td>
<td headers="n" class="gt_row gt_right">5</td>
<td headers="percent of cases" class="gt_row gt_right">25%</td></tr>
    <tr><td headers="q" class="gt_row gt_left">Amazon Prime Video</td>
<td headers="n" class="gt_row gt_right">4</td>
<td headers="percent of cases" class="gt_row gt_right">20%</td></tr>
    <tr><td headers="q" class="gt_row gt_left">Apple TV+</td>
<td headers="n" class="gt_row gt_right">3</td>
<td headers="percent of cases" class="gt_row gt_right">15%</td></tr>
    <tr><td headers="q" class="gt_row gt_left">Peacock</td>
<td headers="n" class="gt_row gt_right">2</td>
<td headers="percent of cases" class="gt_row gt_right">10%</td></tr>
    <tr><td headers="q" class="gt_row gt_left">Netflix</td>
<td headers="n" class="gt_row gt_right">1</td>
<td headers="percent of cases" class="gt_row gt_right">5%</td></tr>
    <tr><td headers="q" class="gt_row gt_left">Other</td>
<td headers="n" class="gt_row gt_right">5</td>
<td headers="percent of cases" class="gt_row gt_right">25%</td></tr>
    <tr><td headers="q" class="gt_row gt_left">None</td>
<td headers="n" class="gt_row gt_right">11</td>
<td headers="percent of cases" class="gt_row gt_right">55%</td></tr>
    <tr><td headers="q" class="gt_row gt_left" style="border-top-width: 2px; border-top-style: solid; border-top-color: #D3D3D3;">Total cases</td>
<td headers="n" class="gt_row gt_right" style="border-top-width: 2px; border-top-style: solid; border-top-color: #D3D3D3;">20</td>
<td headers="percent of cases" class="gt_row gt_right" style="border-top-width: 2px; border-top-style: solid; border-top-color: #D3D3D3;">-</td></tr>
  </tbody>
  &#10;</table>
</div>

``` r
rchabits |>
    dplyr::select(tidyselect::starts_with("q3_")) |>
    likert_table() |>
    likert_table_style("Habits") |>
    gt::sub_missing(missing_text = "No answer")
#> Joining with `by = join_by(Item)`
```

<div id="uxahknavla" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#uxahknavla table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#uxahknavla thead, #uxahknavla tbody, #uxahknavla tfoot, #uxahknavla tr, #uxahknavla td, #uxahknavla th {
  border-style: none;
}
&#10;#uxahknavla p {
  margin: 0;
  padding: 0;
}
&#10;#uxahknavla .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: 0;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: solid;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#uxahknavla .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#uxahknavla .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#uxahknavla .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#uxahknavla .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: solid;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: solid;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#uxahknavla .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#uxahknavla .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: solid;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: solid;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#uxahknavla .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: solid;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: solid;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#uxahknavla .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#uxahknavla .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#uxahknavla .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#uxahknavla .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#uxahknavla .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#uxahknavla .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: solid;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: solid;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#uxahknavla .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}
&#10;#uxahknavla .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#uxahknavla .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#uxahknavla .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: solid;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: solid;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#uxahknavla .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#uxahknavla .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#uxahknavla .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#uxahknavla .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#uxahknavla .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#uxahknavla .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#uxahknavla .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#uxahknavla .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#uxahknavla .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#uxahknavla .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#uxahknavla .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
&#10;#uxahknavla .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#uxahknavla .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#uxahknavla .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: solid;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#uxahknavla .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#uxahknavla .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: solid;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#uxahknavla .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#uxahknavla .gt_left {
  text-align: left;
}
&#10;#uxahknavla .gt_center {
  text-align: center;
}
&#10;#uxahknavla .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#uxahknavla .gt_font_normal {
  font-weight: normal;
}
&#10;#uxahknavla .gt_font_bold {
  font-weight: bold;
}
&#10;#uxahknavla .gt_font_italic {
  font-style: italic;
}
&#10;#uxahknavla .gt_super {
  font-size: 65%;
}
&#10;#uxahknavla .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#uxahknavla .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#uxahknavla .gt_indent_1 {
  text-indent: 5px;
}
&#10;#uxahknavla .gt_indent_2 {
  text-indent: 10px;
}
&#10;#uxahknavla .gt_indent_3 {
  text-indent: 15px;
}
&#10;#uxahknavla .gt_indent_4 {
  text-indent: 20px;
}
&#10;#uxahknavla .gt_indent_5 {
  text-indent: 25px;
}
&#10;#uxahknavla .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}
&#10;#uxahknavla div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_heading">
      <td colspan="7" class="gt_heading gt_title gt_font_normal gt_bottom_border" style="color: #FFFFFF; font-weight: bold; background-color: #5C068C;">Habits</td>
    </tr>
    &#10;    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="a::stub"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Never">Never</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Sometimes">Sometimes</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="About-half-the-time">About half the time</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Most-of-the-time">Most of the time</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Always">Always</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="N">N</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr class="gt_row_group_first"><td headers="Eat at a restaurant stub_2_1 stub_1" rowspan="1" class="gt_row gt_left gt_stub_row_group">Eat at a restaurant</td>
<td headers="Eat at a restaurant stub_2_1 Never" class="gt_row gt_right">30%</td>
<td headers="Eat at a restaurant stub_2_1 Sometimes" class="gt_row gt_right">20%</td>
<td headers="Eat at a restaurant stub_2_1 About half the time" class="gt_row gt_right">20%</td>
<td headers="Eat at a restaurant stub_2_1 Most of the time" class="gt_row gt_right">30%</td>
<td headers="Eat at a restaurant stub_2_1 Always" class="gt_row gt_right">0%</td>
<td headers="Eat at a restaurant stub_2_1 N" class="gt_row gt_right">10</td></tr>
    <tr class="gt_row_group_first"><td headers="Order food delivery stub_2_2 stub_1" rowspan="1" class="gt_row gt_left gt_stub_row_group">Order food delivery</td>
<td headers="Order food delivery stub_2_2 Never" class="gt_row gt_right">0%</td>
<td headers="Order food delivery stub_2_2 Sometimes" class="gt_row gt_right">33%</td>
<td headers="Order food delivery stub_2_2 About half the time" class="gt_row gt_right">33%</td>
<td headers="Order food delivery stub_2_2 Most of the time" class="gt_row gt_right">33%</td>
<td headers="Order food delivery stub_2_2 Always" class="gt_row gt_right">0%</td>
<td headers="Order food delivery stub_2_2 N" class="gt_row gt_right">6</td></tr>
    <tr class="gt_row_group_first"><td headers="Go to the movies stub_2_3 stub_1" rowspan="1" class="gt_row gt_left gt_stub_row_group">Go to the movies</td>
<td headers="Go to the movies stub_2_3 Never" class="gt_row gt_right">20%</td>
<td headers="Go to the movies stub_2_3 Sometimes" class="gt_row gt_right">40%</td>
<td headers="Go to the movies stub_2_3 About half the time" class="gt_row gt_right">40%</td>
<td headers="Go to the movies stub_2_3 Most of the time" class="gt_row gt_right">0%</td>
<td headers="Go to the movies stub_2_3 Always" class="gt_row gt_right">0%</td>
<td headers="Go to the movies stub_2_3 N" class="gt_row gt_right">5</td></tr>
    <tr class="gt_row_group_first"><td headers="Shop online stub_2_4 stub_1" rowspan="1" class="gt_row gt_left gt_stub_row_group">Shop online</td>
<td headers="Shop online stub_2_4 Never" class="gt_row gt_right">17%</td>
<td headers="Shop online stub_2_4 Sometimes" class="gt_row gt_right">33%</td>
<td headers="Shop online stub_2_4 About half the time" class="gt_row gt_right">0%</td>
<td headers="Shop online stub_2_4 Most of the time" class="gt_row gt_right">33%</td>
<td headers="Shop online stub_2_4 Always" class="gt_row gt_right">17%</td>
<td headers="Shop online stub_2_4 N" class="gt_row gt_right">12</td></tr>
    <tr class="gt_row_group_first"><td headers="Cook meals at home stub_2_5 stub_1" rowspan="1" class="gt_row gt_left gt_stub_row_group">Cook meals at home</td>
<td headers="Cook meals at home stub_2_5 Never" class="gt_row gt_right">9%</td>
<td headers="Cook meals at home stub_2_5 Sometimes" class="gt_row gt_right">27%</td>
<td headers="Cook meals at home stub_2_5 About half the time" class="gt_row gt_right">18%</td>
<td headers="Cook meals at home stub_2_5 Most of the time" class="gt_row gt_right">18%</td>
<td headers="Cook meals at home stub_2_5 Always" class="gt_row gt_right">27%</td>
<td headers="Cook meals at home stub_2_5 N" class="gt_row gt_right">11</td></tr>
  </tbody>
  &#10;</table>
</div>

``` r
rchabits |>
     dplyr::select(q1, tidyselect::starts_with("q3_")) |>
     likert_table(cross = q1) |>
     likert_table_style("Title")
#> Joining with `by = join_by(Item)`
```

<div id="ckgegifpzo" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#ckgegifpzo table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#ckgegifpzo thead, #ckgegifpzo tbody, #ckgegifpzo tfoot, #ckgegifpzo tr, #ckgegifpzo td, #ckgegifpzo th {
  border-style: none;
}
&#10;#ckgegifpzo p {
  margin: 0;
  padding: 0;
}
&#10;#ckgegifpzo .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: 0;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: solid;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#ckgegifpzo .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#ckgegifpzo .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#ckgegifpzo .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#ckgegifpzo .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: solid;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: solid;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#ckgegifpzo .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#ckgegifpzo .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: solid;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: solid;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#ckgegifpzo .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: solid;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: solid;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#ckgegifpzo .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#ckgegifpzo .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#ckgegifpzo .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#ckgegifpzo .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#ckgegifpzo .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#ckgegifpzo .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: solid;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: solid;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#ckgegifpzo .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}
&#10;#ckgegifpzo .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#ckgegifpzo .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#ckgegifpzo .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: solid;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: solid;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#ckgegifpzo .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#ckgegifpzo .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#ckgegifpzo .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#ckgegifpzo .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#ckgegifpzo .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#ckgegifpzo .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#ckgegifpzo .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#ckgegifpzo .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#ckgegifpzo .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#ckgegifpzo .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#ckgegifpzo .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
&#10;#ckgegifpzo .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#ckgegifpzo .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#ckgegifpzo .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: solid;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#ckgegifpzo .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#ckgegifpzo .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: solid;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#ckgegifpzo .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#ckgegifpzo .gt_left {
  text-align: left;
}
&#10;#ckgegifpzo .gt_center {
  text-align: center;
}
&#10;#ckgegifpzo .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#ckgegifpzo .gt_font_normal {
  font-weight: normal;
}
&#10;#ckgegifpzo .gt_font_bold {
  font-weight: bold;
}
&#10;#ckgegifpzo .gt_font_italic {
  font-style: italic;
}
&#10;#ckgegifpzo .gt_super {
  font-size: 65%;
}
&#10;#ckgegifpzo .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#ckgegifpzo .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#ckgegifpzo .gt_indent_1 {
  text-indent: 5px;
}
&#10;#ckgegifpzo .gt_indent_2 {
  text-indent: 10px;
}
&#10;#ckgegifpzo .gt_indent_3 {
  text-indent: 15px;
}
&#10;#ckgegifpzo .gt_indent_4 {
  text-indent: 20px;
}
&#10;#ckgegifpzo .gt_indent_5 {
  text-indent: 25px;
}
&#10;#ckgegifpzo .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}
&#10;#ckgegifpzo div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_heading">
      <td colspan="8" class="gt_heading gt_title gt_font_normal gt_bottom_border" style="color: #FFFFFF; font-weight: bold; background-color: #5C068C;">Title</td>
    </tr>
    &#10;    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="2" scope="colgroup" id="a::stub"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Never">Never</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Sometimes">Sometimes</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="About-half-the-time">About half the time</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Most-of-the-time">Most of the time</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Always">Always</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="N">N</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr class="gt_row_group_first"><td headers="Order food delivery stub_2_1 stub_1" rowspan="5" class="gt_row gt_left gt_stub_row_group">Order food delivery</td>
<th id="stub_2_1" scope="row" class="gt_row gt_center gt_stub">Under 18</th>
<td headers="Order food delivery stub_2_1 Never" class="gt_row gt_right">0%</td>
<td headers="Order food delivery stub_2_1 Sometimes" class="gt_row gt_right">0%</td>
<td headers="Order food delivery stub_2_1 About half the time" class="gt_row gt_right">100%</td>
<td headers="Order food delivery stub_2_1 Most of the time" class="gt_row gt_right">0%</td>
<td headers="Order food delivery stub_2_1 Always" class="gt_row gt_right">0%</td>
<td headers="Order food delivery stub_2_1 N" class="gt_row gt_right">1</td></tr>
    <tr><th id="stub_2_2" scope="row" class="gt_row gt_center gt_stub">18-24 years old</th>
<td headers="Order food delivery stub_2_2 Never" class="gt_row gt_right">0%</td>
<td headers="Order food delivery stub_2_2 Sometimes" class="gt_row gt_right">0%</td>
<td headers="Order food delivery stub_2_2 About half the time" class="gt_row gt_right">100%</td>
<td headers="Order food delivery stub_2_2 Most of the time" class="gt_row gt_right">0%</td>
<td headers="Order food delivery stub_2_2 Always" class="gt_row gt_right">0%</td>
<td headers="Order food delivery stub_2_2 N" class="gt_row gt_right">1</td></tr>
    <tr><th id="stub_2_3" scope="row" class="gt_row gt_center gt_stub">35-44 years old</th>
<td headers="Order food delivery stub_2_3 Never" class="gt_row gt_right">0%</td>
<td headers="Order food delivery stub_2_3 Sometimes" class="gt_row gt_right">0%</td>
<td headers="Order food delivery stub_2_3 About half the time" class="gt_row gt_right">0%</td>
<td headers="Order food delivery stub_2_3 Most of the time" class="gt_row gt_right">100%</td>
<td headers="Order food delivery stub_2_3 Always" class="gt_row gt_right">0%</td>
<td headers="Order food delivery stub_2_3 N" class="gt_row gt_right">1</td></tr>
    <tr><th id="stub_2_4" scope="row" class="gt_row gt_center gt_stub">45-54 years old</th>
<td headers="Order food delivery stub_2_4 Never" class="gt_row gt_right">0%</td>
<td headers="Order food delivery stub_2_4 Sometimes" class="gt_row gt_right">100%</td>
<td headers="Order food delivery stub_2_4 About half the time" class="gt_row gt_right">0%</td>
<td headers="Order food delivery stub_2_4 Most of the time" class="gt_row gt_right">0%</td>
<td headers="Order food delivery stub_2_4 Always" class="gt_row gt_right">0%</td>
<td headers="Order food delivery stub_2_4 N" class="gt_row gt_right">2</td></tr>
    <tr><th id="stub_2_5" scope="row" class="gt_row gt_center gt_stub">65+ years old</th>
<td headers="Order food delivery stub_2_5 Never" class="gt_row gt_right">0%</td>
<td headers="Order food delivery stub_2_5 Sometimes" class="gt_row gt_right">0%</td>
<td headers="Order food delivery stub_2_5 About half the time" class="gt_row gt_right">0%</td>
<td headers="Order food delivery stub_2_5 Most of the time" class="gt_row gt_right">100%</td>
<td headers="Order food delivery stub_2_5 Always" class="gt_row gt_right">0%</td>
<td headers="Order food delivery stub_2_5 N" class="gt_row gt_right">1</td></tr>
    <tr class="gt_row_group_first"><td headers="Eat at a restaurant stub_2_6 stub_1" rowspan="5" class="gt_row gt_left gt_stub_row_group">Eat at a restaurant</td>
<th id="stub_2_6" scope="row" class="gt_row gt_center gt_stub">18-24 years old</th>
<td headers="Eat at a restaurant stub_2_6 Never" class="gt_row gt_right">50%</td>
<td headers="Eat at a restaurant stub_2_6 Sometimes" class="gt_row gt_right">0%</td>
<td headers="Eat at a restaurant stub_2_6 About half the time" class="gt_row gt_right">0%</td>
<td headers="Eat at a restaurant stub_2_6 Most of the time" class="gt_row gt_right">50%</td>
<td headers="Eat at a restaurant stub_2_6 Always" class="gt_row gt_right">0%</td>
<td headers="Eat at a restaurant stub_2_6 N" class="gt_row gt_right">2</td></tr>
    <tr><th id="stub_2_7" scope="row" class="gt_row gt_center gt_stub">35-44 years old</th>
<td headers="Eat at a restaurant stub_2_7 Never" class="gt_row gt_right">100%</td>
<td headers="Eat at a restaurant stub_2_7 Sometimes" class="gt_row gt_right">0%</td>
<td headers="Eat at a restaurant stub_2_7 About half the time" class="gt_row gt_right">0%</td>
<td headers="Eat at a restaurant stub_2_7 Most of the time" class="gt_row gt_right">0%</td>
<td headers="Eat at a restaurant stub_2_7 Always" class="gt_row gt_right">0%</td>
<td headers="Eat at a restaurant stub_2_7 N" class="gt_row gt_right">2</td></tr>
    <tr><th id="stub_2_8" scope="row" class="gt_row gt_center gt_stub">45-54 years old</th>
<td headers="Eat at a restaurant stub_2_8 Never" class="gt_row gt_right">0%</td>
<td headers="Eat at a restaurant stub_2_8 Sometimes" class="gt_row gt_right">0%</td>
<td headers="Eat at a restaurant stub_2_8 About half the time" class="gt_row gt_right">100%</td>
<td headers="Eat at a restaurant stub_2_8 Most of the time" class="gt_row gt_right">0%</td>
<td headers="Eat at a restaurant stub_2_8 Always" class="gt_row gt_right">0%</td>
<td headers="Eat at a restaurant stub_2_8 N" class="gt_row gt_right">1</td></tr>
    <tr><th id="stub_2_9" scope="row" class="gt_row gt_center gt_stub">55-64 years old</th>
<td headers="Eat at a restaurant stub_2_9 Never" class="gt_row gt_right">0%</td>
<td headers="Eat at a restaurant stub_2_9 Sometimes" class="gt_row gt_right">100%</td>
<td headers="Eat at a restaurant stub_2_9 About half the time" class="gt_row gt_right">0%</td>
<td headers="Eat at a restaurant stub_2_9 Most of the time" class="gt_row gt_right">0%</td>
<td headers="Eat at a restaurant stub_2_9 Always" class="gt_row gt_right">0%</td>
<td headers="Eat at a restaurant stub_2_9 N" class="gt_row gt_right">1</td></tr>
    <tr><th id="stub_2_10" scope="row" class="gt_row gt_center gt_stub">65+ years old</th>
<td headers="Eat at a restaurant stub_2_10 Never" class="gt_row gt_right">0%</td>
<td headers="Eat at a restaurant stub_2_10 Sometimes" class="gt_row gt_right">50%</td>
<td headers="Eat at a restaurant stub_2_10 About half the time" class="gt_row gt_right">0%</td>
<td headers="Eat at a restaurant stub_2_10 Most of the time" class="gt_row gt_right">50%</td>
<td headers="Eat at a restaurant stub_2_10 Always" class="gt_row gt_right">0%</td>
<td headers="Eat at a restaurant stub_2_10 N" class="gt_row gt_right">2</td></tr>
    <tr class="gt_row_group_first"><td headers="Shop online stub_2_11 stub_1" rowspan="6" class="gt_row gt_left gt_stub_row_group">Shop online</td>
<th id="stub_2_11" scope="row" class="gt_row gt_center gt_stub">18-24 years old</th>
<td headers="Shop online stub_2_11 Never" class="gt_row gt_right">0%</td>
<td headers="Shop online stub_2_11 Sometimes" class="gt_row gt_right">100%</td>
<td headers="Shop online stub_2_11 About half the time" class="gt_row gt_right">0%</td>
<td headers="Shop online stub_2_11 Most of the time" class="gt_row gt_right">0%</td>
<td headers="Shop online stub_2_11 Always" class="gt_row gt_right">0%</td>
<td headers="Shop online stub_2_11 N" class="gt_row gt_right">1</td></tr>
    <tr><th id="stub_2_12" scope="row" class="gt_row gt_center gt_stub">25-34 years old</th>
<td headers="Shop online stub_2_12 Never" class="gt_row gt_right">0%</td>
<td headers="Shop online stub_2_12 Sometimes" class="gt_row gt_right">0%</td>
<td headers="Shop online stub_2_12 About half the time" class="gt_row gt_right">0%</td>
<td headers="Shop online stub_2_12 Most of the time" class="gt_row gt_right">100%</td>
<td headers="Shop online stub_2_12 Always" class="gt_row gt_right">0%</td>
<td headers="Shop online stub_2_12 N" class="gt_row gt_right">1</td></tr>
    <tr><th id="stub_2_13" scope="row" class="gt_row gt_center gt_stub">35-44 years old</th>
<td headers="Shop online stub_2_13 Never" class="gt_row gt_right">0%</td>
<td headers="Shop online stub_2_13 Sometimes" class="gt_row gt_right">50%</td>
<td headers="Shop online stub_2_13 About half the time" class="gt_row gt_right">0%</td>
<td headers="Shop online stub_2_13 Most of the time" class="gt_row gt_right">50%</td>
<td headers="Shop online stub_2_13 Always" class="gt_row gt_right">0%</td>
<td headers="Shop online stub_2_13 N" class="gt_row gt_right">2</td></tr>
    <tr><th id="stub_2_14" scope="row" class="gt_row gt_center gt_stub">45-54 years old</th>
<td headers="Shop online stub_2_14 Never" class="gt_row gt_right">0%</td>
<td headers="Shop online stub_2_14 Sometimes" class="gt_row gt_right">33%</td>
<td headers="Shop online stub_2_14 About half the time" class="gt_row gt_right">0%</td>
<td headers="Shop online stub_2_14 Most of the time" class="gt_row gt_right">67%</td>
<td headers="Shop online stub_2_14 Always" class="gt_row gt_right">0%</td>
<td headers="Shop online stub_2_14 N" class="gt_row gt_right">3</td></tr>
    <tr><th id="stub_2_15" scope="row" class="gt_row gt_center gt_stub">55-64 years old</th>
<td headers="Shop online stub_2_15 Never" class="gt_row gt_right">0%</td>
<td headers="Shop online stub_2_15 Sometimes" class="gt_row gt_right">0%</td>
<td headers="Shop online stub_2_15 About half the time" class="gt_row gt_right">0%</td>
<td headers="Shop online stub_2_15 Most of the time" class="gt_row gt_right">0%</td>
<td headers="Shop online stub_2_15 Always" class="gt_row gt_right">100%</td>
<td headers="Shop online stub_2_15 N" class="gt_row gt_right">1</td></tr>
    <tr><th id="stub_2_16" scope="row" class="gt_row gt_center gt_stub">65+ years old</th>
<td headers="Shop online stub_2_16 Never" class="gt_row gt_right">0%</td>
<td headers="Shop online stub_2_16 Sometimes" class="gt_row gt_right">50%</td>
<td headers="Shop online stub_2_16 About half the time" class="gt_row gt_right">0%</td>
<td headers="Shop online stub_2_16 Most of the time" class="gt_row gt_right">0%</td>
<td headers="Shop online stub_2_16 Always" class="gt_row gt_right">50%</td>
<td headers="Shop online stub_2_16 N" class="gt_row gt_right">2</td></tr>
    <tr class="gt_row_group_first"><td headers="Cook meals at home stub_2_17 stub_1" rowspan="6" class="gt_row gt_left gt_stub_row_group">Cook meals at home</td>
<th id="stub_2_17" scope="row" class="gt_row gt_center gt_stub">18-24 years old</th>
<td headers="Cook meals at home stub_2_17 Never" class="gt_row gt_right">0%</td>
<td headers="Cook meals at home stub_2_17 Sometimes" class="gt_row gt_right">25%</td>
<td headers="Cook meals at home stub_2_17 About half the time" class="gt_row gt_right">25%</td>
<td headers="Cook meals at home stub_2_17 Most of the time" class="gt_row gt_right">25%</td>
<td headers="Cook meals at home stub_2_17 Always" class="gt_row gt_right">25%</td>
<td headers="Cook meals at home stub_2_17 N" class="gt_row gt_right">4</td></tr>
    <tr><th id="stub_2_18" scope="row" class="gt_row gt_center gt_stub">25-34 years old</th>
<td headers="Cook meals at home stub_2_18 Never" class="gt_row gt_right">0%</td>
<td headers="Cook meals at home stub_2_18 Sometimes" class="gt_row gt_right">100%</td>
<td headers="Cook meals at home stub_2_18 About half the time" class="gt_row gt_right">0%</td>
<td headers="Cook meals at home stub_2_18 Most of the time" class="gt_row gt_right">0%</td>
<td headers="Cook meals at home stub_2_18 Always" class="gt_row gt_right">0%</td>
<td headers="Cook meals at home stub_2_18 N" class="gt_row gt_right">1</td></tr>
    <tr><th id="stub_2_19" scope="row" class="gt_row gt_center gt_stub">35-44 years old</th>
<td headers="Cook meals at home stub_2_19 Never" class="gt_row gt_right">0%</td>
<td headers="Cook meals at home stub_2_19 Sometimes" class="gt_row gt_right">0%</td>
<td headers="Cook meals at home stub_2_19 About half the time" class="gt_row gt_right">100%</td>
<td headers="Cook meals at home stub_2_19 Most of the time" class="gt_row gt_right">0%</td>
<td headers="Cook meals at home stub_2_19 Always" class="gt_row gt_right">0%</td>
<td headers="Cook meals at home stub_2_19 N" class="gt_row gt_right">1</td></tr>
    <tr><th id="stub_2_20" scope="row" class="gt_row gt_center gt_stub">45-54 years old</th>
<td headers="Cook meals at home stub_2_20 Never" class="gt_row gt_right">0%</td>
<td headers="Cook meals at home stub_2_20 Sometimes" class="gt_row gt_right">50%</td>
<td headers="Cook meals at home stub_2_20 About half the time" class="gt_row gt_right">0%</td>
<td headers="Cook meals at home stub_2_20 Most of the time" class="gt_row gt_right">0%</td>
<td headers="Cook meals at home stub_2_20 Always" class="gt_row gt_right">50%</td>
<td headers="Cook meals at home stub_2_20 N" class="gt_row gt_right">2</td></tr>
    <tr><th id="stub_2_21" scope="row" class="gt_row gt_center gt_stub">55-64 years old</th>
<td headers="Cook meals at home stub_2_21 Never" class="gt_row gt_right">0%</td>
<td headers="Cook meals at home stub_2_21 Sometimes" class="gt_row gt_right">0%</td>
<td headers="Cook meals at home stub_2_21 About half the time" class="gt_row gt_right">0%</td>
<td headers="Cook meals at home stub_2_21 Most of the time" class="gt_row gt_right">0%</td>
<td headers="Cook meals at home stub_2_21 Always" class="gt_row gt_right">100%</td>
<td headers="Cook meals at home stub_2_21 N" class="gt_row gt_right">1</td></tr>
    <tr><th id="stub_2_22" scope="row" class="gt_row gt_center gt_stub">65+ years old</th>
<td headers="Cook meals at home stub_2_22 Never" class="gt_row gt_right">100%</td>
<td headers="Cook meals at home stub_2_22 Sometimes" class="gt_row gt_right">0%</td>
<td headers="Cook meals at home stub_2_22 About half the time" class="gt_row gt_right">0%</td>
<td headers="Cook meals at home stub_2_22 Most of the time" class="gt_row gt_right">0%</td>
<td headers="Cook meals at home stub_2_22 Always" class="gt_row gt_right">0%</td>
<td headers="Cook meals at home stub_2_22 N" class="gt_row gt_right">1</td></tr>
    <tr class="gt_row_group_first"><td headers="Go to the movies stub_2_23 stub_1" rowspan="3" class="gt_row gt_left gt_stub_row_group">Go to the movies</td>
<th id="stub_2_23" scope="row" class="gt_row gt_center gt_stub">25-34 years old</th>
<td headers="Go to the movies stub_2_23 Never" class="gt_row gt_right">0%</td>
<td headers="Go to the movies stub_2_23 Sometimes" class="gt_row gt_right">0%</td>
<td headers="Go to the movies stub_2_23 About half the time" class="gt_row gt_right">100%</td>
<td headers="Go to the movies stub_2_23 Most of the time" class="gt_row gt_right">0%</td>
<td headers="Go to the movies stub_2_23 Always" class="gt_row gt_right">0%</td>
<td headers="Go to the movies stub_2_23 N" class="gt_row gt_right">1</td></tr>
    <tr><th id="stub_2_24" scope="row" class="gt_row gt_center gt_stub">35-44 years old</th>
<td headers="Go to the movies stub_2_24 Never" class="gt_row gt_right">50%</td>
<td headers="Go to the movies stub_2_24 Sometimes" class="gt_row gt_right">0%</td>
<td headers="Go to the movies stub_2_24 About half the time" class="gt_row gt_right">50%</td>
<td headers="Go to the movies stub_2_24 Most of the time" class="gt_row gt_right">0%</td>
<td headers="Go to the movies stub_2_24 Always" class="gt_row gt_right">0%</td>
<td headers="Go to the movies stub_2_24 N" class="gt_row gt_right">2</td></tr>
    <tr><th id="stub_2_25" scope="row" class="gt_row gt_center gt_stub">65+ years old</th>
<td headers="Go to the movies stub_2_25 Never" class="gt_row gt_right">0%</td>
<td headers="Go to the movies stub_2_25 Sometimes" class="gt_row gt_right">100%</td>
<td headers="Go to the movies stub_2_25 About half the time" class="gt_row gt_right">0%</td>
<td headers="Go to the movies stub_2_25 Most of the time" class="gt_row gt_right">0%</td>
<td headers="Go to the movies stub_2_25 Always" class="gt_row gt_right">0%</td>
<td headers="Go to the movies stub_2_25 N" class="gt_row gt_right">1</td></tr>
  </tbody>
  &#10;</table>
</div>
