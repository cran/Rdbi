# -*- R -*-
# $RCSfile: util.R,v $
# $Date: 2001/08/28 20:31:22 $
# $Revision: 1.1.1.1 $
# Copyright 2001, Timothy H. Keitt
# Licence: GPL

list.to.csv <- function(...)
  return(paste(collapse=", ", ...))

single.quote <- function(...) {
  text <- gsub("'", "\\\\'", as.character(...))
  return(paste("'", unlist(text), "'", sep = ""))
}
         
double.quote <- function(...)
  return(paste('"', unlist(as.character(...)), '"', sep=""))

list.to.key.pair.string <- function(key.list,
                                    key.sep = "=",
                                    pair.sep = " ") {

  out <- ""
  
  if (length(key.list) > 0)
    out <- paste(names(key.list)[1], key.sep,
                 single.quote(key.list[1]))
  
  if (length(key.list) > 1) {
    
    for (i in 2:length(key.list))
      out <- paste(out,
                   paste(names(key.list)[i], key.sep,
                         single.quote(key.list[i])),
                   sep = pair.sep)
    
  }

  return(out)

}

strip.line.feeds <- function(x)
  ifelse(is.character(x), gsub("\n", "", x), x)

      
print.list.pairs <- function(x, ...) {

  for (key in names(x)) {

    value <- as.character(x[[key]])

    if (value == "") next

    cat(key, "=", value, "\n")
    
  }

}

expand.asis <- function(as.is, len = length(as.is)) {
  # This is taken (almost) verbatim from read.table (v 1.1.0)
  if (is.logical(as.is)) {
    as.is <- rep(as.is, length = len)
  }
  else if (is.numeric(as.is)) {
    if (any(as.is < 1 | as.is > len)) 
      stop("invalid numeric as.is expression")
    i <- rep(FALSE, len)
    i[as.is] <- TRUE
    as.is <- i
  }
  else if (length(as.is) != len) 
    stop(paste("as.is has the wrong length", length(as.is), 
               "!= ", len))
  # End borrowed code
  return(as.is)
}
