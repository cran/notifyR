\name{notifyR-package}
\alias{notifyR-package}
\docType{package}
\title{
Send push notifications to your smartphone via pushover.net
}
\description{
This Package provides a connection to the pushover.net API to send push notification to your smartphone directly from R. (ACCOUNT REQUIRED!)
}

\author{
Torben Engelmeyer <torben@engelmeyer.de>
}
\references{
http://www.engelmeyer.de/notifyR

http://pushover.net
}
\keyword{IO}
\keyword{connection}
\keyword{misc}
\examples{
\dontrun{
## First get your user key at http://pushover.net
##

userkey <- "[YOUR PUSHOVER USER KEY]" #Define user key

send_push(userkey,"Simulation finished")

send_push(userkey,message="finished.",title="World Simulation",url="http://www.myRresults.com/",url_title="View Results online.",priority=TRUE)

send_push(userkey,"Cool Date",timestamp=as.POSIXct("1987-02-24 15:00:00", tz="CET"))

send_push(userkey,"Send notification only to my favorite Smartphone",device="favorite")

}
}
