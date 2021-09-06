x <- 1:1000
y <- 1:1000
plot (x, y)
east <- sample(x, size=50, replace = TRUE)
north <- sample(y, size = 50, replace = TRUE)
symbols(east, north, squares = rep(10, 50), inches = FALSE)
symbols(sample(x, 40, replace = TRUE),
        sample(y, 40, replace = TRUE),
        circles = rep(10,40),
        inches = FALSE,
        fg = "green",
        add = TRUE)
symbols(sample(x, 12, replace = TRUE),
        sample(y, 12, replace = TRUE),
        circles = rep(20,12),
        inches = FALSE,
        fg = "green4",
        bg = "beige",
        add = TRUE)
homes <- cbind.data.frame(id = 1:50, east, north)
locs <- sample(1:50, 7, replace = FALSE)
xspline(x = homes[locs, 2],
        y = homes[locs, 3],
        shape = -1,
        lty = 2)
text(x = homes[locs, ]$east,
     y = homes[locs, ]$north + 50,
     labels = homes[locs, ]$id)
title(main="A Person's path between Homes")
