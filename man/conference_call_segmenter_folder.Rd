% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/2023-04-24_DisclosuR.R
\name{conference_call_segmenter_folder}
\alias{conference_call_segmenter_folder}
\title{Earnings call segmenter (multiple files)}
\usage{
conference_call_segmenter_folder(
  folder_path,
  sentiment = FALSE,
  emotion = FALSE,
  regulatory_focus = FALSE,
  laughter = FALSE,
  narcissism = FALSE
)
}
\arguments{
\item{folder_path}{The name of the folder which the data are to be read
from. If it does not contain an absolute path, the file name is
relative to the current working directory.}

\item{sentiment}{Performs dictionary-based sentiment analysis
based on the \code{\link[SentimentAnalysis]{analyzeSentiment}}
function (default: FALSE)}

\item{emotion}{Performs dictionary-based emotion analysis based on the}

\item{regulatory_focus}{Calculates the number of words indicative for
promotion and prevention focus based on the
dictionary developed by \href{https://psycnet.apa.org/record/2015-41859-013}{Gamache et al., 2015}
(default: FALSE)}

\item{laughter}{Counts the number of times laughter was indicated in a quote. (default: FALSE)}

\item{narcissism}{Counts the number of pronoun usage and calculates the ratio of first-person singular to
first-person plural pronouns. This measure is derived from \href{https://psycnet.apa.org/record/2015-06474-002}{Zhu & Chen, (2015}
(default: FALSE)}
}
\value{
An R data frame with each row representing one quote. The columns indicate the quarter, year, section
(presentation versus Q&A), the speaker's name, role, affiliation, and also three binary indicators on whether the
speaker is the host company's (1) CEO, (2) CFO, and/or (3) Chairman.
}
\description{
Converts all 'FairDisclosure' earnings call transcripts obtained from 'NexisUni'
in a folder to an R data frame.
}
\examples{
earnings_calls_df <- conference_call_segmenter_folder(
folder_path = system.file("inst",
"examples",
"earnings_calls",
package = "disclosuR"));
earnings_calls_df_sentiment <- conference_call_segmenter_folder(
folder_path = system.file("inst",
"examples",
"newswire",
sentiment = TRUE,
package = "disclosuR"));

}
