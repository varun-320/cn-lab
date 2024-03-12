BEGIN{

}
{
if($6=="cwnd"_)
printf("%f\t%f\n" $1,$7);
}
end{
}