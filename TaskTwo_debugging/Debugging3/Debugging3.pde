//this is debug code 
/* 
boolean jobsDone = false;

void setup()
{
    if (isJobDone())
    {
        println("Job's done!");   
    }
}

void isJobDone()
{
    return jobsDone;    
}
*/ 

//this is the solution
boolean jobsDone = false;

void setup() {
    if (isJobDone(jobsDone)) {
      println("Job's not done");   
    } else {
      println("Job's done");   
    }
}

boolean isJobDone(boolean jobsDone) {
    return jobsDone;    
}
