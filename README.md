# declarativeR
Auxilliary functions to make R code more declarative 

# Introduction
Code written in *R* can quickly become very complex. Unsurprisingly, various great packages have been developed to simplify R code, such as [magrittR](https://cran.r-project.org/web/packages/magrittr/vignettes/magrittr.html) and  [wrapr](https://github.com/WinVector/wrapr). These packages add new, custom operators to the R language that can make complex code a lot more readable. Take *MagrittR* for example: their `%>%` operator is extremely helpfull when writing long chains of operators. Compare the following two examples: 

<table>
<tr>
    <td>Regular R</td>
    <td>MagrittR</td>
</tr>
<tr>
    <td>
        ```splus 
        c("a", "b", "c") %>%
        casefold(upper = "T") %>% 
        strrep(2)
        ```
    </td>
    <td>
        <code>
            strrep(
                casefold(
                    c("a", "b", "c"), 
                    upper = "T"
                ), 2
            )
        </code>
    </td>
</tr>



</table> 

 
# Examples


