# ADVENT OF CODE DAY 1

day <- 1
# paste0("day", day, "_input.txt")

compare.with.previous <- function(data) {
  return(
    sapply(2:length(data), 
           function(x) { 
             return( data[x]-data[x-1] )
           }))
}

# PART 1

dt <- as.integer(readLines(paste0("day", 
                                  day, 
                                  "_input.txt")))
cat(
  paste(
    length(
      which(
        compare.with.previous (dt) > 0)), 
    "measurements are larger than the previous one.\n"))


# PART 2

window.size <- 3
dt.sums <- sapply(1:(length(dt)-(window.size-1)), 
                  function (x) { 
                    return ( sum(dt[x:(x+(window.size-1))])) })
cat(
  paste(
    length(
      which(
        compare.with.previous (dt.sums) > 0)), 
    "measurement sums are larger than the previous sum.\n"))
