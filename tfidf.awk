BEGIN{
    while((getline<dfFile)>0)
        df[$1] = $2
}
{
    printn $1, $2 * log(3655/df[$1])
}
