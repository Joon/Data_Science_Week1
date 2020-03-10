# Create two character vectors for testing
vec1 <- c("Hockey", "Football", "Baseball", "Curling", "Rugby", "Hurling", 
          "Basketball", "Tennis", "Cricket", "Lacrosse")
vec2 <- c(vec1, "Hockey", "Lacrosse", "Hockey", "Water Polo", "Hockey", "Lacrosse")

# Extract some items from vec2 using a vector of indices
vec3 <- vec1[c(1, 3, 6)]
# Extract some items from vec2 using the individual items
vec3_alt <- c(vec1[1], vec1[3], vec1[6])

# Create a factor of the extracted text and explore type
vec3_factor = as.factor(vec3)
class(vec3_factor)
class(vec3)
vec3_factor