BEGIN {
    sent=0
    received=0
    }
    {
    if($1=="s" && $3=="_0_" && $4=="AGT")
    {
    sent++;
    }
    if($1=="r" && $3=="_7_" && $4=="AGT")
    {
    received++;
    }
    }
    END{
    printf("\n total number of data packets received at node 3: %d\n", sent);
    printf("\n total number of data packets dropped at node 2: %d\n", received);
    }
