 BEGIN {
received=0
dropped=0
}
{
if($1=="r" && $3=="3" && $5=="tcp" && $6=="1540")
{
received++;
}
if($1=="d" && $3=="2" && $5=="tcp" && $6=="1540")
{
dropped++;
}
}
END{
printf("\n total number of data packets received at node 3: %d\n", received);
printf("\n total number of data packets dropped at node 2: %d\n", dropped);
}