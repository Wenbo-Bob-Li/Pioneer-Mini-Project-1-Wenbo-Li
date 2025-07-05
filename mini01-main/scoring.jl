function get_score(g, node_info, node_color_indices)
    score = 0
    n=nv(g)
    for i in 1:n
        for j in i+1:n
            if node_color_indices[i]==node_color_indices[j]
                if has_edge(g,i,j)
                    score+=1
                else 
                    score-=1
                end
            elseif node_color_indices[i]!=node_color_indices[j]
                if has_edge(g,i,j)
                    score-=1
                end
            end
        end
    end
    
    return score
end

