subNetwork_only <- function (nodeList, network)
{
    #library(stats)
    #library(methods)
    if (is(network, "igraph")) {
        mapping <- seq(1, (length(V(network))))
        if (is.null(V(network)$name)) {
            V(network)$name <- as.character(V(network))
        }
        names(mapping) <- V(network)$name
        nodeList = mapping[nodeList]
        if (any(is.na(nodeList))) {
            nodeList = na.omit(nodeList)
            warning("Not all nodes found in network")
        }
        subgr <- induced.subgraph(network, vids = nodeList)
    }
    else {
        subgr <- graph::subGraph(graph::nodes(network)[graph::nodes(network) %in%
            nodeList], network)
    }
    return(subgr)
}
