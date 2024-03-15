BEGIN {
    sent=0
    received=0
    }
    {
    if($1=="s" && $3=="0" && $4=="AGT")
    {
    sent++;
    }
    if($1=="r" && $3=="7" && $4=="AGT")
    {
    received++;
    }
    }
    END{
    printf("\n total number of data packets received at node 3: %d\n", sent);
    printf("\n total number of data packets dropped at node 2: %d\n", received);
    }