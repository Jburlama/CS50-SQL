# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning

Because the observations are random, the partition will be evenly spread out throughout the boats.
However, the lookup time can be very slow because, in the worst-case scenario, I'll have to look at all the partitions.

## Partitioning by Hour

If we partition by hour, because some hours are more active than others, some boats will receive more observations than others.
However, the lookup can be done faster because we know that some of the hours are located on a specific boat.

## Partitioning by Hash Value

With the hashing values we can distribute the tables evenly because a single observation is no more likely to be assigned one hash value than another.
The lookup will also be fast because we know to what boat each hash is assigned
