# ADVENT OF CODE DAY 2

day <- 2
# paste0("day", day, "_input.txt")

library(data.table)

dt <- fread(paste0("day", 
                   day, 
                   "_input.txt"),
            col.names = c("dir", "val"))

# PART 1

x <- sum(dt[dir=="forward", 
            val])
depth <- sum(dt[dir=="down", 
                val])-sum(dt[dir=="up", 
                             val])

cat(paste("The horizontal position is", x, 
          "the depth is", depth, 
          "and the product is", x*depth, "\n"))

# PART 2

x <- 0
aim <- 0
depth <- 0
for (dt.n in 1:nrow(dt)) {
  dt.v <- dt[dt.n]
  if(dt[dt.n, dir]=="down") {
    aim <- aim + dt[dt.n, val]
  } else if (dt[dt.n, dir]=="up") {
    aim <- aim - dt[dt.n, val]
  } else {
    x <- x + dt[dt.n, val]
    depth <- depth + (aim*dt[dt.n, val])
  }
}

cat(paste("The horizontal position is", x, 
          "the depth is", depth, 
          "and the product is", x*depth, "\n"))

