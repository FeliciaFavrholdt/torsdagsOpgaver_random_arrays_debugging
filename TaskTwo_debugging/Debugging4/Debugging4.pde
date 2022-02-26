//this is the debug code 
/* boolean jobsDone = true;

void setup()
{
    if (isJobDone)
    {
        println("Job's done!");   
    }
}

boolean isJobDone()
{
    return jobsDone;    
}
*/ 

//this is the solution 
boolean jobsDone = true;

void setup() {
    if (isJobDone(jobsDone)) {
        println("Job's done");   
    }
}

boolean isJobDone(boolean jobsDone) {
    return jobsDone;    
}
