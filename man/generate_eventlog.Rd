% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generate_eventlog.R
\name{generate_eventlog}
\alias{generate_eventlog}
\title{Generate random event log}
\usage{
generate_eventlog(
     size_of_eventlog = 1000, 
     number_of_customers = 20, 
     event_catalogs = c("normal", "target"), 
     event_catalogs_size = c(8, 2))
}
\arguments{
\item{size_of_eventlog}{The size of generated event log}

\item{number_of_customers}{How many customers in the simulation}

\item{event_catalogs}{A data frame contains the event catalog}

\item{event_catalogs_size}{How many event types in each event catalog}
}
\description{
This function provides the ability to randomly generate the \code{eventlog} data frame based on given parameters.
}
\examples{
eventlog <- generate_eventlog(
     size_of_eventlog = 10000,
     number_of_customers = 2000,
     event_catalogs = c("campaign", "sale"),
     event_catalogs_size = c(10, 4)
     )

str(eventlog)
# 'data.frame':	10000 obs. of  4 variables:
#  $ timestamp  : POSIXct, format: "2017-01-01 02:16:16" ...
#  $ customer_id: chr  "Customer 107" "Customer 1828" "Customer 587" "Customer 1666" ...
#  $ event_name : chr  "Event 4 (campaign)" "Event 11 (sale)" "Event 7 (campaign)" ...
#  $ event_type : chr  "campaign" "sale" "campaign" "sale" ...
head(eventlog)
#             timestamp   customer_id         event_name event_type
# 1 2017-01-01 02:16:16  Customer 107 Event 4 (campaign)   campaign
# 2 2017-01-01 03:04:22 Customer 1828    Event 11 (sale)       sale
# 3 2017-01-01 03:36:35  Customer 587 Event 7 (campaign)   campaign
# 4 2017-01-01 05:00:11 Customer 1666    Event 14 (sale)       sale
# 5 2017-01-01 05:38:24 Customer 1287    Event 11 (sale)       sale
# 6 2017-01-01 05:48:22 Customer 1286 Event 7 (campaign)   campaign
}
