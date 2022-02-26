//this is the debug 
/* 
boolean jobsDone = true;

void setup()
{
    
    println(getRandomNumber(0, 10));
    if (isJobDone())
    {
        println("Job's done!");   
    }
}

boolean isJobDone()
{
    return jobsDone;    
}

int getRandomNumber(int min, int max) 
{
    return random(min, max);
}
*/ 

//This is the solution
boolean jobsDone = true;

void setup() {  
    println(getRandomNumber(0, 10));
    if(isJobDone()) {
        println("Job's done");   
    }
}

boolean isJobDone() {
    return jobsDone;    
}

float getRandomNumber(float min, float max) {
    return random(min, max);
}
