% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/text_summary.R
\name{text_summary}
\alias{text_summary}
\title{Text Summary}
\usage{
text_summary(text)
}
\arguments{
\item{text}{A character string containing the text to analyze.}
}
\value{
A list containing the total number of words,
the total number of sentences and the average word length.
}
\description{
This function summarizes the input text by counting the total number of words,
the totale number of sentences and average word length.
}
\examples{
#How to use text_summary()
text <- "A random example text.
It has punctuation. It's also has a bunch of nonsense"
text_summary(text)
}
