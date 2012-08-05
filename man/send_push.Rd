\name{send_push}
\alias{send_push}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Send push notifications to your smartphone via pushover.net
}
\description{
This Function provides a connection to the pushover.net API to send push notification to your smartphone directly from R. (ACCOUNT REQUIRED!)
}
\usage{
send_push(user, message, title = "", device = "", url = "", url_title = "", priority = FALSE, timestamp = Sys.time())
}
\arguments{
  \item{user}{
Your Pushover User Key.
}
  \item{message}{
The message you want to send to your Smartphone (max. 512 character).
}
  \item{title}{
Title of your notification (optional). Default: notifyR
}
  \item{device}{
Specifies the Device you want to send the notification to (optional).
}
  \item{url}{
An additional URL which will be send with the notification (optional).
}
  \item{url_title}{
Title of this URL (optional).
}
  \item{priority}{
Boolean value. If it's set to 'TRUE' the notification will be send with high Priority. You will recieve it also during your 'quiet hours' which you can 
set on pushover.net (optional). Default: False 
}
  \item{timestamp}{
Set the Timestamp which is displayed in notification (optional). Default: Sys.time()
}
}
\references{
http://www.engelmeyer.de/notifyR

http://pushover.net
}
\author{
Torben Engelmeyer <torben@engelmeyer.de>
}
\examples{
\dontrun{
## First get your user key at http://pushover.net
##

userkey <- "[YOUR PUSHOVER USER KEY]" #Define user key

send_push(userkey,"Simulation finished")

send_push(userkey,message="finished.",title="World Simulation",url="http://www.myRresults.com/",url_title="View Results online.",priority=TRUE)

send_push(userkey,"Cool Date",timestamp=as.POSIXct("1987-02-24 15:00:00", tz="CET"))

send_push(userkey,"Send notification only to my favorite Smartphone",device="favorite")

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
}
}
\keyword{IO}
\keyword{connection}
\keyword{misc}